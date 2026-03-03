-- ============================================================
-- TERRA — Planting Calendar: zone groups + schedules
-- ============================================================

-- ============================================================
-- ZONE GROUPS
-- ============================================================

CREATE TABLE zone_groups (
  id                    TEXT PRIMARY KEY,
  name                  TEXT NOT NULL,
  description           TEXT,
  zones_included        TEXT,
  last_frost_month      INTEGER,  -- approximate month of last spring frost
  first_frost_month     INTEGER   -- approximate month of first fall frost
);

INSERT INTO zone_groups (id, name, description, zones_included, last_frost_month, first_frost_month) VALUES
  ('cold',      'Cold Winters',      'Short growing seasons with hard winters. Must start most crops indoors.',                    'Zones 3–5', 5,  9),
  ('temperate', 'Temperate Climate', 'Four distinct seasons. Long enough for most crops with good timing.',                      'Zones 6–7', 4,  10),
  ('warm',      'Mild & Warm',       'Long growing seasons with mild winters. Two planting windows for many crops.',              'Zones 8–9', 2,  11),
  ('hot',       'Hot & Frost-Free',  'Year-round growing possible. Cool-season crops grown in fall and winter instead of spring.','Zones 10–11', NULL, NULL);

-- ============================================================
-- PLANT PLANTING SCHEDULE TABLE
-- ============================================================
-- Months stored as integer arrays: 1=Jan through 12=Dec
-- indoor_start_months:  when to start seeds indoors
-- outdoor_plant_months: when to transplant or direct-sow outdoors
-- harvest_months:       when harvest is possible

CREATE TABLE plant_planting_schedule (
  id                   UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  plant_id             UUID NOT NULL REFERENCES plants(id) ON DELETE CASCADE,
  zone_group_id        TEXT NOT NULL REFERENCES zone_groups(id),
  indoor_start_months  INTEGER[],
  outdoor_plant_months INTEGER[],
  harvest_months       INTEGER[],
  notes                TEXT,
  UNIQUE (plant_id, zone_group_id)
);

CREATE INDEX idx_schedule_plant ON plant_planting_schedule(plant_id);
CREATE INDEX idx_schedule_zone  ON plant_planting_schedule(zone_group_id);

-- ============================================================
-- BASIL
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[6], ARRAY[7,8,9],
'Start indoors 6–8 weeks before your last frost (typically May). Do not transplant until nights are reliably above 50°F. Season ends at first frost in September.'
FROM plants WHERE slug = 'basil';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[3,4], ARRAY[5], ARRAY[6,7,8,9],
'Start indoors in March, transplant after last frost (mid-April in zone 7, late April in zone 6). Succession-sow every 3 weeks for continuous harvest through September.'
FROM plants WHERE slug = 'basil';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', ARRAY[1,2], ARRAY[3,4], ARRAY[5,6,7,8,9,10],
'Start early indoors or direct-sow from March. Long harvest window — protect from frost in January. Avoid planting in the hottest weeks; basil slows in extreme heat.'
FROM plants WHERE slug = 'basil';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[2,3,9,10], ARRAY[4,5,6,11,12],
'Grow as two short crops: spring (sow Feb–Mar, harvest Apr–Jun) and fall (sow Sep–Oct, harvest Nov–Dec). Peak summer heat causes rapid bolting — avoid June–August planting.'
FROM plants WHERE slug = 'basil';

-- ============================================================
-- THYME
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5,6], ARRAY[6,7,8,9,10],
'Start indoors in March–April. Thyme is cold hardy once established and one of the last herbs standing in fall. Bring containers indoors before hard freeze.'
FROM plants WHERE slug = 'thyme';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[2,3], ARRAY[4,5], ARRAY[5,6,7,8,9,10,11],
'A true perennial — plant once and harvest for years. Survives zone 6–7 winters in the ground; container plants need protection below 10°F.'
FROM plants WHERE slug = 'thyme';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[3,4], ARRAY[4,5,6,7,8,9,10,11],
'Plant in spring and harvest continuously. Perennial in zones 8–9 — survives mild winters outdoors with little protection.'
FROM plants WHERE slug = 'thyme';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[12,1,2,3,4,5],
'Plant in fall for a cool-season harvest. Thyme struggles in extreme summer heat and humidity in zone 10–11 — grow it during the cooler months.'
FROM plants WHERE slug = 'thyme';

