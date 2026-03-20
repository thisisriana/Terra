-- ============================================================
-- TERRA — Add missing planting schedules for plants added in
-- 20260301000007_add_common_plants.sql that had no schedule rows.
-- Affected: peas, garlic, onions, beets, arugula, bok_choy,
--           cabbage, cauliflower, brussels_sprouts, collard_greens,
--           eggplant, sweet_corn, leeks, butternut_squash,
--           borage, calendula, chamomile, marjoram, tarragon
-- ============================================================

-- ============================================================
-- PEAS (cool-season, direct sow, frost tolerant)
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[3,4], ARRAY[5,6,7],
'Direct sow as soon as the ground can be worked (March–April). Peas are frost tolerant and must be planted in cool soil. They stop producing when temperatures exceed 75°F. Pull plants when done and plant a warm-season crop.'
FROM plants WHERE slug = 'peas';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[2,3,4,8,9], ARRAY[4,5,6,10,11],
'Two windows: spring (Feb–Apr, as soon as soil can be worked) and fall (Aug–Sep for October harvest). Direct sow only — peas dislike transplanting. Support with netting or trellis for vining types.'
FROM plants WHERE slug = 'peas';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[1,2,3,9,10], ARRAY[3,4,5,11,12],
'Spring crop: January–March. Fall crop: September–October. Summer heat kills pea plants — time planting so pods are finished before temperatures climb above 75°F.'
FROM plants WHERE slug = 'peas';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[12,1,2,3],
'Cool-season crop grown in fall and winter only. Sow October–December; harvest December–March. Summers are too hot for peas in zones 10–11.'
FROM plants WHERE slug = 'peas';

-- ============================================================
-- GARLIC (plant in fall, harvest in summer)
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[9,10], ARRAY[7,8],
'Plant cloves in September–October before the ground freezes. Mulch heavily with straw to protect through winter. Harvest when about half the leaves have yellowed (typically July–August).'
FROM plants WHERE slug = 'garlic';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[10,11], ARRAY[6,7],
'Plant in October–November after the first light frosts but before the ground freezes. Overwintering garlic develops the largest bulbs. Harvest June–July when 5–6 lower leaves have browned.'
FROM plants WHERE slug = 'garlic';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[10,11,12], ARRAY[5,6],
'Plant October–December. Winters are mild enough that garlic grows slowly through the cool months, forming large bulbs by late spring. Harvest May–June.'
FROM plants WHERE slug = 'garlic';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[11,12,1], ARRAY[4,5],
'Plant November–January during the coolest part of the year. Bulb formation may be smaller than in colder climates but still worthwhile. Harvest April–May before heat arrives.'
FROM plants WHERE slug = 'garlic';

-- ============================================================
-- ONIONS
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[2,3], ARRAY[5,6], ARRAY[8,9],
'Start from seed indoors in February–March, or plant sets outdoors in May once frost risk is past. Long-day variety. Harvest August–September when tops fall over.'
FROM plants WHERE slug = 'onions';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[2,3], ARRAY[3,4,5], ARRAY[7,8],
'Start indoors February–March; transplant or plant sets March–May. Long-day variety in zone 6–7. Harvest July–August. Can also direct sow sets in early spring.'
FROM plants WHERE slug = 'onions';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', ARRAY[10,11], ARRAY[12,1,2], ARRAY[5,6],
'Plant short-day or intermediate varieties in fall/winter (December–February). Harvest May–June. Long-day varieties will not bulb properly in southern latitudes.'
FROM plants WHERE slug = 'onions';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[3,4],
'Short-day varieties only. Plant October–December; harvest March–April. Heat causes premature bolting — timing is critical.'
FROM plants WHERE slug = 'onions';

-- ============================================================
-- BEETS
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[4,5], ARRAY[6,7,8],
'Direct sow as soon as soil can be worked in April–May. Beets tolerate light frost. Harvest at golf-ball size for best flavor (50–70 days). Greens are edible too.'
FROM plants WHERE slug = 'beets';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[3,4,8,9], ARRAY[5,6,7,10,11],
'Two sowing windows: spring (March–April) and late summer (August–September) for a fall crop. Beets sweeten after a light frost. Direct sow; thin to 3 inches apart.'
FROM plants WHERE slug = 'beets';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[2,3,9,10], ARRAY[4,5,11,12],
'Spring crop: February–March. Fall crop: September–October. Avoid summer planting — heat causes woody, bitter roots. Succession sow every 3 weeks for continuous harvest.'
FROM plants WHERE slug = 'beets';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[12,1,2,3],
'Cool-season crop grown in fall and winter. Sow October–December; harvest December–March. Summer heat makes roots pithy and bitter.'
FROM plants WHERE slug = 'beets';

