import { createClient } from "@supabase/supabase-js";

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!
);

export async function getAllPlants() {
  const { data, error } = await supabase
    .from("plants")
    .select("slug, name, emoji, category")
    .order("name");
  if (error) throw error;
  return data ?? [];
}

export async function getPlantsBySlug(slugs: string[]) {
  if (slugs.length === 0) return [];

  const { data: plants, error: plantsError } = await supabase
    .from("plants")
    .select("*")
    .in("slug", slugs);
  if (plantsError) throw plantsError;
  if (!plants || plants.length === 0) return [];

  const plantIds = plants.map((p) => p.id);

  const [{ data: tips, error: tipsError }, { data: companions, error: companionsError }] =
    await Promise.all([
      supabase
        .from("plant_tips")
        .select("plant_id, tip, category, sort_order")
        .in("plant_id", plantIds)
        .order("sort_order"),
      supabase
        .from("companion_planting")
        .select("plant_id, companion_plant_id, relationship, note")
        .in("plant_id", plantIds),
    ]);

  if (tipsError) throw tipsError;
  if (companionsError) throw companionsError;

  // Fetch companion plant names
  const companionIds = [...new Set((companions ?? []).map((c) => c.companion_plant_id))];
  const { data: companionPlants, error: cpError } = companionIds.length > 0
    ? await supabase.from("plants").select("id, slug, name").in("id", companionIds)
    : { data: [], error: null };
  if (cpError) throw cpError;

  const companionMap = Object.fromEntries((companionPlants ?? []).map((p) => [p.id, p]));

  return plants.map((plant) => ({
    ...plant,
    plant_tips: (tips ?? []).filter((t) => t.plant_id === plant.id),
    companion_planting: (companions ?? [])
      .filter((c) => c.plant_id === plant.id)
      .map((c) => ({
        relationship: c.relationship,
        note: c.note,
        companion: companionMap[c.companion_plant_id] ?? null,
      })),
  }));
}