-- ============================================================
-- SAGE
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5,6], ARRAY[6,7,8,9,10],
'Start indoors in March. Sage is perennial to zone 4 — established plants overwinter well but may need mulching in zone 3. Wait until soil has warmed before transplanting.'
FROM plants WHERE slug = 'sage';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[2,3], ARRAY[4,5], ARRAY[5,6,7,8,9,10,11],
'Long-lived perennial in zones 6–7. Plant once and harvest for 4–5 years. Cut back in spring before new growth to keep it productive and prevent woodiness.'
FROM plants WHERE slug = 'sage';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[3,4], ARRAY[4,5,6,7,8,9,10,11],
'Plant in spring. Perennial in zones 8–9. May go semi-dormant in summer heat — this is normal. Cut back to encourage fresh growth in cooler months.'
FROM plants WHERE slug = 'sage';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[12,1,2,3,4,5],
'Plant in fall and harvest through spring. Sage struggles in high heat and humidity — treat as a cool-season annual or grow in the most shaded spot available.'
FROM plants WHERE slug = 'sage';

-- ============================================================
-- DILL
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[5,6], ARRAY[7,8],
'Direct sow after last frost — dill dislikes transplanting due to its taproot. Succession sow every 3 weeks. Season ends with first frost in September.'
FROM plants WHERE slug = 'dill';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[3,4,8,9], ARRAY[5,6,7,10],
'Two sowing windows: spring (Mar–Apr) and late summer (Aug–Sep) for a fall crop before frost. Direct sow only — avoid transplanting. Succession sow every 3 weeks.'
FROM plants WHERE slug = 'dill';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[2,3,9,10], ARRAY[4,5,11,12],
'Spring sowing (Feb–Mar) before heat arrives, and fall sowing (Sep–Oct) for a winter crop. Dill bolts rapidly in summer heat — avoid May–August planting.'
FROM plants WHERE slug = 'dill';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[12,1,2,3],
'A cool-season crop in hot climates — sow in fall and harvest through winter. Bolts immediately in summer heat. Succession sow monthly October through January.'
FROM plants WHERE slug = 'dill';

-- ============================================================
-- MINT
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5], ARRAY[6,7,8,9],
'Start indoors in March or buy a plant. Mint dies back to roots in winter in zones 3–5 and returns in spring — bring containers indoors or mulch heavily to protect roots.'
FROM plants WHERE slug = 'mint';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[2,3], ARRAY[4,5], ARRAY[5,6,7,8,9,10],
'Perennial in zones 6–7. Dies back in winter and returns vigorously in spring. Keep in its own container year-round to contain its spreading roots.'
FROM plants WHERE slug = 'mint';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[3,4], ARRAY[4,5,6,7,8,9,10,11],
'Plant in spring and harvest continuously. May go semi-dormant in peak summer heat in zone 9 — water consistently and it will bounce back. Evergreen or semi-evergreen in mild winters.'
FROM plants WHERE slug = 'mint';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11], ARRAY[12,1,2,3,4,5],
'Plant in fall for a cool-season harvest. Mint grows year-round in zone 10–11 but is most vigorous and flavorful during cooler months. Keep consistently moist — dries out fast in heat.'
FROM plants WHERE slug = 'mint';

-- ============================================================
-- LAVENDER
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[2,3], ARRAY[5,6], ARRAY[7,8],
'Start indoors 10–12 weeks before last frost. English lavender (Lavandula angustifolia) is hardiest to zone 4. Bring containers indoors before hard freeze. Blooms first year if started early.'
FROM plants WHERE slug = 'lavender';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[1,2], ARRAY[4,5], ARRAY[6,7,8],
'Perennial in zones 6–7. Plant in spring and it will bloom by summer. Cut back after flowering for a second flush. Mulch lightly in zone 6 for winter protection.'
FROM plants WHERE slug = 'lavender';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[2,3,4], ARRAY[5,6,7],
'Plant in late winter or early spring. Spanish lavender (Lavandula stoechas) tolerates the heat of zones 8–9 better than English varieties. Blooms heavily in spring.'
FROM plants WHERE slug = 'lavender';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[2,3,4,5],
'Plant in fall for winter and spring blooms. Zone 10–11 heat and humidity is challenging — use French or Spanish varieties and ensure perfect drainage. May decline in summer.'
FROM plants WHERE slug = 'lavender';

-- ============================================================
-- ROSEMARY
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5,6], ARRAY[7,8,9,10],
'Start indoors or buy transplants. Rosemary is only reliably hardy to zone 7 — bring containers indoors before temperatures drop below 20°F in fall. Move to a sunny indoor window.'
FROM plants WHERE slug = 'rosemary';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[2,3], ARRAY[4,5], ARRAY[5,6,7,8,9,10],
'Perennial in zone 7, marginally hardy in zone 6 — container plants should come indoors in hard winters. Harvest stems regularly; the more you harvest, the bushier it grows.'
FROM plants WHERE slug = 'rosemary';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[3,4], ARRAY[4,5,6,7,8,9,10,11],
'A true perennial in zones 8–9. Plant in spring and it will grow into a substantial shrub over years. Harvest year-round. Drought tolerant once established — minimal care needed.'
FROM plants WHERE slug = 'rosemary';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[9,10,11], ARRAY[1,2,3,4,5,6,7,8,9,10,11,12],
'Rosemary thrives year-round in zone 10–11. Plant any time but preferably in fall for easiest establishment. Harvest continuously — it is one of the best-performing herbs in hot climates.'
FROM plants WHERE slug = 'rosemary';

