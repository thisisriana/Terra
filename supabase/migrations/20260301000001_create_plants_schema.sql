-- ============================================================
-- TERRA — Plant Database Schema
-- ============================================================

-- Space types reference table
CREATE TABLE space_types (
  id          TEXT PRIMARY KEY,
  name        TEXT NOT NULL,
  description TEXT,
  sq_ft_min   INTEGER,
  sq_ft_max   INTEGER
);

INSERT INTO space_types (id, name, description, sq_ft_min, sq_ft_max) VALUES
  ('balcony',    'Balcony / Patio',    'Container gardening, limited square footage',    NULL, 200),
  ('raised_bed', 'Raised Beds',        'Dedicated raised beds, more soil control',       50,   400),
  ('small_yard', 'Small Yard',         'Up to 1,000 sq ft of growing space',            200,  1000),
  ('large_yard', 'Large Yard / Plot',  '1/4 acre or more of growing space',             1000, NULL);

-- ============================================================
-- Core plants table
-- ============================================================
CREATE TABLE plants (
  id   UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  slug TEXT UNIQUE NOT NULL,
  name TEXT NOT NULL,
  emoji TEXT,

  -- Classification
  category  TEXT NOT NULL CHECK (category IN ('herb','vegetable','fruit','flower','tree','shrub')),
  lifecycle TEXT NOT NULL CHECK (lifecycle IN ('annual','perennial','biennial')),

  -- Display
  tagline     TEXT,
  description TEXT,
  difficulty  TEXT NOT NULL CHECK (difficulty IN ('easy','moderate','hard')),

  -- Sun requirements
  sun_requirement      TEXT NOT NULL CHECK (sun_requirement IN ('full','partial','shade')),
  sun_hours_min        NUMERIC,
  sun_hours_max        NUMERIC,
  light_description    TEXT,

  -- Water requirements
  water_frequency      TEXT CHECK (water_frequency IN ('daily','every_2_3_days','weekly','biweekly','monthly')),
  water_description    TEXT,

  -- Soil requirements
  ph_min               NUMERIC,
  ph_max               NUMERIC,
  soil_description     TEXT,
  drainage             TEXT CHECK (drainage IN ('excellent','good','moderate','poor')),

  -- Temperature
  temp_germination_min_f  INTEGER,
  temp_germination_max_f  INTEGER,
  temp_growing_min_f      INTEGER,
  temp_growing_max_f      INTEGER,
  frost_tolerant          BOOLEAN DEFAULT false,
  heat_tolerant           BOOLEAN DEFAULT false,

  -- Growing timeline
  days_to_germinate_min  INTEGER,
  days_to_germinate_max  INTEGER,
  days_to_harvest_min    INTEGER,
  days_to_harvest_max    INTEGER,

  -- Container growing
  container_friendly          BOOLEAN DEFAULT true,
  container_size_min_gallons  NUMERIC,
  container_depth_min_inches  NUMERIC,

  -- USDA hardiness zones
  usda_zone_min  INTEGER,
  usda_zone_max  INTEGER,

  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- Plant tips
-- ============================================================
CREATE TABLE plant_tips (
  id        UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  plant_id  UUID NOT NULL REFERENCES plants(id) ON DELETE CASCADE,
  tip       TEXT NOT NULL,
  category  TEXT CHECK (category IN ('general','watering','harvesting','pruning','pest','seasonal','container','soil')),
  sort_order INTEGER DEFAULT 0
);

-- ============================================================
-- Companion planting relationships
-- ============================================================
CREATE TABLE companion_planting (
  id                 UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  plant_id           UUID NOT NULL REFERENCES plants(id) ON DELETE CASCADE,
  companion_plant_id UUID NOT NULL REFERENCES plants(id) ON DELETE CASCADE,
  relationship       TEXT NOT NULL CHECK (relationship IN ('beneficial','harmful')),
  note               TEXT,
  UNIQUE (plant_id, companion_plant_id)
);

-- ============================================================
-- Plant ↔ space type recommendations
-- ============================================================
CREATE TABLE plant_space_recommendations (
  plant_id                  UUID NOT NULL REFERENCES plants(id) ON DELETE CASCADE,
  space_type_id             TEXT NOT NULL REFERENCES space_types(id),
  recommended               BOOLEAN DEFAULT true,
  notes                     TEXT,
  recommended_container_size TEXT,
  PRIMARY KEY (plant_id, space_type_id)
);

-- ============================================================
-- Soil profiles (reusable recipes)
-- ============================================================
CREATE TABLE soil_profiles (
  id               UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name             TEXT NOT NULL,
  description      TEXT,
  potting_mix_pct  INTEGER,
  perlite_pct      INTEGER,
  compost_pct      INTEGER,
  other_amendments TEXT,
  ph_min           NUMERIC,
  ph_max           NUMERIC,
  drainage         TEXT CHECK (drainage IN ('excellent','good','moderate','poor')),
  best_for         TEXT
);

-- ============================================================
-- Indexes
-- ============================================================
CREATE INDEX idx_plants_slug       ON plants(slug);
CREATE INDEX idx_plants_category   ON plants(category);
CREATE INDEX idx_plants_difficulty ON plants(difficulty);
CREATE INDEX idx_plant_tips_plant  ON plant_tips(plant_id);
CREATE INDEX idx_companions_plant  ON companion_planting(plant_id);
CREATE INDEX idx_companions_companion ON companion_planting(companion_plant_id);

-- ============================================================
-- Auto-update updated_at
-- ============================================================
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER plants_updated_at
  BEFORE UPDATE ON plants
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();
