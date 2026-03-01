-- ============================================================
-- TERRA — Initial Plant Seed Data
-- ============================================================

-- Soil profiles
INSERT INTO soil_profiles (name, description, potting_mix_pct, perlite_pct, compost_pct, ph_min, ph_max, drainage, best_for) VALUES
  ('Mediterranean Herb Mix',  'Fast-draining mix for drought-tolerant Mediterranean herbs',    50, 40, 10, 6.0, 8.0, 'excellent', 'Rosemary, Thyme, Lavender, Sage'),
  ('Rich Herb Mix',           'Moisture-retentive, fertile mix for leafy herbs',               60, 25, 15, 6.0, 7.0, 'good',      'Basil, Mint, Parsley, Chives'),
  ('Vegetable Garden Mix',    'Nutrient-rich mix for heavy-feeding vegetables',                60, 20, 20, 6.0, 6.8, 'good',      'Peppers, Tomatoes, Zucchini, Cucumber'),
  ('Universal Container Mix', 'Balanced all-purpose container mix for mixed gardens',          60, 30, 10, 6.0, 7.0, 'good',      'General use, mixed containers'),
  ('Deep Taproot Mix',        'Loose, well-draining mix for plants with deep roots',           55, 30, 15, 5.8, 6.5, 'excellent', 'Dill, Carrots, Parsley'),
  ('Acid Lover Mix',          'Slightly acidic mix for berries and acid-preferring plants',    65, 20, 15, 5.5, 6.5, 'good',      'Strawberries, Blueberries, Kale');

-- ============================================================
-- PLANTS
-- ============================================================

-- BASIL
INSERT INTO plants (
  slug, name, emoji, category, lifecycle, tagline, description, difficulty,
  sun_requirement, sun_hours_min, sun_hours_max, light_description,
  water_frequency, water_description,
  ph_min, ph_max, soil_description, drainage,
  temp_germination_min_f, temp_germination_max_f, temp_growing_min_f, temp_growing_max_f,
  frost_tolerant, heat_tolerant,
  days_to_germinate_min, days_to_germinate_max, days_to_harvest_min, days_to_harvest_max,
  container_friendly, container_size_min_gallons, container_depth_min_inches,
  usda_zone_min, usda_zone_max
) VALUES (
  'basil', 'Basil', '🌿', 'herb', 'annual',
  'The king of the herb garden',
  'Basil is one of the most rewarding herbs to grow — incredibly fragrant, fast-growing, and essential in the kitchen. It thrives in warm conditions and rewards regular harvesting with bushy, abundant growth.',
  'easy',
  'full', 6, 8, '6–8 hours of direct sun. South or west-facing balcony ideal. Will stretch and bolt in low light.',
  'every_2_3_days', 'Consistently moist — water at the base when the top inch of soil is dry. About every 1–2 days in summer heat. Never let it dry out completely.',
  6.0, 7.0, 'Well-draining, rich loam. Slightly moist but never waterlogged. Mix in compost for best results.', 'good',
  65, 85, 60, 95,
  false, true,
  5, 10, 25, 35,
  true, 1.0, 8.0,
  9, 11
);

-- THYME
INSERT INTO plants (
  slug, name, emoji, category, lifecycle, tagline, description, difficulty,
  sun_requirement, sun_hours_min, sun_hours_max, light_description,
  water_frequency, water_description,
  ph_min, ph_max, soil_description, drainage,
  temp_germination_min_f, temp_germination_max_f, temp_growing_min_f, temp_growing_max_f,
  frost_tolerant, heat_tolerant,
  days_to_germinate_min, days_to_germinate_max, days_to_harvest_min, days_to_harvest_max,
  container_friendly, container_size_min_gallons, container_depth_min_inches,
  usda_zone_min, usda_zone_max
) VALUES (
  'thyme', 'Thyme', '🌱', 'herb', 'perennial',
  'Mediterranean drought-tough beauty',
  'Thyme is one of the most low-maintenance herbs you can grow. A true Mediterranean native, it thrives on neglect — poor soil, full sun, and minimal water. Hardy, fragrant, and versatile in the kitchen.',
  'easy',
  'full', 6, 8, 'Full sun, 6+ hours. One of the most sun-tolerant herbs — thrives on hot, south-facing spots.',
  'weekly', 'Drought tolerant. Water deeply but infrequently — every 7–10 days. Let soil dry completely between waterings.',
  6.0, 8.0, 'Sandy, gritty, low-fertility soil. Excellent drainage is critical — it despises wet roots. Add grit or perlite.', 'excellent',
  60, 70, 45, 90,
  true, true,
  14, 28, 60, 90,
  true, 0.5, 6.0,
  4, 9
);