-- ============================================================
-- PEPPERS
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[6], ARRAY[8,9,10],
'Start indoors 8–10 weeks before last frost. Peppers need warm soil (65°F+) — do not transplant until June in zones 3–5. Short season means fewer fruits but excellent quality.'
FROM plants WHERE slug = 'peppers';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[2,3], ARRAY[5,6], ARRAY[7,8,9,10],
'Start indoors 8–10 weeks before last frost. Transplant after soil warms to 65°F. Long growing season in zones 6–7 means excellent yields — begin harvesting green peppers by July.'
FROM plants WHERE slug = 'peppers';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', ARRAY[1,2], ARRAY[3,4], ARRAY[6,7,8,9,10,11],
'Start early for maximum yield. Two planting windows possible in zone 9. Peppers are perennial in frost-free zones — overwintered plants produce earlier and more abundantly the following year.'
FROM plants WHERE slug = 'peppers';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', ARRAY[1], ARRAY[2,3], ARRAY[4,5,6,7,10,11,12],
'Perennial in zone 10–11 — a single plant can produce for several years. Harvest slows in peak summer heat. Protect from extreme heat above 95°F with shade cloth to prevent blossom drop.'
FROM plants WHERE slug = 'peppers';

-- ============================================================
-- TOMATOES
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[6], ARRAY[8,9,10],
'Start indoors 6–8 weeks before last frost. Only transplant after both air and soil temperatures are reliably warm. Choose short-season varieties (under 70 days) for zones 3–4.'
FROM plants WHERE slug = 'tomatoes';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[2,3], ARRAY[5], ARRAY[7,8,9,10],
'Start indoors in February–March. Transplant after last frost when nights stay above 50°F. Zones 6–7 offer an excellent growing season — most varieties have time to fully ripen.'
FROM plants WHERE slug = 'tomatoes';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', ARRAY[1,2], ARRAY[3,4], ARRAY[5,6,7,8,9,10],
'Two planting opportunities in zone 9: spring (transplant Mar–Apr) and fall. Spring crop often finishes by August heat. Start a second round in July indoors for fall harvest.'
FROM plants WHERE slug = 'tomatoes';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', ARRAY[1,2], ARRAY[3], ARRAY[5,6,7,9,10,11],
'Grow as a spring and fall crop — summer heat causes blossom drop above 95°F. Spring crop: transplant Feb–Mar, harvest May–Jul. Fall crop: start indoors in July, harvest Oct–Dec.'
FROM plants WHERE slug = 'tomatoes';

-- ============================================================
-- LETTUCE
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[5,6,8], ARRAY[6,7,9],
'Direct sow as soon as soil can be worked (May in most zones 3–5). A fall sowing in August extends the season. Lettuce tolerates light frost — cover with row cloth for extra weeks of harvest.'
FROM plants WHERE slug = 'lettuce';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[3,4,8,9], ARRAY[4,5,6,9,10,11],
'Excellent spring AND fall crop in zones 6–7. Sow every 2 weeks for continuous harvest. Bolt-resistant varieties extend summer production — provide afternoon shade in June.'
FROM plants WHERE slug = 'lettuce';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[2,3,9,10], ARRAY[3,4,5,10,11,12],
'Grows in spring and fall; bolts in summer heat. Two separate growing windows. Fall crops are often more productive than spring. Provide shade cloth in warm weather.'
FROM plants WHERE slug = 'lettuce';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[12,1,2,3],
'A winter crop in zones 10–11. Direct sow October through December and harvest through March. Bolts rapidly when temperatures rise in spring — succession sow monthly.'
FROM plants WHERE slug = 'lettuce';

-- ============================================================
-- CHIVES
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5], ARRAY[6,7,8,9,10],
'One of the hardiest herbs — perennial to zone 3. Dies back to the ground in winter and returns reliably each spring. One of the first herbs up in spring.'
FROM plants WHERE slug = 'chives';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[2], ARRAY[4,5], ARRAY[5,6,7,8,9,10,11],
'Perennial — plant once and harvest for years. Cut to 2 inches in fall and they return in spring. Hardy to zone 3, so zone 6–7 winters present no challenge.'
FROM plants WHERE slug = 'chives';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[3,4], ARRAY[4,5,6,7,8,9,10,11],
'Perennial in zones 8–9 — may stay green through winter. Plant in spring and harvest almost year-round. Divide clumps every 2–3 years to keep them vigorous.'
FROM plants WHERE slug = 'chives';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11], ARRAY[12,1,2,3,4,5],
'Plant in fall for a cool-season crop. Chives can grow year-round but are most productive and flavorful in the cooler months. May go dormant or decline in peak summer heat.'
FROM plants WHERE slug = 'chives';

