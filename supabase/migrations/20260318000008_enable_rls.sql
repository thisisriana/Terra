-- ============================================================
-- Enable Row Level Security on all tables
-- All plant data is public read-only.
-- Write operations are blocked for anon/authenticated roles;
-- only the service role (server-side) can modify data.
-- ============================================================

ALTER TABLE space_types               ENABLE ROW LEVEL SECURITY;
ALTER TABLE plants                    ENABLE ROW LEVEL SECURITY;
ALTER TABLE plant_tips                ENABLE ROW LEVEL SECURITY;
ALTER TABLE companion_planting        ENABLE ROW LEVEL SECURITY;
ALTER TABLE plant_space_recommendations ENABLE ROW LEVEL SECURITY;
ALTER TABLE soil_profiles             ENABLE ROW LEVEL SECURITY;
ALTER TABLE zone_groups               ENABLE ROW LEVEL SECURITY;
ALTER TABLE plant_planting_schedule   ENABLE ROW LEVEL SECURITY;

-- Public read access for all tables (anon and authenticated users)
CREATE POLICY "public_read_space_types"
  ON space_types FOR SELECT USING (true);

CREATE POLICY "public_read_plants"
  ON plants FOR SELECT USING (true);

CREATE POLICY "public_read_plant_tips"
  ON plant_tips FOR SELECT USING (true);

CREATE POLICY "public_read_companion_planting"
  ON companion_planting FOR SELECT USING (true);

CREATE POLICY "public_read_plant_space_recommendations"
  ON plant_space_recommendations FOR SELECT USING (true);

CREATE POLICY "public_read_soil_profiles"
  ON soil_profiles FOR SELECT USING (true);

CREATE POLICY "public_read_zone_groups"
  ON zone_groups FOR SELECT USING (true);

CREATE POLICY "public_read_plant_planting_schedule"
  ON plant_planting_schedule FOR SELECT USING (true);