-- SAGE
INSERT INTO plants (
  slug, name, emoji, category, lifecycle, tagline, description, difficulty,
  sun_requirement, sun_hours_min, sun_hours_max, light_description,
  water_frequency, water_description,
  ph_min, ph_max, soil_description, drainage,
  temp_germination_min_f, temp_germination_max_f, temp_growing_min_f, temp_growing_max_f,
  frost_tolerant, heat_tolerant,
  days_to_germinate_min, days_to_germinate_max, days_to_harvest_min, days_to_harvest_max,
  container_friendly, container_size_min_gallons, container_depth_min_inches,
  usda_zone_min, usda_zone_max
) VALUES (
  'sage', 'Sage', '🌾', 'herb', 'perennial',
  'Silvery-leaved Mediterranean native',
  'Garden sage is a beautiful, aromatic perennial with soft, silvery-grey leaves and a warm, earthy flavor. Incredibly hardy and ornamental — it doubles as a decorative plant while being deeply useful in the kitchen.',
  'easy',
  'full', 6, 8, 'Full sun, 6–8 hours minimum. Tolerates light afternoon shade in very hot climates.',
  'weekly', 'Low water needs once established. Water every 7–10 days, allowing soil to dry between waterings.',
  6.0, 7.0, 'Well-draining, sandy or loamy soil. Low to moderate fertility — too rich causes floppy, flavorless growth.', 'good',
  60, 70, 45, 90,
  true, false,
  10, 21, 75, 90,
  true, 1.0, 8.0,
  4, 8
);

-- DILL
INSERT INTO plants (
  slug, name, emoji, category, lifecycle, tagline, description, difficulty,
  sun_requirement, sun_hours_min, sun_hours_max, light_description,
  water_frequency, water_description,
  ph_min, ph_max, soil_description, drainage,
  temp_germination_min_f, temp_germination_max_f, temp_growing_min_f, temp_growing_max_f,
  frost_tolerant, heat_tolerant,
  days_to_germinate_min, days_to_germinate_max, days_to_harvest_min, days_to_harvest_max,
  container_friendly, container_size_min_gallons, container_depth_min_inches,
  usda_zone_min, usda_zone_max
) VALUES (
  'dill', 'Dill', '🌻', 'herb', 'annual',
  'Feathery, fast-growing annual',
  'Dill is a tall, feathery annual that grows quickly and rewards succession planting. Both the fronds and seeds are useful in cooking. It needs deep containers because of its taproot, but is otherwise simple to grow.',
  'moderate',
  'full', 6, 8, 'Full sun, 6–8 hours. Without enough light it goes leggy and falls over.',
  'every_2_3_days', 'Moderate — keep evenly moist but not wet. Water every 2–3 days in containers. Avoid waterlogging.',
  5.8, 6.5, 'Rich, loose, well-draining soil. Needs room to send a deep taproot — use pots at least 12 inches deep.', 'good',
  60, 70, 45, 85,
  false, false,
  7, 14, 40, 60,
  true, 1.0, 12.0,
  2, 9
);

-- MINT
INSERT INTO plants (
  slug, name, emoji, category, lifecycle, tagline, description, difficulty,
  sun_requirement, sun_hours_min, sun_hours_max, light_description,
  water_frequency, water_description,
  ph_min, ph_max, soil_description, drainage,
  temp_germination_min_f, temp_germination_max_f, temp_growing_min_f, temp_growing_max_f,
  frost_tolerant, heat_tolerant,
  days_to_germinate_min, days_to_germinate_max, days_to_harvest_min, days_to_harvest_max,
  container_friendly, container_size_min_gallons, container_depth_min_inches,
  usda_zone_min, usda_zone_max
) VALUES (
  'mint', 'Mint', '🍃', 'herb', 'perennial',
  'Vigorous, aromatic — pot it alone, always',
  'Mint is one of the easiest herbs to grow but one of the most dangerous to plant near others — it spreads aggressively via underground runners. Always container-grow mint to keep it contained. The payoff is enormous fragrance and endless harvest.',
  'easy',
  'partial', 3, 6, 'Partial sun — thrives with 3–6 hours. One of few herbs that tolerates shade well.',
  'every_2_3_days', 'Keep consistently moist — water every 1–2 days. More forgiving of overwatering than most herbs.',
  6.0, 7.0, 'Rich, moist, well-draining soil. Loves consistent moisture more than most herbs. Add compost generously.', 'good',
  55, 70, 45, 80,
  true, false,
  10, 16, 30, 45,
  true, 1.0, 8.0,
  3, 11
);

-- LAVENDER
INSERT INTO plants (
  slug, name, emoji, category, lifecycle, tagline, description, difficulty,
  sun_requirement, sun_hours_min, sun_hours_max, light_description,
  water_frequency, water_description,
  ph_min, ph_max, soil_description, drainage,
  temp_germination_min_f, temp_germination_max_f, temp_growing_min_f, temp_growing_max_f,
  frost_tolerant, heat_tolerant,
  days_to_germinate_min, days_to_germinate_max, days_to_harvest_min, days_to_harvest_max,
  container_friendly, container_size_min_gallons, container_depth_min_inches,
  usda_zone_min, usda_zone_max
) VALUES (
  'lavender', 'Lavender', '💜', 'herb', 'perennial',
  'Drought-hardy, pollinator magnet',
  'Lavender is a stunning, fragrant perennial that doubles as an ornamental and culinary herb. It attracts bees and butterflies, repels deer, and perfumes the garden all summer. The number one killer is overwatering — treat it mean and it thrives.',
  'moderate',
  'full', 8, 10, 'Full sun, 8+ hours. The more sun, the more fragrant and floriferous. Shade causes sparse, leggy growth.',
  'biweekly', 'Very drought tolerant once established. Water deeply every 10–14 days. Root rot from overwatering is the #1 killer.',
  6.5, 7.5, 'Sandy, alkaline, extremely well-draining soil. Add lime to raise pH if needed. Never let roots sit wet.', 'excellent',
  65, 70, 40, 95,
  true, true,
  14, 28, 90, 120,
  true, 2.0, 10.0,
  5, 8
);