-- ============================================================
-- PARSLEY
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[2,3], ARRAY[5,6], ARRAY[7,8,9],
'Start indoors 10–12 weeks before last frost — parsley is notoriously slow to germinate (14–28 days). Soak seeds overnight. Treat as an annual in zones 3–5.'
FROM plants WHERE slug = 'parsley';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[1,2], ARRAY[4,5], ARRAY[5,6,7,8,9,10],
'Biennial — produces leaves year 1, seeds year 2. In zones 6–7, often survives winter in the ground and goes to seed the following spring. Start fresh each year for best leaves.'
FROM plants WHERE slug = 'parsley';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[2,3,9,10], ARRAY[4,5,6,11,12],
'Two planting windows. Spring sowing works but parsley bolts faster in heat. Fall sowing (Sept–Oct) produces a long, productive cool-season crop through winter and early spring.'
FROM plants WHERE slug = 'parsley';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11], ARRAY[12,1,2,3,4],
'A cool-season crop in zones 10–11. Sow in fall and harvest through spring. One of the easiest herbs to grow during the cooler months — much more productive than summer attempts.'
FROM plants WHERE slug = 'parsley';

-- ============================================================
-- KALE
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5,6,8], ARRAY[7,9,10],
'Start spring crop indoors in March–April. Direct sow a fall crop in August for harvest after frost — frost actually sweetens the leaves. Kale is one of the hardiest vegetables.'
FROM plants WHERE slug = 'kale';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[3,4,8,9], ARRAY[5,6,7,10,11,12],
'Two growing windows. Spring crop (Mar–Apr sowing) harvested through early summer. Fall crop (Aug–Sep sowing) often survives into December or beyond — flavor improves with each frost.'
FROM plants WHERE slug = 'kale';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[2,3,9,10], ARRAY[4,5,6,11,12,1],
'Best grown as a fall/winter crop in zones 8–9 — the long cool season produces the most flavorful kale. Spring crops work but finish faster in the heat. Harvest October through April.'
FROM plants WHERE slug = 'kale';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11], ARRAY[12,1,2,3,4],
'Strictly a cool-season crop in zones 10–11. Sow in fall and harvest through early spring. Does not tolerate the summer heat and humidity — treat as a winter annual.'
FROM plants WHERE slug = 'kale';

-- ============================================================
-- STRAWBERRY
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[5,6], ARRAY[7,8,9],
'Plant bare-root plants or transplants in May after last frost. Everbearing varieties (Albion, Seascape) produce all summer. Mulch roots before winter freeze.'
FROM plants WHERE slug = 'strawberry';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[4,5], ARRAY[6,7,8,9],
'Plant in spring. Everbearing varieties produce June through September. June-bearing types have one large crop in June. Choose everbearing for container growing.'
FROM plants WHERE slug = 'strawberry';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[2,3,4,10,11], ARRAY[4,5,6,7,11,12],
'Two planting windows: early spring (Feb–Mar) for a late spring/summer harvest, and fall (Oct–Nov) for a winter/spring harvest. Fall-planted strawberries often outperform spring plantings in zones 8–9.'
FROM plants WHERE slug = 'strawberry';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[12,1,2,3,4],
'Plant in fall and harvest through spring — the only viable season in zone 10–11. Summer heat is too intense for fruit development. Use varieties bred for low-chill requirements.'
FROM plants WHERE slug = 'strawberry';

-- ============================================================
-- CUCUMBER
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[4,5], ARRAY[6], ARRAY[7,8,9],
'Start indoors 2–3 weeks before last frost — no earlier, as cucumbers dislike transplanting and grow fast. Transplant only when soil is 60°F+. Short season: choose 50-day varieties.'
FROM plants WHERE slug = 'cucumber';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[3,4], ARRAY[5,6], ARRAY[7,8,9],
'Start indoors briefly or direct sow after last frost. Cucumbers grow fast — direct sowing in late May often catches up to transplants. Harvest every 2–3 days to maintain production.'
FROM plants WHERE slug = 'cucumber';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[4,5], ARRAY[6,7,8,9],
'Direct sow in spring after soil warms. Long season in zones 8–9. A second crop can be started in late summer (August) for a fall harvest before first frost.'
FROM plants WHERE slug = 'cucumber';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[3,4,9], ARRAY[5,6,7,10,11],
'Two growing windows: spring (sow Mar–Apr, harvest May–Jul before peak heat) and fall (sow August–September, harvest Oct–Nov). Avoid peak summer planting — heat causes bitter fruit.'
FROM plants WHERE slug = 'cucumber';