-- ============================================================
-- ARUGULA
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[4,5], ARRAY[5,6,7],
'Direct sow in April–May. Arugula is fast (30–40 days) but bolts quickly in heat. Harvest young leaves before temperatures climb. Can also be sown in August for a fall crop.'
FROM plants WHERE slug = 'arugula';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[3,4,8,9], ARRAY[4,5,6,9,10,11],
'Spring (March–April) and fall (August–September) crops. Bolts in summer heat. Fast-growing — succession sow every 2 weeks. One of the last greens standing in fall.'
FROM plants WHERE slug = 'arugula';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[2,3,9,10,11], ARRAY[3,4,5,10,11,12],
'Three sowing windows: early spring, fall, and mild winter. Bolts rapidly in summer — avoid April through August planting. Succession sow every 2 weeks.'
FROM plants WHERE slug = 'arugula';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12,1], ARRAY[11,12,1,2,3],
'Cool-season only. Sow October–January; harvest through winter and early spring. Will bolt in any warm weather.'
FROM plants WHERE slug = 'arugula';

-- ============================================================
-- BOK CHOY
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5,6], ARRAY[6,7,8],
'Start indoors in March–April or direct sow after last frost. Fast-maturing (45–60 days). Can also direct sow in August for a fall crop before first frost.'
FROM plants WHERE slug = 'bok_choy';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[2,3], ARRAY[3,4,8,9], ARRAY[4,5,6,9,10,11],
'Spring and fall crops. Bolts in summer heat. Start indoors February–March for a spring crop; direct sow August–September for fall. Very frost tolerant.'
FROM plants WHERE slug = 'bok_choy';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[2,3,9,10], ARRAY[3,4,5,10,11,12],
'Spring (February–March) and fall (September–October) crops. Avoid summer heat. Quick to bolt — harvest young for best texture.'
FROM plants WHERE slug = 'bok_choy';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[12,1,2,3],
'Cool-season only. Sow October–December for winter harvest. Bolts almost immediately in warm weather.'
FROM plants WHERE slug = 'bok_choy';

-- ============================================================
-- CABBAGE
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5,6], ARRAY[7,8,9],
'Start indoors 6–8 weeks before last frost. Transplant when soil has warmed slightly. Very frost tolerant. Harvest when heads feel firm and solid — typically July–September.'
FROM plants WHERE slug = 'cabbage';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[2,3,7,8], ARRAY[3,4,9], ARRAY[5,6,7,10,11],
'Two crops: spring (start indoors Feb–Mar, transplant March–April) and fall (start July–August, transplant September). Heads split if left too long after maturity.'
FROM plants WHERE slug = 'cabbage';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', ARRAY[1,2,8,9], ARRAY[2,3,9,10], ARRAY[4,5,11,12],
'Spring and fall crops. Start indoors 6 weeks before transplanting. Fall crop is usually better quality — cool weather sweetens the heads.'
FROM plants WHERE slug = 'cabbage';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', ARRAY[9,10], ARRAY[10,11], ARRAY[1,2,3],
'Fall and winter crop only. Start indoors in September–October, transplant October–November. Harvest January–March before heat returns.'
FROM plants WHERE slug = 'cabbage';

-- ============================================================
-- CAULIFLOWER
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5,6], ARRAY[7,8,9],
'Start indoors 6–8 weeks before last frost. Cauliflower is more frost-sensitive than broccoli — transplant after the last hard freeze. Harvest when heads are tight and white.'
FROM plants WHERE slug = 'cauliflower';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[2,3,7], ARRAY[3,4,8,9], ARRAY[5,6,10,11],
'Spring and fall crops. Start indoors in Feb–March; transplant in March–April. For fall: start July, transplant August–September. Heat causes loose, ricey heads.'
FROM plants WHERE slug = 'cauliflower';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', ARRAY[1,8,9], ARRAY[2,3,9,10], ARRAY[4,5,11,12],
'Spring and fall crops. Fall crop is generally more reliable in warm climates. Consistent cool temperatures produce the tightest, best-quality heads.'
FROM plants WHERE slug = 'cauliflower';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', ARRAY[9,10], ARRAY[10,11], ARRAY[1,2,3],
'Cool-season only. Start indoors September–October, transplant October–November. Very heat sensitive — time planting to avoid any warm spells during heading.'
FROM plants WHERE slug = 'cauliflower';