-- ROSEMARY
INSERT INTO plants (
  slug, name, emoji, category, lifecycle, tagline, description, difficulty,
  sun_requirement, sun_hours_min, sun_hours_max, light_description,
  water_frequency, water_description,
  ph_min, ph_max, soil_description, drainage,
  temp_germination_min_f, temp_germination_max_f, temp_growing_min_f, temp_growing_max_f,
  frost_tolerant, heat_tolerant,
  days_to_germinate_min, days_to_germinate_max, days_to_harvest_min, days_to_harvest_max,
  container_friendly, container_size_min_gallons, container_depth_min_inches,
  usda_zone_min, usda_zone_max
) VALUES (
  'rosemary', 'Rosemary', '🌿', 'herb', 'perennial',
  'Woody Mediterranean perennial',
  'Rosemary is a bold, architectural herb that grows into a substantial woody shrub over time. Highly drought tolerant, intensely fragrant, and indispensable in the kitchen. It needs excellent drainage above all else.',
  'easy',
  'full', 6, 8, 'Full sun, 6–8 hours minimum. Leggy, sparse growth indicates insufficient light.',
  'biweekly', 'Allow soil to dry fully between waterings. Every 10–14 days in cool months, weekly in summer heat.',
  6.0, 8.0, 'Sandy, gritty, alkaline soil. Drainage is everything — mix in 30–40% perlite. Hates consistently moist soil.', 'excellent',
  65, 75, 45, 95,
  false, true,
  14, 28, 80, 100,
  true, 2.0, 10.0,
  7, 10
);

-- PEPPERS
INSERT INTO plants (
  slug, name, emoji, category, lifecycle, tagline, description, difficulty,
  sun_requirement, sun_hours_min, sun_hours_max, light_description,
  water_frequency, water_description,
  ph_min, ph_max, soil_description, drainage,
  temp_germination_min_f, temp_germination_max_f, temp_growing_min_f, temp_growing_max_f,
  frost_tolerant, heat_tolerant,
  days_to_germinate_min, days_to_germinate_max, days_to_harvest_min, days_to_harvest_max,
  container_friendly, container_size_min_gallons, container_depth_min_inches,
  usda_zone_min, usda_zone_max
) VALUES (
  'peppers', 'Peppers', '🌶️', 'vegetable', 'annual',
  'Heat-loving, sun-hungry, rewarding',
  'Peppers are one of the most satisfying vegetables to grow in containers — compact plants that produce abundantly with enough sun and warmth. From sweet bell peppers to fiery habaneros, they love heat and reward patient gardeners.',
  'moderate',
  'full', 8, 10, 'Full sun, 8+ hours. Critical for fruit set. Insufficient sun = lots of foliage, very few peppers.',
  'every_2_3_days', 'Consistent moisture — water every 2–3 days. Avoid drought stress during flowering or peppers will drop.',
  6.0, 6.8, 'Rich, fertile, well-draining loam. Mix in compost heavily. Needs more nutrients than herbs.', 'good',
  70, 85, 60, 95,
  false, true,
  7, 14, 60, 90,
  true, 5.0, 12.0,
  9, 11
);

-- TOMATOES
INSERT INTO plants (
  slug, name, emoji, category, lifecycle, tagline, description, difficulty,
  sun_requirement, sun_hours_min, sun_hours_max, light_description,
  water_frequency, water_description,
  ph_min, ph_max, soil_description, drainage,
  temp_germination_min_f, temp_germination_max_f, temp_growing_min_f, temp_growing_max_f,
  frost_tolerant, heat_tolerant,
  days_to_germinate_min, days_to_germinate_max, days_to_harvest_min, days_to_harvest_max,
  container_friendly, container_size_min_gallons, container_depth_min_inches,
  usda_zone_min, usda_zone_max
) VALUES (
  'tomatoes', 'Tomatoes', '🍅', 'vegetable', 'annual',
  'The ultimate home garden vegetable',
  'Tomatoes are the most popular home garden plant for good reason — nothing beats the taste of a homegrown tomato. They require consistent care but the harvest is unparalleled. Dwarf and patio varieties excel in containers.',
  'moderate',
  'full', 8, 10, 'Full sun, 8+ hours every day. Non-negotiable for fruit production. South-facing placement is ideal.',
  'daily', 'Deep, consistent watering is critical — daily in hot weather. Inconsistent watering causes blossom end rot and cracking.',
  6.0, 6.8, 'Deep, rich, well-draining soil with heavy compost. Needs calcium — add crushed eggshells or lime.', 'good',
  65, 85, 60, 95,
  false, false,
  5, 10, 60, 85,
  true, 5.0, 14.0,
  3, 10
);