-- ============================================================
-- ZUCCHINI
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[4,5], ARRAY[6], ARRAY[7,8,9],
'Start indoors 2–3 weeks before last frost. Zucchini grows fast — do not start too early or it becomes rootbound. Transplant after frost when soil is warm. One plant is plenty.'
FROM plants WHERE slug = 'zucchini';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[4], ARRAY[5,6], ARRAY[7,8,9],
'Direct sow or transplant after last frost. Enormously productive — harvest every 2–3 days at 6–8 inches. One plant will produce more than most households can eat.'
FROM plants WHERE slug = 'zucchini';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[4,5], ARRAY[6,7,8,9],
'Plant in spring. A second crop can be started in late summer for fall harvest. Hand-pollinate if bee activity is low — zones 8–9 heat can reduce pollinator activity midday.'
FROM plants WHERE slug = 'zucchini';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[3,4], ARRAY[5,6,7],
'Plant in early spring before peak heat. Harvest ends as summer heat intensifies. A fall planting (sow September, harvest November–December) often performs better than spring in zone 10–11.'
FROM plants WHERE slug = 'zucchini';

-- ============================================================
-- MARIGOLD
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[4,5], ARRAY[6], ARRAY[7,8,9],
'Start indoors 6–8 weeks before last frost. Transplant after last frost. Blooms until first frost — deadhead regularly to extend flowering through September.'
FROM plants WHERE slug = 'marigold';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[3,4], ARRAY[5], ARRAY[6,7,8,9,10],
'Start indoors in March or direct sow in May. Blooms from June until frost. Plant alongside tomatoes and peppers to deter pests from the moment you transplant.'
FROM plants WHERE slug = 'marigold';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', ARRAY[2,3], ARRAY[4], ARRAY[5,6,7,8,9,10,11],
'Start early for maximum season length. In zones 8–9, marigolds often self-sow and return year after year. Very long bloom season — may flower into December.'
FROM plants WHERE slug = 'marigold';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[2,3], ARRAY[4,5,6,7,8,9,10,11,12],
'Direct sow in early spring. In zone 10–11, marigolds can bloom nearly year-round with regular deadheading. They self-sow prolifically — you may never need to replant.'
FROM plants WHERE slug = 'marigold';

-- ============================================================
-- NASTURTIUM
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[5,6], ARRAY[7,8,9],
'Direct sow after last frost — nasturtiums strongly dislike transplanting. Sow seeds 1 inch deep. Blooms and edible harvest through September until frost.'
FROM plants WHERE slug = 'nasturtium';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[4,5], ARRAY[6,7,8,9,10],
'Direct sow in spring. Self-sows readily — once established, you may have them returning year after year. Edible flowers peak in cooler weather; production slows in midsummer heat.'
FROM plants WHERE slug = 'nasturtium';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[3,4], ARRAY[5,6,7,8,9,10,11],
'Direct sow in spring. Long bloom season in zones 8–9. Self-sows prolifically — treat them as a permanent addition to your garden. Best flowers appear in spring and fall.'
FROM plants WHERE slug = 'nasturtium';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[2,3,10,11], ARRAY[4,5,6,12,1,2],
'Two growing windows: spring (sow Feb–Mar, harvest Apr–Jun) and fall (sow Oct–Nov, harvest Dec–Feb). Avoid peak summer — extreme heat stops blooming. Self-sows abundantly.'
FROM plants WHERE slug = 'nasturtium';

-- ============================================================
-- SUNFLOWER
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[5,6], ARRAY[8,9],
'Direct sow after last frost — sunflowers grow so fast that indoor starting offers little advantage. Dwarf varieties (Dwarf Sunspot) are best for containers. Harvest seeds in late summer.'
FROM plants WHERE slug = 'sunflower';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[4,5], ARRAY[7,8,9],
'Direct sow after last frost. Succession sow every 2–3 weeks for continuous blooms. Choose dwarf varieties for containers. Seeds are ready when the back of the head turns brown.'
FROM plants WHERE slug = 'sunflower';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[3,4,5], ARRAY[6,7,8,9],
'Direct sow from March. Long growing season allows succession sowings through May for continuous bloom into fall. Sunflowers love the heat of zones 8–9.'
FROM plants WHERE slug = 'sunflower';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[2,3,4], ARRAY[5,6,7,8],
'Sow in late winter through spring. Sunflowers tolerate zone 10–11 heat well — they thrive in full sun and warmth. Avoid sowing in the hottest months; they perform best in spring.'
FROM plants WHERE slug = 'sunflower';