-- ============================================================
-- BRUSSELS SPROUTS
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[4,5], ARRAY[6,7], ARRAY[9,10,11],
'Start indoors in April–May; transplant in June–July. Long-season crop (90–110 days). Frost improves flavor — best harvested after first frost in September–November.'
FROM plants WHERE slug = 'brussels_sprouts';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[5,6], ARRAY[6,7], ARRAY[10,11,12],
'Start indoors May–June; transplant June–July. Plan for a fall harvest — sprouts develop from the bottom up. Light frost sweetens them considerably.'
FROM plants WHERE slug = 'brussels_sprouts';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', ARRAY[7,8], ARRAY[8,9], ARRAY[11,12,1],
'Start July–August for a fall/winter harvest. Brussels sprouts need a long cool period — time them to mature in the coolest months. Rarely as successful as in colder climates.'
FROM plants WHERE slug = 'brussels_sprouts';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', ARRAY[8,9], ARRAY[9,10], ARRAY[12,1,2],
'Possible only in the coolest months. Start indoors August–September; transplant September–October. Results are variable — not ideal in zones 10–11.'
FROM plants WHERE slug = 'brussels_sprouts';

-- ============================================================
-- COLLARD GREENS
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5,6], ARRAY[7,8,9,10],
'Start indoors in March–April; transplant after last frost. Very cold hardy — survives light frosts, which actually improve flavor. Harvest outer leaves continuously.'
FROM plants WHERE slug = 'collard_greens';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[2,3,7], ARRAY[4,5,8,9], ARRAY[6,7,8,9,10,11,12],
'Spring and fall crops. Extremely cold tolerant — survives zone 6 winters and produces through late December. One of the most productive cut-and-come-again greens.'
FROM plants WHERE slug = 'collard_greens';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[3,4,9,10], ARRAY[5,6,7,11,12,1],
'Can be grown most of the year except peak summer. Heat tolerant but best flavor comes with cool temperatures. Harvest outer leaves as needed.'
FROM plants WHERE slug = 'collard_greens';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[9,10,11], ARRAY[11,12,1,2,3,4],
'One of the more heat-tolerant brassicas but still best in cool months. Plant September–November; harvest through winter and spring.'
FROM plants WHERE slug = 'collard_greens';

-- ============================================================
-- EGGPLANT
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[6], ARRAY[8,9],
'Start indoors 8–10 weeks before last frost (March–April). Do not transplant until nights are reliably above 55°F. Short season — choose fast-maturing varieties (65–70 days).'
FROM plants WHERE slug = 'eggplant';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[3,4], ARRAY[5,6], ARRAY[7,8,9,10],
'Start indoors in March; transplant after last frost when soil is warm. Eggplant loves heat — the warmer the summer, the better. Harvest before the skin loses its glossy sheen.'
FROM plants WHERE slug = 'eggplant';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', ARRAY[2,3], ARRAY[4,5], ARRAY[6,7,8,9,10,11],
'Long productive season in warm climates. Start indoors February–March; transplant April–May. Plants often continue producing into November. Can be overwintered in zone 9.'
FROM plants WHERE slug = 'eggplant';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', ARRAY[1,2], ARRAY[3,4,9], ARRAY[5,6,7,8,10,11],
'Thrives in heat — two crops possible. Spring: transplant March–April, harvest May–August. Fall: transplant September, harvest October–November. May survive as a perennial in zone 11.'
FROM plants WHERE slug = 'eggplant';