-- LETTUCE
INSERT INTO plants (
  slug, name, emoji, category, lifecycle, tagline, description, difficulty,
  sun_requirement, sun_hours_min, sun_hours_max, light_description,
  water_frequency, water_description,
  ph_min, ph_max, soil_description, drainage,
  temp_germination_min_f, temp_germination_max_f, temp_growing_min_f, temp_growing_max_f,
  frost_tolerant, heat_tolerant,
  days_to_germinate_min, days_to_germinate_max, days_to_harvest_min, days_to_harvest_max,
  container_friendly, container_size_min_gallons, container_depth_min_inches,
  usda_zone_min, usda_zone_max
) VALUES (
  'lettuce', 'Lettuce', '🥬', 'vegetable', 'annual',
  'Fast, cool-season, cut-and-come-again',
  'Lettuce is one of the best gateway vegetables — it grows fast, tolerates partial shade, and can be harvested leaf by leaf for weeks. Perfect for balcony growers who want results quickly. Bolts in summer heat.',
  'easy',
  'partial', 3, 6, 'Partial sun is ideal — 4–6 hours. Tolerates shade better than most vegetables. Afternoon shade in summer extends the season.',
  'every_2_3_days', 'Keep consistently moist — shallow roots dry out fast. Water every 1–2 days in containers.',
  6.0, 7.0, 'Light, fertile, moisture-retentive soil. Shallow roots do not need deep containers — 6 inches is enough.', 'good',
  40, 65, 45, 75,
  true, false,
  2, 8, 28, 45,
  true, 0.5, 6.0,
  2, 11
);

-- CHIVES
INSERT INTO plants (
  slug, name, emoji, category, lifecycle, tagline, description, difficulty,
  sun_requirement, sun_hours_min, sun_hours_max, light_description,
  water_frequency, water_description,
  ph_min, ph_max, soil_description, drainage,
  temp_germination_min_f, temp_germination_max_f, temp_growing_min_f, temp_growing_max_f,
  frost_tolerant, heat_tolerant,
  days_to_germinate_min, days_to_germinate_max, days_to_harvest_min, days_to_harvest_max,
  container_friendly, container_size_min_gallons, container_depth_min_inches,
  usda_zone_min, usda_zone_max
) VALUES (
  'chives', 'Chives', '🌿', 'herb', 'perennial',
  'Reliable, ornamental, and endlessly useful',
  'Chives are a gardener''s best friend — truly hands-off, they come back every year, produce edible flowers, and grow happily in almost any conditions. One of the best starter herbs for beginners.',
  'easy',
  'full', 4, 8, 'Adaptable — thrives in full sun but tolerates partial shade. Great for east or west-facing spots.',
  'every_2_3_days', 'Moderately moist — water every 2–3 days. Fairly drought tolerant once established.',
  6.0, 7.0, 'Adaptable to most well-draining soils. Rich soil produces more abundant growth. Tolerates average garden soil.', 'good',
  60, 70, 40, 85,
  true, false,
  7, 14, 30, 60,
  true, 0.5, 6.0,
  3, 9
);

-- PARSLEY
INSERT INTO plants (
  slug, name, emoji, category, lifecycle, tagline, description, difficulty,
  sun_requirement, sun_hours_min, sun_hours_max, light_description,
  water_frequency, water_description,
  ph_min, ph_max, soil_description, drainage,
  temp_germination_min_f, temp_germination_max_f, temp_growing_min_f, temp_growing_max_f,
  frost_tolerant, heat_tolerant,
  days_to_germinate_min, days_to_germinate_max, days_to_harvest_min, days_to_harvest_max,
  container_friendly, container_size_min_gallons, container_depth_min_inches,
  usda_zone_min, usda_zone_max
) VALUES (
  'parsley', 'Parsley', '🌿', 'herb', 'biennial',
  'Slow to start, generous once growing',
  'Parsley is notoriously slow to germinate — soak seeds overnight before planting to speed things up. Once established it''s a generous producer that tolerates light frost and partial shade.',
  'moderate',
  'partial', 4, 6, 'Partial to full sun — 4–6 hours minimum. Tolerates afternoon shade better than most herbs.',
  'every_2_3_days', 'Keep evenly moist — water every 2–3 days. Don''t let it dry out completely.',
  5.5, 6.7, 'Rich, deep, well-draining soil. Deep taproot needs containers at least 10 inches deep. Add compost generously.', 'good',
  50, 70, 45, 80,
  true, false,
  14, 28, 70, 90,
  true, 1.0, 10.0,
  2, 9
);

-- KALE
INSERT INTO plants (
  slug, name, emoji, category, lifecycle, tagline, description, difficulty,
  sun_requirement, sun_hours_min, sun_hours_max, light_description,
  water_frequency, water_description,
  ph_min, ph_max, soil_description, drainage,
  temp_germination_min_f, temp_germination_max_f, temp_growing_min_f, temp_growing_max_f,
  frost_tolerant, heat_tolerant,
  days_to_germinate_min, days_to_germinate_max, days_to_harvest_min, days_to_harvest_max,
  container_friendly, container_size_min_gallons, container_depth_min_inches,
  usda_zone_min, usda_zone_max
) VALUES (
  'kale', 'Kale', '🥦', 'vegetable', 'biennial',
  'Cold-hardy superfood, frost improves flavor',
  'Kale is one of the most nutritious and cold-hardy vegetables you can grow. Frost actually improves its flavor by converting starches to sugars. It''s a true workhorse — harvest outer leaves and the plant keeps producing for months.',
  'easy',
  'full', 6, 8, 'Full sun preferred — 6+ hours. Tolerates partial shade but growth slows significantly.',
  'every_2_3_days', 'Consistent moisture — water every 2–3 days. Drought stress causes tough, bitter leaves.',
  6.0, 7.5, 'Fertile, well-draining soil rich in nitrogen. Compost generously. Can tolerate heavier soils than most vegetables.', 'good',
  45, 75, 25, 80,
  true, false,
  5, 10, 55, 75,
  true, 2.0, 8.0,
  2, 9
);

