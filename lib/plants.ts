import { createClient } from "@supabase/supabase-js";

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function getPlantingSchedule(slugs: string[], zoneGroup: string) {
  if (slugs.length === 0) return [];

  const { data: plants, error: plantsError } = await supabase
    .from("plants")
    .select("id, slug, name, emoji")
    .in("slug", slugs);
  if (plantsError) throw plantsError;
  if (!plants || plants.length === 0) return [];

  const plantIds = plants.map((p) => p.id);

  const { data: schedules, error: schedError } = await supabase
    .from("plant_planting_schedule")
    .select("plant_id, indoor_start_months, outdoor_plant_months, harvest_months, notes")
    .in("plant_id", plantIds)
    .eq("zone_group_id", zoneGroup);
  if (schedError) throw schedError;

  const schedMap = Object.fromEntries(
    (schedules ?? []).map((s) => [s.plant_id, s])
  );

  return plants.map((p) => ({
    slug: p.slug,
    name: p.name,
    emoji: p.emoji,
    ...(schedMap[p.id] ?? {
      indoor_start_months: null,
      outdoor_plant_months: null,
      harvest_months: null,
      notes: null,
    }),
  }));
}

export async function getAllPlants() {
  const { data, error } = await supabase
    .from("plants")
    .select("slug, name, emoji, category")
    .order("name");
  if (error) throw error;
  return data ?? [];
}

export async function getPlantsBySlug(slugs: string[], spaceType?: string) {
  if (slugs.length === 0) return [];

  const { data: plants, error: plantsError } = await supabase
    .from("plants")
    .select("*")
    .in("slug", slugs);
  if (plantsError) throw plantsError;
  if (!plants || plants.length === 0) return [];

  const plantIds = plants.map((p) => p.id);

  const tipsQuery = supabase
    .from("plant_tips")
    .select("plant_id, tip, category, sort_order")
    .in("plant_id", plantIds)
    .order("sort_order");

  const companionsQuery = supabase
    .from("companion_planting")
    .select("plant_id, companion_plant_id, relationship, note")
    .in("plant_id", plantIds);

  const spaceQuery = spaceType
    ? supabase
        .from("plant_space_recommendations")
        .select("plant_id, recommended, notes, recommended_container_size")
        .in("plant_id", plantIds)
        .eq("space_type_id", spaceType)
    : null;

  const [tipsResult, companionsResult, spaceResult] = await Promise.all([
    tipsQuery,
    companionsQuery,
    spaceQuery ?? Promise.resolve({ data: [], error: null }),
  ]);

  if (tipsResult.error) throw tipsResult.error;
  if (companionsResult.error) throw companionsResult.error;

  const tips = tipsResult.data ?? [];
  const companions = companionsResult.data ?? [];
  const spaceRecs = spaceResult.data ?? [];

  // Fetch companion plant names
  const companionIds = [...new Set(companions.map((c) => c.companion_plant_id))];
  const { data: companionPlants, error: cpError } = companionIds.length > 0
    ? await supabase.from("plants").select("id, slug, name").in("id", companionIds)
    : { data: [], error: null };
  if (cpError) throw cpError;

  const companionMap = Object.fromEntries((companionPlants ?? []).map((p) => [p.id, p]));
  const spaceRecMap = Object.fromEntries(spaceRecs.map((r) => [r.plant_id, r]));

  return plants.map((plant) => ({
    ...plant,
    plant_tips: tips.filter((t) => t.plant_id === plant.id),
    companion_planting: companions
      .filter((c) => c.plant_id === plant.id)
      .map((c) => ({
        relationship: c.relationship,
        note: c.note,
        companion: companionMap[c.companion_plant_id] ?? null,
      })),
    space_recommendation: spaceRecMap[plant.id] ?? null,
  }));
}