-- ============================================================
-- SWEET CORN
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[5,6], ARRAY[8,9],
'Direct sow after last frost when soil is at least 60°F. Plant in blocks (not rows) for good pollination. Choose early-maturing varieties (65–75 days). One crop per season.'
FROM plants WHERE slug = 'sweet_corn';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[4,5,6], ARRAY[7,8,9],
'Direct sow when soil reaches 60°F. Succession sow every 2–3 weeks through June for continuous harvest July–September. Needs a block planting of at least 4 rows for pollination.'
FROM plants WHERE slug = 'sweet_corn';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[3,4,5,7,8], ARRAY[6,7,8,9,10],
'Two crops: spring (March–May) and late summer (July–August). Harvest when silks are dry and brown and kernels release milky juice when pierced.'
FROM plants WHERE slug = 'sweet_corn';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[2,3,9,10], ARRAY[4,5,6,11,12],
'Spring (February–March) and fall (September–October) crops. Summer heat causes poor pollination and poor kernel fill. Time to avoid peak summer.'
FROM plants WHERE slug = 'sweet_corn';

-- ============================================================
-- LEEKS
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[2,3], ARRAY[5,6], ARRAY[9,10,11],
'Start indoors in February–March (pencil-thin seedlings take 10–12 weeks). Transplant in May–June. Hardy — survives frosts and can be left in the ground through October.'
FROM plants WHERE slug = 'leeks';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[1,2,3], ARRAY[4,5], ARRAY[9,10,11,12],
'Start indoors January–March; transplant April–May. Very long season (120–150 days). Some varieties survive in the ground through zone 6 winters for spring harvest.'
FROM plants WHERE slug = 'leeks';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', ARRAY[8,9], ARRAY[10,11], ARRAY[1,2,3,4],
'Start indoors August–September; transplant October–November. Harvest January–April. Leeks do best when they mature in cool weather.'
FROM plants WHERE slug = 'leeks';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', ARRAY[9,10], ARRAY[11,12], ARRAY[2,3,4],
'Cool-season only. Start indoors September–October; transplant November–December. Harvest February–April before heat arrives.'
FROM plants WHERE slug = 'leeks';

-- ============================================================
-- BUTTERNUT SQUASH
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[4,5], ARRAY[6], ARRAY[9,10],
'Start indoors 3–4 weeks before last frost. Needs a long warm season (80–110 days). Choose compact or bush varieties for limited space. Cure harvested squash for 2 weeks to improve storage.'
FROM plants WHERE slug = 'butternut_squash';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[4], ARRAY[5,6], ARRAY[9,10,11],
'Start indoors in April or direct sow in May when soil is warm. Needs full sun and plenty of space. Harvest when skin is hard and stem has dried — stores for months.'
FROM plants WHERE slug = 'butternut_squash';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[4,5], ARRAY[8,9,10],
'Direct sow April–May when soil is warm. Long warm season makes for excellent squash crops. Harvest before first frost; cure for best storage quality.'
FROM plants WHERE slug = 'butternut_squash';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[3,4,9], ARRAY[6,7,12],
'Spring crop (March–April, harvest June–July) or fall crop (September, harvest December). Avoid summer planting in extreme heat zones — vines stress and fruit quality suffers.'
FROM plants WHERE slug = 'butternut_squash';

-- ============================================================
-- BORAGE
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', NULL, ARRAY[5,6], ARRAY[7,8,9],
'Direct sow after last frost — borage dislikes transplanting. Self-seeds prolifically, so expect it to return year after year once established.'
FROM plants WHERE slug = 'borage';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[3,4,5], ARRAY[5,6,7,8,9],
'Direct sow in spring as soon as risk of hard frost passes. Germinates quickly (7–10 days). Self-seeds abundantly — thin or control spread as desired.'
FROM plants WHERE slug = 'borage';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[3,4,9,10], ARRAY[4,5,6,10,11,12],
'Spring and fall sowings. May reseed through winter in zone 8–9. Prune back in summer heat to encourage a second flush of growth in fall.'
FROM plants WHERE slug = 'borage';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[12,1,2,3,4],
'Sow in fall; blooms through winter and spring. Will bolt and die in summer heat. Treat as a cool-season annual.'
FROM plants WHERE slug = 'borage';