-- STRAWBERRY
INSERT INTO plants (
  slug, name, emoji, category, lifecycle, tagline, description, difficulty,
  sun_requirement, sun_hours_min, sun_hours_max, light_description,
  water_frequency, water_description,
  ph_min, ph_max, soil_description, drainage,
  temp_germination_min_f, temp_germination_max_f, temp_growing_min_f, temp_growing_max_f,
  frost_tolerant, heat_tolerant,
  days_to_germinate_min, days_to_germinate_max, days_to_harvest_min, days_to_harvest_max,
  container_friendly, container_size_min_gallons, container_depth_min_inches,
  usda_zone_min, usda_zone_max
) VALUES (
  'strawberry', 'Strawberry', '🍓', 'fruit', 'perennial',
  'The sweetest balcony harvest possible',
  'Strawberries are perfect container plants — compact, beautiful, and incredibly rewarding. Everbearing varieties produce through spring, summer, and fall. Few things beat eating a sun-warmed strawberry you grew yourself.',
  'easy',
  'full', 6, 8, 'Full sun, 6–8 hours. More sun = sweeter fruit. A south or west-facing spot is ideal.',
  'every_2_3_days', 'Consistent moisture during fruiting is critical. Water every 1–2 days in summer. Avoid wetting the fruit.',
  5.5, 6.5, 'Slightly acidic, well-draining, fertile soil. Mix in compost and acidify with peat or pine bark if needed.', 'good',
  60, 75, 45, 85,
  true, false,
  14, 28, 60, 90,
  true, 1.0, 8.0,
  3, 10
);

-- CUCUMBER
INSERT INTO plants (
  slug, name, emoji, category, lifecycle, tagline, description, difficulty,
  sun_requirement, sun_hours_min, sun_hours_max, light_description,
  water_frequency, water_description,
  ph_min, ph_max, soil_description, drainage,
  temp_germination_min_f, temp_germination_max_f, temp_growing_min_f, temp_growing_max_f,
  frost_tolerant, heat_tolerant,
  days_to_germinate_min, days_to_germinate_max, days_to_harvest_min, days_to_harvest_max,
  container_friendly, container_size_min_gallons, container_depth_min_inches,
  usda_zone_min, usda_zone_max
) VALUES (
  'cucumber', 'Cucumber', '🥒', 'vegetable', 'annual',
  'Fast-producing, needs a trellis',
  'Cucumbers are vigorous, fast-growing vines that produce abundantly in warm weather. Bush varieties work well in large containers on a balcony. They need warmth, consistent water, and something to climb.',
  'moderate',
  'full', 8, 10, 'Full sun, 8+ hours. Shade causes bitter cucumbers and poor fruit set.',
  'daily', 'Heavy drinkers — water daily in hot weather. Inconsistent watering causes bitter, misshapen fruit.',
  6.0, 7.0, 'Rich, fertile, moisture-retentive but well-draining soil. Heavy feeders — amend with compost and fertilize regularly.', 'good',
  65, 85, 60, 95,
  false, true,
  3, 7, 50, 70,
  true, 5.0, 12.0,
  4, 11
);

-- ZUCCHINI
INSERT INTO plants (
  slug, name, emoji, category, lifecycle, tagline, description, difficulty,
  sun_requirement, sun_hours_min, sun_hours_max, light_description,
  water_frequency, water_description,
  ph_min, ph_max, soil_description, drainage,
  temp_germination_min_f, temp_germination_max_f, temp_growing_min_f, temp_growing_max_f,
  frost_tolerant, heat_tolerant,
  days_to_germinate_min, days_to_germinate_max, days_to_harvest_min, days_to_harvest_max,
  container_friendly, container_size_min_gallons, container_depth_min_inches,
  usda_zone_min, usda_zone_max
) VALUES (
  'zucchini', 'Zucchini', '🥗', 'vegetable', 'annual',
  'One plant feeds a neighborhood',
  'Zucchini is famously productive — a single plant will produce more than most families can eat. It needs space, but compact patio varieties work in very large containers. Harvest small for best flavor.',
  'easy',
  'full', 8, 10, 'Full sun, 8+ hours. Large leaves need maximum light exposure to fuel the plant''s enormous productivity.',
  'every_2_3_days', 'Consistent deep watering — every 2–3 days. Drought stress causes poor fruit set. Water at the base, not the leaves.',
  6.0, 7.5, 'Rich, deeply amended soil with heavy compost. One of the heaviest feeders in the garden. Big plant needs big pot.', 'good',
  65, 85, 60, 95,
  false, true,
  3, 7, 45, 65,
  true, 10.0, 12.0,
  3, 10
);

-- ============================================================
-- PLANT TIPS
-- ============================================================

-- Basil tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Pinch flower buds immediately as they appear to keep leaves coming', 'pruning', 1 FROM plants WHERE slug = 'basil';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Never let it fully flower — once it bolts the leaves turn bitter', 'harvesting', 2 FROM plants WHERE slug = 'basil';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Pot in terracotta — it breathes and prevents overwatering', 'container', 3 FROM plants WHERE slug = 'basil';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Keep away from cold drafts and AC vents — cold air causes black spots on leaves', 'general', 4 FROM plants WHERE slug = 'basil';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest from the top down, always above a leaf node', 'harvesting', 5 FROM plants WHERE slug = 'basil';