-- ============================================================
-- CILANTRO
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[5,8], ARRAY[6,7,9],
'Direct sow after last frost or for a fall crop in August. Cool-season crop — bolts quickly in summer heat. Short season in zones 3–5 suits cilantro''s fast life cycle perfectly.'
FROM plants WHERE slug = 'cilantro';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[3,4,8,9], ARRAY[4,5,6,9,10],
'Two sowing windows: spring (Mar–Apr) before heat arrives, and late summer (Aug–Sep) for a fall crop. Succession sow every 2–3 weeks within each window for continuous supply.'
FROM plants WHERE slug = 'cilantro';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[2,3,9,10], ARRAY[3,4,5,10,11],
'Spring sowing (Feb–Mar) before summer heat, and fall sowing (Sep–Oct) for best results. Fall crop often outperforms spring in zones 8–9. Avoid May–September — bolts immediately in heat.'
FROM plants WHERE slug = 'cilantro';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[12,1,2,3],
'Strictly a cool-season crop in zones 10–11. Sow October through December for a winter harvest. One of the most useful cool-season herbs in hot climates. Succession sow monthly.'
FROM plants WHERE slug = 'cilantro';

-- ============================================================
-- OREGANO
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5,6], ARRAY[6,7,8,9],
'Start indoors in March–April. Hardy perennial to zone 5, marginal in zone 4 — bring containers indoors before hard freeze. Harvest just before flowering for peak flavor.'
FROM plants WHERE slug = 'oregano';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[2,3], ARRAY[4,5], ARRAY[5,6,7,8,9,10],
'Perennial in zones 6–7 — plant once and harvest for years. Harvest heavily in summer just before flowering. Cut back after flowering to encourage fresh growth.'
FROM plants WHERE slug = 'oregano';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[3,4], ARRAY[4,5,6,7,8,9,10,11],
'Perennial in zones 8–9. Plant in spring and harvest continuously. May go semi-evergreen through mild winters. Greek oregano is most flavorful — seek it out specifically.'
FROM plants WHERE slug = 'oregano';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[12,1,2,3,4,5,6],
'Plant in fall. Oregano grows year-round in zones 10–11 but is most productive in cooler months. May struggle with high humidity — ensure excellent drainage and good air circulation.'
FROM plants WHERE slug = 'oregano';

-- ============================================================
-- LEMON BALM
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5], ARRAY[6,7,8,9],
'Start indoors in spring. Perennial to zone 4 — dies back to roots in winter and returns strongly in spring. Divide every 2–3 years. Container plants need frost protection below -10°F.'
FROM plants WHERE slug = 'lemon_balm';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[2,3], ARRAY[4,5], ARRAY[5,6,7,8,9,10],
'Reliable perennial in zones 6–7. Returns each spring and grows vigorously. Cut back in autumn. Self-seeds readily — pinch flowers to prevent spreading.'
FROM plants WHERE slug = 'lemon_balm';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[3,4], ARRAY[4,5,6,7,8,9,10,11],
'Perennial in zones 8–9. May stay partially green through winter. Vigorous grower — harvest often to prevent it from becoming overgrown. Cut back hard in late summer.'
FROM plants WHERE slug = 'lemon_balm';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11], ARRAY[12,1,2,3,4,5],
'Plant in fall for a cool-season harvest. Lemon balm struggles with extreme heat and humidity — grows best during the cooler months in zone 10–11. Most productive November through April.'
FROM plants WHERE slug = 'lemon_balm';

-- ============================================================
-- FENNEL
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5,6], ARRAY[7,8,9],
'Start indoors carefully — fennel dislikes transplanting but short seasons require it. Use biodegradable pots to minimize root disturbance. Perennial to zone 5, annual in zones 3–4.'
FROM plants WHERE slug = 'fennel';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[4,5,8], ARRAY[6,7,10,11],
'Direct sow in spring or for a fall crop in August. Perennial in zone 7, annual in zone 6. Remember: keep fennel in its own container — it inhibits most vegetables and herbs nearby.'
FROM plants WHERE slug = 'fennel';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[3,4,9,10], ARRAY[5,6,11,12],
'Two sowing windows. Spring crop and fall crop both work well. Perennial in zones 8–9 — a well-established plant can persist for several years. Keep isolated from vegetables.'
FROM plants WHERE slug = 'fennel';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[12,1,2,3,4],
'Cool-season crop in zones 10–11. Sow in fall and harvest through spring. Can persist as a perennial if not cut back — keep well separated from all other plants.'
FROM plants WHERE slug = 'fennel';