-- ============================================================
-- CALENDULA
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5,6], ARRAY[7,8,9],
'Start indoors 6–8 weeks before last frost, or direct sow after frost. Very cold tolerant — survives light freezes. Deadhead regularly to extend the long bloom season.'
FROM plants WHERE slug = 'calendula';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[3,4,5], ARRAY[5,6,7,8,9,10],
'Direct sow in early spring — tolerates frost. Blooms from late spring until hard freeze. Self-seeds in mild winters. Deadhead to keep flowers coming.'
FROM plants WHERE slug = 'calendula';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[2,3,10,11], ARRAY[4,5,6,11,12,1],
'Spring and fall crops. Struggles in summer heat — blooms slow. Plant in fall for a long cool-season bloom period through winter.'
FROM plants WHERE slug = 'calendula';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[12,1,2,3,4],
'Cool-season annual only. Sow October–December; blooms December–April. Will not tolerate summer heat in zones 10–11.'
FROM plants WHERE slug = 'calendula';

-- ============================================================
-- CHAMOMILE
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5], ARRAY[7,8],
'Start indoors or direct sow after last frost. German chamomile (annual) is easiest — self-seeds prolifically once established. Harvest flowers when fully open.'
FROM plants WHERE slug = 'chamomile';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', NULL, ARRAY[3,4,5], ARRAY[5,6,7,8],
'Direct sow in early spring. Chamomile self-seeds and will return year after year. Harvest flowers daily at peak bloom for the most potent tea.'
FROM plants WHERE slug = 'chamomile';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[3,4,10,11], ARRAY[4,5,6,11,12],
'Spring and fall sowings. May struggle in peak summer heat. Roman chamomile is perennial in zones 8–9 and handles heat better than German chamomile.'
FROM plants WHERE slug = 'chamomile';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[12,1,2,3],
'Cool-season only. Sow in fall; harvest through winter and early spring. Does not tolerate summer heat in zones 10–11.'
FROM plants WHERE slug = 'chamomile';

-- ============================================================
-- MARJORAM
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5,6], ARRAY[7,8,9],
'Start indoors 6–8 weeks before last frost. Treat as an annual — not frost hardy. Harvest before flowering for best flavor. Slow-growing from seed; consider buying a transplant.'
FROM plants WHERE slug = 'marjoram';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[3], ARRAY[4,5], ARRAY[6,7,8,9,10],
'Start indoors in March; transplant after last frost. Perennial in zone 7 with some protection; annual in zone 6. Harvest frequently to delay flowering.'
FROM plants WHERE slug = 'marjoram';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[3,4], ARRAY[5,6,7,8,9,10,11],
'Plant in spring. Perennial in zones 8–9. Harvests continuously through the warm months. Cut back after flowering to encourage fresh growth.'
FROM plants WHERE slug = 'marjoram';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11,12], ARRAY[12,1,2,3,4,5],
'Plant in fall for a long cool-season harvest. In zone 10–11, treat as a short-lived perennial or resow annually. Harvest before it bolts in spring heat.'
FROM plants WHERE slug = 'marjoram';

-- ============================================================
-- TARRAGON (French tarragon — must be grown from divisions/cuttings, not seed)
-- ============================================================
INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'cold', ARRAY[3,4], ARRAY[5,6], ARRAY[6,7,8,9],
'Plant divisions or rooted cuttings after last frost. French tarragon does not set viable seed — always buy plants. Goes dormant in winter; hardy to zone 4 with mulching.'
FROM plants WHERE slug = 'tarragon';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'temperate', ARRAY[2,3], ARRAY[4,5], ARRAY[5,6,7,8,9,10],
'Plant divisions in spring. Perennial in zones 6–7 — divide clumps every 3 years to maintain vigor. Harvest sprigs as needed; flavor peaks just before flowering.'
FROM plants WHERE slug = 'tarragon';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'warm', NULL, ARRAY[3,4], ARRAY[4,5,6,7,8,9,10],
'Plant in spring. May go semi-dormant in peak summer heat, then rebound in fall. Perennial in zones 8–9 but shorter lived than in colder climates.'
FROM plants WHERE slug = 'tarragon';

INSERT INTO plant_planting_schedule (plant_id, zone_group_id, indoor_start_months, outdoor_plant_months, harvest_months, notes)
SELECT id, 'hot', NULL, ARRAY[10,11], ARRAY[12,1,2,3,4],
'Cool-season growing only. Plant October–November; harvest through winter. French tarragon rarely thrives long-term in zones 10–11 — Russian tarragon (inferior flavor) is hardier.'
FROM plants WHERE slug = 'tarragon';