-- Thyme tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Add grit or perlite to potting mix — drainage is more important than nutrients', 'soil', 1 FROM plants WHERE slug = 'thyme';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Trim after flowering to keep plant bushy and productive', 'pruning', 2 FROM plants WHERE slug = 'thyme';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Woody stems can be propagated easily by layering — press a stem to soil and it will root', 'general', 3 FROM plants WHERE slug = 'thyme';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Hardy to light frost — one of the last herbs standing in fall', 'seasonal', 4 FROM plants WHERE slug = 'thyme';

-- Sage tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Prune hard in spring to prevent woodiness and encourage fresh growth', 'pruning', 1 FROM plants WHERE slug = 'sage';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Excellent in terracotta or unglazed pots for breathability', 'container', 2 FROM plants WHERE slug = 'sage';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Avoid high-nitrogen fertilizers — promotes leaf at expense of flavor', 'soil', 3 FROM plants WHERE slug = 'sage';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Flowers are edible and attract beneficial insects', 'general', 4 FROM plants WHERE slug = 'sage';

-- Dill tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Use containers at least 12 inches deep to accommodate the taproot', 'container', 1 FROM plants WHERE slug = 'dill';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Succession sow every 3 weeks for continuous harvest all season', 'general', 2 FROM plants WHERE slug = 'dill';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Bolt-resistant varieties like Fernleaf work best in pots', 'general', 3 FROM plants WHERE slug = 'dill';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest fronds before it flowers for best flavor — seeds are also edible', 'harvesting', 4 FROM plants WHERE slug = 'dill';

-- Mint tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'ALWAYS grow in its own container — it will aggressively invade and take over neighbors', 'general', 1 FROM plants WHERE slug = 'mint';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Double-pot method: place mint pot inside a larger decorative pot to contain runners', 'container', 2 FROM plants WHERE slug = 'mint';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Trim regularly to prevent flowering and keep the plant bushy', 'pruning', 3 FROM plants WHERE slug = 'mint';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Spearmint, peppermint, and chocolate mint all grow well in pots', 'general', 4 FROM plants WHERE slug = 'mint';

-- Lavender tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Use terracotta with drainage holes — glazed pots cause waterlogging and root rot', 'container', 1 FROM plants WHERE slug = 'lavender';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Prune to one third after the first bloom flush to encourage reblooming', 'pruning', 2 FROM plants WHERE slug = 'lavender';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'English lavender (Lavandula angustifolia) is most compact and best suited to pots', 'general', 3 FROM plants WHERE slug = 'lavender';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Deadhead spent flowers to encourage a second flush of blooms', 'pruning', 4 FROM plants WHERE slug = 'lavender';

-- Rosemary tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Do not crowd — good air circulation prevents powdery mildew', 'general', 1 FROM plants WHERE slug = 'rosemary';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Upright varieties grow tall; Prostrate rosemary is trailing and great for balcony rails', 'general', 2 FROM plants WHERE slug = 'rosemary';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Repot every 2–3 years as it becomes root bound', 'container', 3 FROM plants WHERE slug = 'rosemary';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Bring indoors if temperatures drop below 20°F (−6°C)', 'seasonal', 4 FROM plants WHERE slug = 'rosemary';

-- Peppers tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Use 5-gallon or larger containers — bigger pot means bigger yield', 'container', 1 FROM plants WHERE slug = 'peppers';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Stake plants as they grow — stems are brittle and snap in wind', 'general', 2 FROM plants WHERE slug = 'peppers';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Switch to low-nitrogen, high-phosphorus fertilizer once fruiting starts', 'soil', 3 FROM plants WHERE slug = 'peppers';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Heat stress above 95°F causes blossom drop — provide afternoon shade in peak summer', 'seasonal', 4 FROM plants WHERE slug = 'peppers';

-- Tomatoes tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Choose determinate (bush) varieties for containers — indeterminate types get very large', 'container', 1 FROM plants WHERE slug = 'tomatoes';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Pinch off suckers (side shoots in leaf axils) on indeterminate varieties for bigger fruit', 'pruning', 2 FROM plants WHERE slug = 'tomatoes';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Consistent watering prevents blossom end rot and cracking — the two most common problems', 'watering', 3 FROM plants WHERE slug = 'tomatoes';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Feed with high-potassium fertilizer once flowers appear', 'soil', 4 FROM plants WHERE slug = 'tomatoes';

-- Lettuce tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest outer leaves only and the plant will keep producing for weeks — cut-and-come-again', 'harvesting', 1 FROM plants WHERE slug = 'lettuce';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Sow every 2–3 weeks for a continuous supply all season', 'general', 2 FROM plants WHERE slug = 'lettuce';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Provide afternoon shade in summer to prevent bolting — heat is the enemy', 'seasonal', 3 FROM plants WHERE slug = 'lettuce';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Only 6 inches of soil depth needed — great for shallow window boxes', 'container', 4 FROM plants WHERE slug = 'lettuce';