-- ============================================================
-- CARROTS
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[5,6,8], ARRAY[8,9,10],
'Direct sow as soon as soil reaches 45°F in spring. A late summer sowing in August produces a fall crop — carrots store well in the ground through light frosts. Never transplant.'
FROM plants WHERE slug = 'carrots';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[3,4,8,9], ARRAY[6,7,8,10,11],
'Spring sowing (Mar–Apr) and fall sowing (Aug–Sep) both work in zones 6–7. Fall carrots are often sweeter after frost. Thin to 2 inches apart — essential for proper root development.'
FROM plants WHERE slug = 'carrots';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[2,3,10,11], ARRAY[5,6,1,2],
'Spring crop (Feb–Mar sowing, harvest May–Jun) and fall/winter crop (Oct–Nov sowing, harvest Jan–Feb). Fall and winter carrots thrive in zones 8–9 and often outperform spring crops.'
FROM plants WHERE slug = 'carrots';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[1,2,3,4],
'Grown as a cool-season crop in zones 10–11. Sow October through December and harvest January through April. Nantes and Chantenay varieties perform best. Sweet, flavorful winter harvest.'
FROM plants WHERE slug = 'carrots';

-- ============================================================
-- SPINACH
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[5,8], ARRAY[6,7,9],
'Direct sow in spring as soon as soil can be worked. Fall sowing in August produces a second harvest before first frost. Spinach tolerates light frost beautifully — harvest extends into October.'
FROM plants WHERE slug = 'spinach';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[3,4,8,9], ARRAY[4,5,6,10,11],
'Spring and fall crops. Succession sow every 2 weeks within each window. Provides shade for summer spinach by planting near taller crops. Fall harvests after light frost are sweetest.'
FROM plants WHERE slug = 'spinach';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[2,3,10], ARRAY[3,4,5,11,12],
'Spring and fall/winter crops. Fall sowing in October is often the most productive season in zones 8–9 — cool nights and warm days are ideal. Succession sow every 2–3 weeks.'
FROM plants WHERE slug = 'spinach';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[12,1,2,3],
'Cool-season winter crop in zones 10–11. Sow October through December for a January–March harvest. Bolts immediately when temperatures rise in spring. Succession sow monthly in fall.'
FROM plants WHERE slug = 'spinach';

-- ============================================================
-- GREEN BEANS
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[6], ARRAY[8,9],
'Direct sow after last frost when soil is 60°F+. Short season limits harvest window — choose varieties with 50–55 day maturity. Succession sow 2 weeks after first sowing for extended harvest.'
FROM plants WHERE slug = 'green_beans';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[5,6,7], ARRAY[7,8,9],
'Direct sow after last frost. Succession sow every 2–3 weeks through July for harvest into September. Bush varieties are most container-friendly — no staking required.'
FROM plants WHERE slug = 'green_beans';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[4,5,6,7], ARRAY[6,7,8,9],
'Long growing season in zones 8–9 allows multiple succession sowings. A fall planting (August–September) often produces excellent results with fewer pest problems than the spring crop.'
FROM plants WHERE slug = 'green_beans';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[3,4,9,10], ARRAY[5,6,7,11,12],
'Two growing windows: spring (sow Mar–Apr, harvest May–Jul) and fall (sow Sep–Oct, harvest Nov–Dec). Avoid peak summer planting — heat reduces yield and increases pest pressure significantly.'
FROM plants WHERE slug = 'green_beans';

-- ============================================================
-- RADISH
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[5,6,8], ARRAY[6,7,9],
'Direct sow as soon as soil is workable in spring. A late summer sowing in August produces a quick fall crop. One of the first vegetables to harvest — great for impatient gardeners.'
FROM plants WHERE slug = 'radish';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[3,4,8,9], ARRAY[4,5,9,10],
'Sow every 2 weeks spring and fall for a continuous stream of radishes. Spring and fall crops are best — bolts rapidly in summer heat. Harvest promptly at maturity or they go pithy.'
FROM plants WHERE slug = 'radish';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[2,3,10,11], ARRAY[3,4,11,12],
'Spring and fall crops. In zones 8–9, fall radishes are often superior — cooler temperatures produce crunchier, milder roots. Succession sow every 2 weeks within each season.'
FROM plants WHERE slug = 'radish';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12,1], ARRAY[11,12,1,2],
'A cool-season crop grown October through February in zones 10–11. Ready in just 22–30 days — one of the easiest and most rewarding winter crops. Succession sow every 2 weeks.'
FROM plants WHERE slug = 'radish';

-- ============================================================
-- SWISS CHARD
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5,6], ARRAY[6,7,8,9,10],
'Start indoors or direct sow after last frost. Swiss chard is more heat tolerant than spinach, making it useful through the short growing season. Tolerates light fall frosts beautifully.'
FROM plants WHERE slug = 'swiss_chard';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[3,4,8], ARRAY[5,6,7,8,9,10,11],
'Spring sowing through fall harvest — one of the longest-producing container vegetables. A fall sowing in August extends the harvest through December in mild zones. Cut-and-come-again for months.'
FROM plants WHERE slug = 'swiss_chard';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[2,3,9,10], ARRAY[4,5,6,7,11,12],
'Spring and fall crops. Remarkably adaptable — tolerates both heat and light frost. In zones 8–9, chard often overwinters and continues producing into the following spring.'
FROM plants WHERE slug = 'swiss_chard';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[12,1,2,3,4,5],
'Plant in fall for a long cool-season harvest. Swiss chard is one of the best choices for zones 10–11 — it handles heat better than other leafy greens and provides months of harvest.'
FROM plants WHERE slug = 'swiss_chard';

-- ============================================================
-- BROCCOLI
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5,6], ARRAY[7,8,9],
'Start indoors 4–6 weeks before last frost. Broccoli tolerates light frost once established. Harvest main head before any yellowing — side shoots continue producing for weeks afterward.'
FROM plants WHERE slug = 'broccoli';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[2,3], ARRAY[4,5,8,9], ARRAY[6,7,10,11,12],
'Spring AND fall crops in zones 6–7. Fall broccoli (start indoors July–August, transplant Sept) often produces larger, better-flavored heads. Cover with row cloth to extend harvest.'
FROM plants WHERE slug = 'broccoli';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', ARRAY[1,2,8,9], ARRAY[3,10,11], ARRAY[5,6,1,2],
'Fall and winter crops are best in zones 8–9. Start indoors in August–September, transplant October–November, harvest December–February. Spring crops work but finish quickly in warming temperatures.'
FROM plants WHERE slug = 'broccoli';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', ARRAY[9,10], ARRAY[10,11], ARRAY[12,1,2,3],
'Strictly a cool-season crop in zones 10–11. Start indoors in September–October, transplant in October–November, harvest December through March. One of the most rewarding winter vegetables.'
FROM plants WHERE slug = 'broccoli';

-- ============================================================
-- BLUEBERRY
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[4,5], ARRAY[7,8,9],
'Plant bare-root plants in spring after soil thaws. Northern Highbush varieties (Bluecrop, Patriot) are bred for zones 3–5. Get the pH right (4.5–5.5) before planting — this is non-negotiable.'
FROM plants WHERE slug = 'blueberry';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[3,4], ARRAY[6,7,8,9],
'Plant in early spring. Zones 6–7 are prime blueberry territory. Rabbiteye varieties work in zone 7; Northern Highbush in zone 6. Plant two varieties for cross-pollination to maximize harvest.'
FROM plants WHERE slug = 'blueberry';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[12,1,2], ARRAY[5,6,7],
'Plant in late fall or winter in zones 8–9. Southern Highbush or Rabbiteye varieties are essential — they require fewer winter chill hours. Choose low-chill varieties specifically bred for warm climates.'
FROM plants WHERE slug = 'blueberry';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[11,12,1], ARRAY[3,4,5],
'Challenging in zone 10–11 — requires special ultra-low-chill varieties (O''Neal, Sharpblue). Plant in fall. Acidic soil (pH 4.5–5.5) is even more critical in alkaline regions. Use rainwater for irrigation.'
FROM plants WHERE slug = 'blueberry';

-- ============================================================
-- RASPBERRY
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[4,5], ARRAY[8,9],
'Plant bare-root canes in spring. Autumn-fruiting varieties (Heritage, Autumn Bliss) fruit on first-year canes — cut all canes to ground in February and they regrow and fruit the same year.'
FROM plants WHERE slug = 'raspberry';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[3,4], ARRAY[8,9,10],
'Plant in early spring. Autumn-fruiting varieties are most container-friendly. Long harvest window in zones 6–7 — berries ripen August through October before frost. Stake canes carefully.'
FROM plants WHERE slug = 'raspberry';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[11,12,1,2], ARRAY[9,10,11],
'Plant in fall or winter (November–February). Autumn-fruiting varieties fruit September–November before summer heat returns. Zones 8–9 are near the warm edge for raspberries — choose heat-tolerant varieties.'
FROM plants WHERE slug = 'raspberry';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[11,12], ARRAY[3,4,5],
'Very challenging in zone 10–11 — raspberries require winter chill hours that these zones rarely provide. If attempting, choose the lowest-chill varieties available. Best results in elevated or cooler microclimates.'
FROM plants WHERE slug = 'raspberry';