-- Strawberry tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Everbearing varieties (like Albion or Seascape) produce all season long — best for containers', 'general', 1 FROM plants WHERE slug = 'strawberry';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Remove runners unless you want the plant to spread — they drain energy from fruit production', 'pruning', 2 FROM plants WHERE slug = 'strawberry';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Elevate pots off the ground to improve drainage and air circulation', 'container', 3 FROM plants WHERE slug = 'strawberry';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Replace plants every 3 years — productivity declines significantly after that', 'general', 4 FROM plants WHERE slug = 'strawberry';

-- Kale tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Frost makes kale sweeter — don''t pull it after the first frost', 'seasonal', 1 FROM plants WHERE slug = 'kale';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest outer leaves first, working inward — the center keeps producing new leaves', 'harvesting', 2 FROM plants WHERE slug = 'kale';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Lacinato (dinosaur) kale is more compact and better suited to containers than curly varieties', 'container', 3 FROM plants WHERE slug = 'kale';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Watch for caterpillars — cover with row cloth if cabbage moth is a problem in your area', 'pest', 4 FROM plants WHERE slug = 'kale';

-- Chives tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'The flowers are edible and beautiful — use them in salads', 'harvesting', 1 FROM plants WHERE slug = 'chives';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Cut to 2 inches above the base and they regrow within a week', 'harvesting', 2 FROM plants WHERE slug = 'chives';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Divide clumps every 2–3 years to keep them vigorous', 'pruning', 3 FROM plants WHERE slug = 'chives';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'One of the few herbs that can handle light frost — often the first herb up in spring', 'seasonal', 4 FROM plants WHERE slug = 'chives';

-- Cucumber tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Train vines up a trellis to save space and improve air circulation', 'general', 1 FROM plants WHERE slug = 'cucumber';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest frequently — leaving oversized cucumbers on the vine stops the plant from producing', 'harvesting', 2 FROM plants WHERE slug = 'cucumber';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Bush varieties like Spacemaster or Bush Pickle are ideal for large containers', 'container', 3 FROM plants WHERE slug = 'cucumber';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Bitter cucumbers are caused by heat stress or inconsistent watering — keep moisture even', 'watering', 4 FROM plants WHERE slug = 'cucumber';

-- Zucchini tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest at 6–8 inches for best flavor — bigger is not better with zucchini', 'harvesting', 1 FROM plants WHERE slug = 'zucchini';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Hand-pollinate if bees are scarce — use a small brush to transfer pollen between flowers', 'general', 2 FROM plants WHERE slug = 'zucchini';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Patio varieties like Bush Baby or Astia work in 10+ gallon containers', 'container', 3 FROM plants WHERE slug = 'zucchini';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'One plant is usually enough — they are extraordinarily productive', 'general', 4 FROM plants WHERE slug = 'zucchini';

-- Parsley tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Soak seeds overnight before planting to break dormancy and speed germination', 'general', 1 FROM plants WHERE slug = 'parsley';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest outer stems first — leave the center crown intact to keep producing', 'harvesting', 2 FROM plants WHERE slug = 'parsley';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Italian flat-leaf parsley has more flavor than curly; curly handles heat slightly better', 'general', 3 FROM plants WHERE slug = 'parsley';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Will bolt in its second year — treat as an annual and resow each spring', 'seasonal', 4 FROM plants WHERE slug = 'parsley';

-- ============================================================
-- COMPANION PLANTING
-- ============================================================

-- Helper: insert companion pair (both directions)
-- Basil + Tomatoes (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Basil repels aphids and spider mites that attack tomatoes. Improves tomato flavor.'
FROM plants p1, plants p2 WHERE p1.slug = 'basil' AND p2.slug = 'tomatoes';

INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Tomatoes provide light shade that protects basil from afternoon heat.'
FROM plants p1, plants p2 WHERE p1.slug = 'tomatoes' AND p2.slug = 'basil';

-- Basil + Peppers (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Basil repels aphids and spider mites. Both love heat and sun.'
FROM plants p1, plants p2 WHERE p1.slug = 'basil' AND p2.slug = 'peppers';

INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Peppers and basil share similar growing requirements and protect each other.'
FROM plants p1, plants p2 WHERE p1.slug = 'peppers' AND p2.slug = 'basil';

-- Basil + Sage (harmful)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'harmful', 'Sage inhibits basil growth. Keep them in separate containers.'
FROM plants p1, plants p2 WHERE p1.slug = 'basil' AND p2.slug = 'sage';

INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'harmful', 'Sage inhibits basil growth. Keep them in separate containers.'
FROM plants p1, plants p2 WHERE p1.slug = 'sage' AND p2.slug = 'basil';

-- Basil + Rosemary (harmful)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'harmful', 'Very different water needs cause one to suffer. Rosemary likes dry; basil likes moist.'
FROM plants p1, plants p2 WHERE p1.slug = 'basil' AND p2.slug = 'rosemary';

INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'harmful', 'Very different water needs. Keep separate.'
FROM plants p1, plants p2 WHERE p1.slug = 'rosemary' AND p2.slug = 'basil';

-- Thyme + Rosemary (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Both Mediterranean plants share identical water and sun needs. Excellent pot companions.'
FROM plants p1, plants p2 WHERE p1.slug = 'thyme' AND p2.slug = 'rosemary';

INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Both Mediterranean plants share identical water and sun needs. Excellent pot companions.'
FROM plants p1, plants p2 WHERE p1.slug = 'rosemary' AND p2.slug = 'thyme';

-- Thyme + Lavender (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Both love dry, well-draining conditions. Great in a Mediterranean herb pot together.'
FROM plants p1, plants p2 WHERE p1.slug = 'thyme' AND p2.slug = 'lavender';

INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Both love dry, well-draining conditions. Great in a Mediterranean herb pot together.'
FROM plants p1, plants p2 WHERE p1.slug = 'lavender' AND p2.slug = 'thyme';

-- Thyme + Sage (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Both Mediterranean herbs with similar low-water needs. Good companion pair.'
FROM plants p1, plants p2 WHERE p1.slug = 'thyme' AND p2.slug = 'sage';

INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Both Mediterranean herbs with similar low-water needs. Good companion pair.'
FROM plants p1, plants p2 WHERE p1.slug = 'sage' AND p2.slug = 'thyme';

-- Sage + Lavender (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Both need dry, well-draining conditions. Complement each other beautifully.'
FROM plants p1, plants p2 WHERE p1.slug = 'sage' AND p2.slug = 'lavender';

INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Both need dry, well-draining conditions. Complement each other beautifully.'
FROM plants p1, plants p2 WHERE p1.slug = 'lavender' AND p2.slug = 'sage';

-- Dill + Peppers (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Dill attracts beneficial insects that prey on pepper pests.'
FROM plants p1, plants p2 WHERE p1.slug = 'dill' AND p2.slug = 'peppers';

INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Dill attracts beneficial insects. Keep dill young — mature dill inhibits peppers.'
FROM plants p1, plants p2 WHERE p1.slug = 'peppers' AND p2.slug = 'dill';

-- Tomatoes + Peppers (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Same family, same needs. Can share space and care routines.'
FROM plants p1, plants p2 WHERE p1.slug = 'tomatoes' AND p2.slug = 'peppers';

INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Same family, same needs. Can share space and care routines.'
FROM plants p1, plants p2 WHERE p1.slug = 'peppers' AND p2.slug = 'tomatoes';

-- Mint + Tomatoes (beneficial — but in own pot)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Mint repels aphids and spider mites. Keep mint in its own pot nearby — never in the same container.'
FROM plants p1, plants p2 WHERE p1.slug = 'mint' AND p2.slug = 'tomatoes';

-- Chives + Tomatoes (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Chives repel aphids and improve tomato flavor. Classic companion pair.'
FROM plants p1, plants p2 WHERE p1.slug = 'chives' AND p2.slug = 'tomatoes';

INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Chives repel aphids. Plant at the base of tomatoes.'
FROM plants p1, plants p2 WHERE p1.slug = 'tomatoes' AND p2.slug = 'chives';

-- Lettuce + Chives (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Chives deter aphids that commonly attack lettuce. Great window box pairing.'
FROM plants p1, plants p2 WHERE p1.slug = 'lettuce' AND p2.slug = 'chives';

-- Kale + Dill (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Dill attracts beneficial predatory insects that control cabbage pests on kale.'
FROM plants p1, plants p2 WHERE p1.slug = 'kale' AND p2.slug = 'dill';

-- ============================================================
-- SPACE TYPE RECOMMENDATIONS
-- ============================================================

-- Balcony recommendations
INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Ideal balcony herb. Compact and fragrant.', '1–2 gallon pot' FROM plants WHERE slug = 'basil';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Perfect for balconies — thrives in small pots, loves hot reflected heat.', '0.5–1 gallon pot' FROM plants WHERE slug = 'thyme';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Excellent container herb. Use terracotta.', '1–2 gallon pot' FROM plants WHERE slug = 'sage';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Needs deep pot for taproot. Use a tall container.', '1 gallon tall pot (12" deep)' FROM plants WHERE slug = 'dill';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Must be in its own container. Balcony perfect — contained environment.', '1 gallon dedicated pot' FROM plants WHERE slug = 'mint';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Beautiful on balconies. Use terracotta, full sun only.', '2 gallon pot' FROM plants WHERE slug = 'lavender';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Great architectural plant for balcony railing pots.', '2–3 gallon pot' FROM plants WHERE slug = 'rosemary';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Works well in large containers with full sun exposure.', '5 gallon pot minimum' FROM plants WHERE slug = 'peppers';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Use dwarf or patio varieties. Needs 5 gallon minimum.', '5 gallon pot minimum' FROM plants WHERE slug = 'tomatoes';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Excellent balcony crop — shallow roots, fast harvest.', 'Window box or 0.5 gallon pot' FROM plants WHERE slug = 'lettuce';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Perfect balcony herb — compact, ornamental, edible flowers.', '0.5 gallon pot' FROM plants WHERE slug = 'chives';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Hanging strawberry pots are ideal for balconies.', '1 gallon per plant' FROM plants WHERE slug = 'strawberry';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', false, 'Needs very large container and trellis. Challenging on balconies.', '5 gallon minimum with trellis' FROM plants WHERE slug = 'cucumber';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', false, 'Very large plant — use patio varieties in 10+ gallon containers only.', '10 gallon pot minimum' FROM plants WHERE slug = 'zucchini';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Good in containers — use flat-leaf Italian variety.', '1 gallon tall pot (10" deep)' FROM plants WHERE slug = 'parsley';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Compact lacinato (dinosaur) kale works well in large containers.', '2 gallon pot' FROM plants WHERE slug = 'kale';
