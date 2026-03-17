-- ============================================================
-- TERRA — Add common garden plants: vegetables, herbs, flowers
-- ============================================================

-- ============================================================
-- VEGETABLES
-- ============================================================

-- PEAS
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
  'peas', 'Peas', '', 'vegetable', 'annual',
  'Cool-season climber — plant early for a sweet reward',
  'Peas are a true cool-season crop that must be planted in early spring, as soon as the ground can be worked. They thrive in cool weather and will stop producing when temperatures climb above 75°F. Bush varieties are self-supporting and ideal for containers; climbing types need a simple trellis. Nothing rivals the sweetness of peas picked and eaten directly from the vine.',
  'easy',
  'full', 6, 8, 'Full sun, 6–8 hours. Tolerates light shade better than most vegetables, but full sun delivers the heaviest harvest. Morning sun with afternoon shade can actually extend the season.',
  'every_2_3_days', 'Keep evenly moist — water every 2–3 days. Critical during flowering and pod set. Drought stress causes pods to be small, tough, and stringy. Avoid wetting the foliage to reduce fungal disease.',
  6.0, 7.5, '60% potting mix, 25% compost, 15% perlite. Fertile, moisture-retentive, and well-draining. pH 6.0–7.5. Peas fix their own nitrogen so avoid high-nitrogen fertilizers — they cause lush leaves and few pods. Good moisture retention is critical during pod development.', 'good',
  45, 75, 40, 75,
  true, false,
  7, 14, 55, 70,
  true, 3.0, 12.0,
  3, 9
);

-- ONIONS
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
  'onions', 'Onions', '', 'vegetable', 'annual',
  'Patient and rewarding — the kitchen garden staple',
  'Onions are slow-growing but completely worth the wait. Start from sets (small bulbs) rather than seed for the best results — sets are faster, easier, and more reliable. Day length triggers bulb formation, so choose short-day or long-day varieties based on your latitude. The green tops are edible as scallions while you wait for the bulb to form.',
  'moderate',
  'full', 6, 8, 'Full sun, 6–8 hours minimum. Sun is critical for bulb development — shaded onions produce thin, poorly formed bulbs. The more sun, the better.',
  'weekly', 'Consistent moisture until the tops begin to fall over — then stop watering to allow the outer skin to cure. Irregular watering causes split or misshapen bulbs.',
  6.0, 7.0, '65% potting mix, 25% compost, 10% perlite. Loose, fertile, and well-draining. pH 6.0–7.0. Onions have shallow roots but need loose soil to form proper bulbs. Compacted soil restricts bulb expansion. Rich compost encourages strong tops which fuel bulb development.', 'good',
  50, 75, 45, 85,
  true, false,
  7, 14, 90, 120,
  true, 3.0, 10.0,
  3, 9
);

-- GARLIC
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
  'garlic', 'Garlic', '', 'vegetable', 'perennial',
  'Plant in autumn, harvest in summer — almost no effort',
  'Garlic is one of the most rewarding crops to grow: plant cloves in autumn, mulch them, and largely ignore them until summer. Hardneck varieties are more flavorful and produce scapes (edible curled flower stalks) in spring as a bonus harvest. Softneck varieties store longer. Fresh homegrown garlic has an intensity that store-bought cannot match.',
  'easy',
  'full', 6, 8, 'Full sun, 6–8 hours. Shaded garlic produces small, poorly developed bulbs. South or west-facing placement is ideal.',
  'weekly', 'Water every 7–10 days during active growth. Stop watering completely when the lower third of leaves turn yellow — this signals the bulb is maturing. Wet soil during curing causes rot.',
  6.0, 7.0, '60% potting mix, 30% compost, 10% perlite. Rich, loose, and well-draining. pH 6.0–7.0. Deep pots (at least 8 inches) allow cloves to push down while the bulb expands upward. Rich compost provides the nutrients for large clove development without the moisture retention that causes rot.', 'good',
  32, 50, 40, 85,
  true, false,
  14, 21, 240, 270,
  true, 2.0, 8.0,
  3, 9
);

-- BEETS
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
  'beets', 'Beets', '', 'vegetable', 'annual',
  'Two crops in one — root and greens both edible',
  'Beets are excellent value: both the root and the leafy tops are edible and nutritious. They are a cool-season crop that tolerates light frost, making them ideal for spring and fall gardens. Each beet "seed" is actually a cluster of 2–3 seeds, so thinning is essential for proper root development. Baby beets can be harvested small; leave others to grow full size.',
  'easy',
  'partial', 4, 6, 'Partial to full sun — grows well in 4–6 hours. More shade-tolerant than most root vegetables. In hot climates, partial shade in summer extends the season and prevents bolting.',
  'every_2_3_days', 'Keep consistently moist — water every 2–3 days. Uneven watering causes cracked, woody roots. The soil should never completely dry out during root development.',
  6.0, 7.0, '65% potting mix, 25% compost, 10% perlite. Loose, moderately fertile, and well-draining. pH 6.0–7.0. Loose, stone-free soil is essential for straight, round roots. Rocky or compacted soil causes deformed beets. Deep containers (10–12 inches) allow full root development.', 'good',
  40, 70, 40, 75,
  true, false,
  5, 10, 50, 70,
  true, 1.0, 10.0,
  3, 10
);

-- CABBAGE
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
  'cabbage', 'Cabbage', '', 'vegetable', 'annual',
  'Hardy brassica — frost improves the flavor',
  'Cabbage is a cool-season brassica that actually tastes better after a light frost, which converts starches to sugars. It is one of the most cold-hardy vegetables and can be grown through winter in mild climates. Compact varieties like Gonzales or Pixie are excellent for containers and raised beds. Cover with netting to protect against cabbage white butterfly caterpillars.',
  'moderate',
  'full', 6, 8, 'Full sun, 6–8 hours. Partial shade causes loose, leafy heads that never firm up. South-facing placement maximizes light in the short growing season.',
  'every_2_3_days', 'Consistent moisture is essential — water every 2–3 days. Irregular watering causes heads to split open, ruining the harvest. Reduce watering only once the head feels firm and dense.',
  6.0, 7.5, '65% potting mix, 25% compost, 10% perlite. Rich, moisture-retentive, and well-draining. pH 6.0–7.5. Cabbage is a heavy feeder — generous compost and consistent fertility is critical for tight, dense heads. Poor soil produces loose, leafy, disappointing cabbage.', 'moderate',
  45, 75, 45, 75,
  true, false,
  7, 14, 70, 120,
  true, 3.0, 12.0,
  3, 9
);

-- CAULIFLOWER
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
  'cauliflower', 'Cauliflower', '', 'vegetable', 'annual',
  'Demanding but dramatic — the brassica showpiece',
  'Cauliflower is the most temperamental brassica — it requires consistent temperatures, consistent moisture, and consistent fertility. Any stress causes it to "button" (form a tiny head prematurely). That said, a perfect cauliflower head is deeply satisfying. Blanch the head by tying outer leaves over it when it reaches golf-ball size to keep it white and sweet.',
  'moderate',
  'full', 6, 8, 'Full sun, 6–8 hours. Any shade reduces head development. Consistent sun combined with cool temperatures (60–70°F) produces the best, densest heads.',
  'every_2_3_days', 'Consistent, even moisture — water every 2–3 days without fail. Cauliflower reacts to stress faster than any other brassica. Drought causes immediate buttoning (tiny premature heads) that cannot be reversed.',
  6.0, 7.0, '65% potting mix, 25% compost, 10% perlite. Rich, moisture-retentive, and well-draining. pH 6.0–7.0. Cauliflower is the hungriest brassica. Start with well-amended, compost-rich soil and side-dress with compost again midseason. Nutrient deficiency causes leafy, open heads.', 'moderate',
  45, 75, 45, 70,
  true, false,
  7, 10, 80, 100,
  true, 3.0, 12.0,
  3, 9
);

-- EGGPLANT
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
  'eggplant', 'Eggplant', '', 'vegetable', 'annual',
  'Heat-loving and prolific — Mediterranean garden staple',
  'Eggplant thrives in heat and produces abundantly once temperatures are consistently warm. It is closely related to peppers and tomatoes and shares their care requirements. Compact varieties like Fairy Tale or Patio Baby are well-suited to containers. Harvest fruits young and glossy — dull skin signals over-ripeness and a bitter, seedy interior.',
  'moderate',
  'full', 8, 10, 'Full sun, 8–10 hours. One of the most sun-demanding vegetables. Insufficient sun causes slow growth and very few fruits. Heat reflected from walls and paving actually benefits eggplant.',
  'every_2_3_days', 'Deep, consistent watering every 2–3 days. Drought stress causes the plant to drop flowers and abort developing fruits. Mulch the soil surface to retain moisture and regulate temperature.',
  5.8, 6.5, '60% potting mix, 25% compost, 15% perlite. Rich, well-draining, and moisture-retentive. pH 5.8–6.5. Eggplant is a heavy feeder — start rich and fertilize every 2–3 weeks during fruiting. Warm soil temperature is as important as air temperature; black containers absorb heat and accelerate fruit production.', 'good',
  70, 85, 65, 95,
  false, true,
  10, 14, 65, 85,
  true, 5.0, 14.0,
  4, 11
);

-- BUTTERNUT SQUASH
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
  'butternut_squash', 'Butternut Squash', '', 'vegetable', 'annual',
  'Sprawling and prolific — winter storage gold',
  'Butternut squash is vigorous and productive, though it needs space to sprawl or a strong trellis to climb vertically. Each plant can produce 4–6 large fruits that store through winter. Bush varieties like Bush Butternut are more compact and suited to raised beds. Harvest when the skin turns a deep tan color and resists scratching — the vine stem should be dry and corky.',
  'moderate',
  'full', 6, 8, 'Full sun, 6–8 hours. Needs consistent sun throughout the day for good fruit set and development. Shade causes poor pollination and small, underdeveloped fruits.',
  'weekly', 'Deep watering once a week — squash has deep roots and prefers thorough soaking over frequent shallow watering. Reduce water as fruits approach maturity to concentrate flavor and improve storage.',
  6.0, 7.0, '60% potting mix, 30% compost, 10% perlite. Rich, deeply fertile, and well-draining. pH 6.0–7.0. Butternut squash is one of the hungriest vegetables — start with the richest soil possible and top-dress with compost monthly. Poor fertility causes small, poorly formed fruit.', 'good',
  60, 85, 60, 90,
  false, true,
  7, 14, 95, 110,
  false, 5.0, 18.0,
  3, 10
);

-- ARUGULA
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
  'arugula', 'Arugula', '', 'vegetable', 'annual',
  'Peppery and fast — ready in under four weeks',
  'Arugula is one of the fastest crops you can grow — baby leaves are ready in just 21 days from seed. It thrives in cool weather and is perfect for succession sowing: plant a small batch every two weeks from early spring through autumn for a continuous harvest. In summer heat it bolts quickly and turns bitter, but the flowers are also edible and peppery.',
  'easy',
  'partial', 3, 6, 'Partial sun — thrives in 3–6 hours. One of the most shade-tolerant edible plants. In summer, shade actually delays bolting and improves leaf quality significantly.',
  'every_2_3_days', 'Keep consistently moist — water every 2–3 days. Shallow roots dry out quickly in containers. Consistent moisture slows bolting in warm weather.',
  6.0, 7.0, '60% potting mix, 25% compost, 15% perlite. Moderately fertile, moisture-retentive, and well-draining. pH 6.0–7.0. Arugula is not demanding but produces larger, better-flavored leaves in compost-rich soil. Shallow containers work fine — roots stay near the surface.', 'good',
  40, 65, 45, 75,
  true, false,
  5, 7, 21, 40,
  true, 0.5, 6.0,
  3, 9
);

-- LEEKS
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
  'leeks', 'Leeks', '', 'vegetable', 'biennial',
  'Slow, elegant, and frost-hardy all winter long',
  'Leeks are among the most cold-hardy vegetables — they stand in the ground through heavy frost and are often harvested after the first snow. They take a long time to grow but require very little attention. Earthing up (mounding soil around the base) blanches the stems white and extends the edible portion. Start from seed indoors in late winter for the best results.',
  'moderate',
  'full', 6, 8, 'Full sun, 6–8 hours. Shade produces thin, spindly leeks with minimal edible stem development.',
  'weekly', 'Water deeply once a week. More drought tolerant than most vegetables once established. Consistent moisture during rapid growth phases improves stem girth and quality.',
  6.0, 7.0, '65% potting mix, 25% compost, 10% perlite. Fertile, moisture-retentive, and well-draining. pH 6.0–7.0. Deep containers (at least 12 inches) allow for earthing up — the technique of mounding soil around the stem to blanch it. Rich fertility produces wide, substantial stems.', 'good',
  50, 75, 40, 80,
  true, false,
  14, 21, 120, 150,
  true, 3.0, 12.0,
  3, 9
);

-- BRUSSELS SPROUTS
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
  'brussels_sprouts', 'Brussels Sprouts', '', 'vegetable', 'annual',
  'Frost-sweetened — worth the long wait',
  'Brussels sprouts taste significantly better after a hard frost, which converts their starches to sugars and removes bitterness. They are a long-season crop, started in early summer for autumn and winter harvest. Remove lower yellowing leaves as they grow and remove the growing tip in late summer to direct energy into the sprouts. Stake against strong winds.',
  'moderate',
  'full', 6, 8, 'Full sun, 6–8 hours. Consistent sun throughout the growing season is required for dense, tight sprouts. Shade causes loose, open sprouts.',
  'every_2_3_days', 'Deep, consistent moisture — water every 2–3 days. Consistent watering prevents loose or "blown" sprouts. The long growing season demands sustained moisture through summer heat.',
  6.0, 7.5, '65% potting mix, 25% compost, 10% perlite. Rich, moisture-retentive, and firm. pH 6.0–7.5. Brussels sprouts are heavy feeders over a long season — start with abundant compost and side-dress monthly. Firm, dense soil anchors the tall stems against wind.', 'moderate',
  45, 75, 40, 75,
  true, false,
  5, 10, 90, 110,
  false, 3.0, 12.0,
  3, 9
);

-- BOK CHOY
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
  'bok_choy', 'Bok Choy', '', 'vegetable', 'annual',
  'Quick, mild, and versatile — the cool-season workhorse',
  'Bok choy is fast, mild-flavored, and extraordinarily versatile in the kitchen. Baby bok choy varieties are ready in just 30 days and are perfect for container growing. It is a cool-season crop that bolts in heat, so grow it in spring and fall. Harvest the whole head when it reaches desired size, or take outer leaves continuously for a cut-and-come-again harvest.',
  'easy',
  'partial', 3, 6, 'Partial to full sun — 3–6 hours works well. One of the most productive vegetables in lower light. In spring and fall, full sun is beneficial; in summer, shade delays bolting.',
  'every_2_3_days', 'Keep consistently moist — water every 2–3 days. Shallow roots in containers dry out quickly. Drought stress causes immediate bolting in warm weather.',
  6.0, 7.5, '60% potting mix, 30% compost, 10% perlite. Rich, moisture-retentive, and well-draining. pH 6.0–7.5. Fast growth requires readily available nutrients — well-amended compost-rich soil eliminates the need for additional fertilizer during the short growing period.', 'good',
  50, 70, 45, 75,
  true, false,
  4, 7, 30, 50,
  true, 1.0, 8.0,
  3, 9
);

-- COLLARD GREENS
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
  'collard_greens', 'Collard Greens', '', 'vegetable', 'biennial',
  'The most cold-hardy leafy green — harvest all winter',
  'Collard greens are among the toughest, most productive vegetables you can grow. They tolerate summer heat better than most brassicas and survive hard frosts, providing harvests across nearly the entire year. Flavor improves dramatically after frost exposure. Harvest outer leaves continuously from the bottom up — the plant keeps producing from the center for months.',
  'easy',
  'full', 6, 8, 'Full sun, 6–8 hours. More heat-tolerant than other brassicas but still prefers cooler temperatures. Produces better quality leaves in full sun.',
  'weekly', 'Water deeply once a week. More drought tolerant than most brassicas but consistent moisture produces larger, more tender leaves. Reduce watering in winter.',
  6.0, 7.5, '60% potting mix, 25% compost, 15% perlite. Moderately fertile, moisture-retentive, and well-draining. pH 6.0–7.5. Collards are adaptable to a range of soil conditions but produce their best in compost-rich, well-amended soil. Less demanding than cabbage or cauliflower.', 'good',
  55, 75, 40, 85,
  true, true,
  5, 10, 60, 80,
  true, 2.0, 10.0,
  6, 10
);

-- SWEET CORN
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
  'sweet_corn', 'Sweet Corn', '', 'vegetable', 'annual',
  'Wind-pollinated and sun-hungry — grow in blocks',
  'Sweet corn is wind-pollinated, meaning it must be grown in blocks (at least 4×4 plants) rather than rows for reliable pollination. Miniature varieties like Sweet Painted Mountain or mini corn types work in large containers. Corn is a heavy feeder and heavy drinker — do not underestimate its resource needs. Harvest when silks turn brown and a kernel releases milky juice when pressed.',
  'moderate',
  'full', 8, 10, 'Full sun, 8–10 hours. One of the most light-demanding crops. Shaded corn produces poorly filled ears and tall, weak stalks. Plant in a location with no afternoon shade.',
  'every_2_3_days', 'Heavy water needs — water every 2–3 days, deeply. Critical during tasseling and silk emergence. Drought stress at pollination causes gaps and poorly filled ears. Mulch heavily to retain moisture.',
  5.8, 7.0, '55% potting mix, 35% compost, 10% perlite. Very rich, moisture-retentive, and well-draining. pH 5.8–7.0. Corn is the heaviest feeder in the vegetable garden. Start with the richest mix possible and fertilize with a balanced fertilizer every 3 weeks. Poor nutrition is immediately visible in pale, yellow-striped leaves.', 'good',
  55, 85, 60, 95,
  false, true,
  7, 14, 60, 90,
  false, 5.0, 18.0,
  3, 10
);

-- ============================================================
-- HERBS
-- ============================================================

-- CHAMOMILE
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
  'chamomile', 'Chamomile', '', 'herb', 'annual',
  'Apple-scented daisy — self-seeding tea herb',
  'German chamomile is a cheerful, apple-scented herb that makes the most soothing of herbal teas. It is easy to grow, self-seeds prolifically, and attracts a tremendous variety of beneficial insects when in flower. Harvest the flowers in the morning when fully open and dry them for tea. Once established in your garden, chamomile essentially grows itself through self-seeding.',
  'easy',
  'full', 6, 8, 'Full sun, 6–8 hours. Tolerates light shade but flowers more prolifically in full sun. Sun also concentrates the essential oils responsible for the characteristic apple fragrance.',
  'weekly', 'Drought tolerant once established — water deeply once a week. Allow soil to dry between waterings. Overwatering causes root rot and stunted, yellowing plants.',
  5.6, 7.5, '55% potting mix, 30% perlite, 15% coarse sand. Lean, well-draining, and low fertility. pH 5.6–7.5. Chamomile thrives in poor, gritty soil — like many aromatic herbs, lean conditions concentrate essential oils and encourage flowering. Over-fertile soil produces lush foliage but few flowers.', 'excellent',
  55, 68, 45, 85,
  false, false,
  7, 14, 60, 90,
  true, 1.0, 8.0,
  2, 9
);

-- BORAGE
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
  'borage', 'Borage', '', 'herb', 'annual',
  'Edible blue stars — bees and gardeners both love it',
  'Borage produces beautiful star-shaped blue flowers that are edible and taste mildly of cucumber. It is one of the best pollinator-attracting plants you can grow, drawing bees in extraordinary numbers. Both flowers and young leaves are edible raw. Borage is a vigorous self-seeder and will reliably return year after year once established. Excellent companion plant for tomatoes and strawberries.',
  'easy',
  'full', 6, 8, 'Full sun, 6–8 hours. Tolerates partial shade. Grows well in a wide range of light conditions — one of the most adaptable herb garden plants.',
  'weekly', 'Drought tolerant — water once a week. Very forgiving of missed waterings once established. Overwatering in containers causes root rot.',
  6.0, 7.0, '50% potting mix, 35% perlite, 15% compost. Lean, well-draining. pH 6.0–7.0. Borage prefers lean to moderately fertile soil. Like nasturtiums, poor soil encourages flowering over leafy growth. Self-seeds prolifically — leave spent plants in place to establish a self-renewing patch.', 'good',
  60, 75, 55, 85,
  false, false,
  7, 14, 56, 70,
  true, 1.0, 8.0,
  2, 11
);

-- MARJORAM
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
  'marjoram', 'Marjoram', '', 'herb', 'annual',
  'Sweeter cousin of oregano — delicate and aromatic',
  'Sweet marjoram is more delicate and sweeter in flavor than oregano, with a warm, slightly floral aroma. It is an essential herb in Mediterranean and Middle Eastern cooking. Like oregano, it thrives on heat, full sun, and lean soil. Harvest frequently before flowering for the most concentrated flavor. Marjoram is treated as an annual in cold climates but is perennial in frost-free zones.',
  'easy',
  'full', 6, 8, 'Full sun, 6–8 hours. Maximum sun equals maximum flavor and essential oil content. A warm, sheltered position with reflected heat from a wall is ideal.',
  'weekly', 'Drought tolerant — water once a week and allow soil to dry between waterings. Very similar to oregano in its preference for dry, lean conditions. Overwatering dilutes flavor.',
  6.0, 8.0, '50% potting mix, 35% perlite, 15% coarse sand. Lean, gritty, and fast-draining. pH 6.0–8.0. Same soil preferences as oregano — lean, poor, and extremely well-draining. Rich soil produces lush, weak growth with minimal essential oil and poor flavor. Grow in terracotta for the best drainage.', 'excellent',
  60, 70, 55, 90,
  false, true,
  7, 14, 60, 90,
  true, 0.5, 6.0,
  6, 10
);

-- TARRAGON
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
  'tarragon', 'Tarragon', '', 'herb', 'perennial',
  'French cuisine essential — anise-flavored and refined',
  'French tarragon is an essential fine herb with a distinctive anise flavor and extraordinary culinary versatility. Always buy French tarragon (not Russian) as a plant from a nursery — it cannot be grown from seed. Russian tarragon grows from seed but has almost no flavor. Once established, French tarragon is reliably perennial and requires minimal care. It goes dormant in winter and regrows vigorously each spring.',
  'easy',
  'full', 6, 8, 'Full sun to partial shade — 6–8 hours ideal but tolerates 4 hours. More shade-tolerant than most Mediterranean herbs. Morning sun with some afternoon shade works well.',
  'weekly', 'Allow to dry between waterings — water once a week. More drought tolerant than its delicate appearance suggests. The primary killer is wet, poorly drained soil causing root rot in winter.',
  6.0, 7.5, '55% potting mix, 30% perlite, 15% coarse sand. Lean, well-draining, and low fertility. pH 6.0–7.5. French tarragon grows best in lean, well-draining soil. Rich soil causes lush, rank growth with weaker flavor. Excellent drainage through winter dormancy is critical — wet, cold roots cause crown rot that kills the plant.', 'excellent',
  55, 70, 50, 80,
  true, false,
  21, 30, 60, 90,
  true, 1.0, 8.0,
  4, 8
);

-- ============================================================
-- FLOWERS
-- ============================================================

-- CALENDULA
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
  'calendula', 'Calendula', '', 'flower', 'annual',
  'Edible, medicinal, and practically indestructible',
  'Calendula is one of the most useful plants in any garden. The petals are edible and have a saffron-like quality, the flowers have medicinal skin-soothing properties, and it blooms prolifically from spring through frost. It attracts beneficial insects, tolerates cold and light frost, and self-seeds reliably. Deadhead spent blooms to keep flowering going all season. Extraordinarily easy to grow.',
  'easy',
  'full', 6, 8, 'Full sun, 6–8 hours. Blooms most heavily in full sun and cool temperatures. Tolerates light shade better than most flowering annuals.',
  'weekly', 'Moderate — water once a week. Drought tolerant once established. Overwatering causes powdery mildew, the most common calendula problem. Allow soil surface to dry between waterings.',
  5.5, 7.0, '55% potting mix, 30% perlite, 15% compost. Lean to moderately fertile, well-draining. pH 5.5–7.0. Calendula tolerates poor soil remarkably well. Like marigolds, lean conditions encourage flowering over leafy growth. Works well in almost any container, even without extensive soil amendment.', 'good',
  50, 65, 45, 75,
  true, false,
  5, 14, 45, 60,
  true, 1.0, 8.0,
  2, 10
);

-- ZINNIA
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
  'zinnia', 'Zinnia', '', 'flower', 'annual',
  'Summer''s best cut flower — blooms right through frost',
  'Zinnias are the ultimate heat-loving annual — the more sun and warmth they get, the more prolifically they bloom. They are fast-growing, easy to direct sow, and the more you cut them, the more flowers they produce. Compact varieties like Profusion or Thumbelina are perfect for containers. Excellent pollinator plant and outstanding as a cut flower. Direct sow after last frost when soil is warm.',
  'easy',
  'full', 6, 8, 'Full sun, 6–8 hours minimum. Zinnias love heat and sun — they sulk in shade and cool weather. The hottest, sunniest spot in the garden produces the best and most flowers.',
  'weekly', 'Water deeply once a week, at the base of the plant. Avoid wetting the foliage — zinnias are prone to powdery mildew and wet leaves accelerate it significantly. Drought tolerant once established.',
  5.5, 7.5, '55% potting mix, 30% perlite, 15% compost. Moderately fertile, well-draining. pH 5.5–7.5. Zinnias are adaptable to a range of soil conditions but perform best in moderately fertile, well-draining mix. Rich soil produces tall, floppy plants — lean soil keeps compact varieties compact.', 'good',
  65, 85, 60, 95,
  false, true,
  5, 10, 45, 60,
  true, 1.0, 8.0,
  2, 11
);

-- ============================================================
-- PLANT TIPS
-- ============================================================

-- Peas tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Plant as soon as the ground can be worked in spring — peas need cool soil and will not germinate in heat', 'seasonal', 1 FROM plants WHERE slug = 'peas';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Choose bush varieties for containers — no trellis needed and they stay compact at 18–24 inches', 'container', 2 FROM plants WHERE slug = 'peas';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Pick pods daily once harvesting begins — pods left on the vine signal the plant to stop producing', 'harvesting', 3 FROM plants WHERE slug = 'peas';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Do not add nitrogen fertilizer — peas fix their own nitrogen from the air via root bacteria', 'soil', 4 FROM plants WHERE slug = 'peas';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Pre-soak seeds overnight in water before planting to speed up germination', 'general', 5 FROM plants WHERE slug = 'peas';

-- Onions tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Start from sets (small bulbs) rather than seed — sets are faster, easier, and more reliable for home gardeners', 'general', 1 FROM plants WHERE slug = 'onions';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Choose the right type for your latitude — short-day varieties for the south, long-day for the north', 'general', 2 FROM plants WHERE slug = 'onions';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Stop watering when tops begin to fall over and yellow — this is the curing signal before harvest', 'watering', 3 FROM plants WHERE slug = 'onions';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest green tops at any point as scallions while the main bulb develops', 'harvesting', 4 FROM plants WHERE slug = 'onions';

-- Garlic tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Plant in autumn, 4–6 weeks before the ground freezes — this cold period is essential for bulb development', 'seasonal', 1 FROM plants WHERE slug = 'garlic';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest hardneck scapes in early summer — removing them directs energy into the bulb and they are delicious', 'harvesting', 2 FROM plants WHERE slug = 'garlic';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest when the bottom third of leaves are yellow-brown — earlier means small cloves, later means split skins', 'harvesting', 3 FROM plants WHERE slug = 'garlic';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Cure harvested bulbs in a warm, airy spot for 3–4 weeks before storing for months', 'harvesting', 4 FROM plants WHERE slug = 'garlic';

-- Beets tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Each beet seed is a cluster of 2–3 seeds — thin ruthlessly to 3 inches apart after germination', 'general', 1 FROM plants WHERE slug = 'beets';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Baby beets at golf-ball size are the sweetest and most tender — do not wait for full size', 'harvesting', 2 FROM plants WHERE slug = 'beets';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Beet greens are edible and highly nutritious — harvest young leaves throughout the growing season', 'harvesting', 3 FROM plants WHERE slug = 'beets';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Roast whole unpeeled in the oven — skins slip off easily after cooking and flavor is far superior to boiled', 'general', 4 FROM plants WHERE slug = 'beets';

-- Cabbage tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Cover with fine mesh netting immediately after planting — cabbage white butterflies will lay eggs on unprotected plants', 'pest', 1 FROM plants WHERE slug = 'cabbage';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Light frost dramatically improves flavor — the sugars increase and bitterness fades after cold nights', 'seasonal', 2 FROM plants WHERE slug = 'cabbage';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest the moment it feels solid and firm — waiting too long causes heads to split open and bolt', 'harvesting', 3 FROM plants WHERE slug = 'cabbage';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'After harvesting the main head, leave the stump in place — multiple small secondary heads will form', 'harvesting', 4 FROM plants WHERE slug = 'cabbage';

-- Cauliflower tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Blanch the head: when it reaches golf-ball size, tie outer leaves over it with string to keep it white and sweet', 'general', 1 FROM plants WHERE slug = 'cauliflower';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Any stress — drought, heat, or nutrient deficiency — causes immediate buttoning that cannot be reversed', 'general', 2 FROM plants WHERE slug = 'cauliflower';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Colored varieties (purple, orange, green Romanesco) are more forgiving and visually stunning', 'general', 3 FROM plants WHERE slug = 'cauliflower';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest when curds are tight and white — yellowing or ricey texture means it is past peak', 'harvesting', 4 FROM plants WHERE slug = 'cauliflower';

-- Eggplant tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Do not plant out until nighttime temperatures are reliably above 55°F — cold stunts eggplant permanently', 'seasonal', 1 FROM plants WHERE slug = 'eggplant';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest young and glossy — dull skin signals overripe, bitter, seedy fruits past their best', 'harvesting', 2 FROM plants WHERE slug = 'eggplant';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Use scissors or pruning shears to harvest — the stem is tough and twisting fruits damages the plant', 'harvesting', 3 FROM plants WHERE slug = 'eggplant';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Black containers absorb heat and keep soil warm — eggplant roots love warmth and produce more in warm soil', 'container', 4 FROM plants WHERE slug = 'eggplant';

-- Butternut squash tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Train vines vertically on a trellis to save ground space — use a sling (old pantyhose) to support heavy fruits', 'general', 1 FROM plants WHERE slug = 'butternut_squash';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Hand-pollinate if bee activity is low — transfer pollen from male to female flowers using a small paintbrush', 'general', 2 FROM plants WHERE slug = 'butternut_squash';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest when the entire fruit is deep tan, the stem is corky and dry, and the skin cannot be dented with a fingernail', 'harvesting', 3 FROM plants WHERE slug = 'butternut_squash';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Cure in a warm spot for 10–14 days after harvest — this hardens the skin and extends storage to 3–6 months', 'harvesting', 4 FROM plants WHERE slug = 'butternut_squash';

-- Arugula tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Succession sow every 2 weeks from early spring through autumn for a continuous harvest all season', 'general', 1 FROM plants WHERE slug = 'arugula';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest baby leaves at 2–3 inches for mild flavor; larger leaves have more intense peppery heat', 'harvesting', 2 FROM plants WHERE slug = 'arugula';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Provide shade in summer to delay bolting — even a nearby taller plant can extend the harvest', 'seasonal', 3 FROM plants WHERE slug = 'arugula';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'The flowers are edible and peppery — let a plant bolt intentionally for a continuous supply of edible blooms', 'harvesting', 4 FROM plants WHERE slug = 'arugula';

-- Leeks tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Earth up (mound soil around the base) every few weeks to blanch the stem white and extend the edible portion', 'general', 1 FROM plants WHERE slug = 'leeks';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Leave in the ground through winter — leeks survive hard frosts and are one of the few vegetables truly improved by cold', 'seasonal', 2 FROM plants WHERE slug = 'leeks';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Start from seed indoors in late winter — transplant out at pencil thickness for the earliest and best results', 'general', 3 FROM plants WHERE slug = 'leeks';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest by twisting and pulling upward — or use a fork to loosen the soil around the base first', 'harvesting', 4 FROM plants WHERE slug = 'leeks';

-- Brussels sprouts tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Remove the growing tip (top 2 inches) in late summer — this directs energy into the sprouts and brings them to maturity before frost', 'pruning', 1 FROM plants WHERE slug = 'brussels_sprouts';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest after the first hard frost — cold converts starches to sugars and removes the bitterness', 'seasonal', 2 FROM plants WHERE slug = 'brussels_sprouts';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Remove yellowing lower leaves as they appear — they harbor pests and reduce airflow around the sprouts', 'pruning', 3 FROM plants WHERE slug = 'brussels_sprouts';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest from the bottom of the stalk upward — lower sprouts mature first and should not be left to over-develop', 'harvesting', 4 FROM plants WHERE slug = 'brussels_sprouts';

-- Bok choy tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Baby bok choy varieties are ready in just 30 days — the fastest brassica you can grow', 'general', 1 FROM plants WHERE slug = 'bok_choy';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest the whole head at the base, or take outer leaves continuously for a cut-and-come-again harvest', 'harvesting', 2 FROM plants WHERE slug = 'bok_choy';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Grow in spring and fall — summer heat causes immediate bolting and bitter flavor', 'seasonal', 3 FROM plants WHERE slug = 'bok_choy';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Excellent for succession sowing — plant a new batch every 3 weeks for continuous harvests across the season', 'general', 4 FROM plants WHERE slug = 'bok_choy';

-- Collard greens tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest outer leaves from the bottom up continuously — the plant keeps producing from the center for months', 'harvesting', 1 FROM plants WHERE slug = 'collard_greens';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Flavor significantly improves after frost — cold sweetens the leaves and reduces any bitterness', 'seasonal', 2 FROM plants WHERE slug = 'collard_greens';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'One of the most productive containers plants per square foot — a single plant can provide months of harvests', 'container', 3 FROM plants WHERE slug = 'collard_greens';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Massage tougher leaves with olive oil and salt before eating raw — transforms texture completely', 'general', 4 FROM plants WHERE slug = 'collard_greens';

-- Sweet corn tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Grow in blocks of at least 4×4 plants, not rows — corn is wind-pollinated and needs mass planting for full ears', 'general', 1 FROM plants WHERE slug = 'sweet_corn';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Cook or eat immediately after picking — sugars convert to starch within hours of harvest at room temperature', 'harvesting', 2 FROM plants WHERE slug = 'sweet_corn';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest when silks are brown and dry, and a kernel releases milky liquid when pressed with a fingernail', 'harvesting', 3 FROM plants WHERE slug = 'sweet_corn';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Miniature varieties work in large containers — look for "mini corn" or "baby corn" container-specific cultivars', 'container', 4 FROM plants WHERE slug = 'sweet_corn';

-- Chamomile tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest flowers in the morning when fully open — essential oil content is highest at this time of day', 'harvesting', 1 FROM plants WHERE slug = 'chamomile';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Let some flowers set seed at season end — chamomile self-sows prolifically and will return reliably each year', 'seasonal', 2 FROM plants WHERE slug = 'chamomile';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Dry flowers on a screen in a warm, shaded spot — stored in an airtight jar they last 12 months', 'general', 3 FROM plants WHERE slug = 'chamomile';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Grow alongside vegetables — chamomile attracts hoverflies and parasitic wasps that control aphids and caterpillars', 'general', 4 FROM plants WHERE slug = 'chamomile';

-- Borage tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Direct sow only — borage has a deep taproot and strongly dislikes transplanting', 'general', 1 FROM plants WHERE slug = 'borage';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Freeze individual flowers in ice cubes for an elegant garnish in drinks', 'general', 2 FROM plants WHERE slug = 'borage';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Plant near tomatoes and strawberries — borage is said to repel tomato hornworm and improve nearby fruit flavor', 'general', 3 FROM plants WHERE slug = 'borage';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Leave spent plants in place at season end — they will self-seed and emerge reliably the following spring', 'seasonal', 4 FROM plants WHERE slug = 'borage';

-- Marjoram tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest just before flowering for peak flavor — the essential oils peak at this exact moment', 'harvesting', 1 FROM plants WHERE slug = 'marjoram';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Use fresh in cooking — marjoram''s delicate flavor fades with heat more than oregano, so add at the end of cooking', 'general', 2 FROM plants WHERE slug = 'marjoram';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Pinch tips regularly to keep the plant bushy and delay flowering as long as possible', 'pruning', 3 FROM plants WHERE slug = 'marjoram';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Grow in terracotta pots — the porous material provides the drainage and warmth marjoram loves', 'container', 4 FROM plants WHERE slug = 'marjoram';

-- Tarragon tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Always buy French tarragon as a plant from a nursery — Russian tarragon sold as seed has almost no flavor', 'general', 1 FROM plants WHERE slug = 'tarragon';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Goes dormant in winter — do not panic when it disappears. It will regrow vigorously from the roots each spring', 'seasonal', 2 FROM plants WHERE slug = 'tarragon';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest young stems throughout summer and preserve in white wine vinegar — the flavored vinegar is extraordinary', 'harvesting', 3 FROM plants WHERE slug = 'tarragon';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Divide the root clump every 3 years to keep the plant vigorous — old clumps lose flavor and productivity', 'general', 4 FROM plants WHERE slug = 'tarragon';

-- Calendula tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Deadhead spent blooms continuously to maintain flowering — stop deadheading in autumn to allow self-seeding', 'pruning', 1 FROM plants WHERE slug = 'calendula';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Petals are edible — scatter over salads for color or steep in oil for a skin-soothing infused oil', 'general', 2 FROM plants WHERE slug = 'calendula';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Attracts hoverflies and parasitic wasps that control aphids, caterpillars, and other vegetable pests', 'general', 3 FROM plants WHERE slug = 'calendula';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Tolerates light frost — one of the first flowers to plant in spring and the last to finish in autumn', 'seasonal', 4 FROM plants WHERE slug = 'calendula';

-- Zinnia tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Direct sow after last frost when soil is warm — zinnias sulk if transplanted and grow fast from seed anyway', 'general', 1 FROM plants WHERE slug = 'zinnia';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'The more you cut, the more they bloom — harvest flowers regularly as a cut flower to trigger continuous production', 'harvesting', 2 FROM plants WHERE slug = 'zinnia';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Water at the base only — wet foliage causes powdery mildew that disfigures plants rapidly in humid conditions', 'watering', 3 FROM plants WHERE slug = 'zinnia';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Choose Profusion or Zahara series for compact container growing — these stay under 18 inches and need no deadheading', 'container', 4 FROM plants WHERE slug = 'zinnia';

-- ============================================================
-- COMPANION PLANTING
-- ============================================================

-- Peas + Carrots (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Classic pairing — peas fix nitrogen that benefits the carrots. Both prefer cool weather and can be interplanted in spring.'
FROM plants p1, plants p2 WHERE p1.slug = 'peas' AND p2.slug = 'carrots';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Peas provide nitrogen fixation that benefits neighboring carrots. Both thrive in cool spring conditions.'
FROM plants p1, plants p2 WHERE p1.slug = 'carrots' AND p2.slug = 'peas';

-- Peas + Radish (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Radishes repel pea weevils and the peas fix nitrogen for the radishes. Fast radishes can be harvested before peas need the space.'
FROM plants p1, plants p2 WHERE p1.slug = 'peas' AND p2.slug = 'radish';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Plant together — peas fix nitrogen and radishes repel pea weevils. Radishes mature before peas need the space.'
FROM plants p1, plants p2 WHERE p1.slug = 'radish' AND p2.slug = 'peas';

-- Garlic + Tomatoes (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Garlic''s sulfur compounds repel aphids, spider mites, and other soft-bodied pests that attack tomatoes.'
FROM plants p1, plants p2 WHERE p1.slug = 'garlic' AND p2.slug = 'tomatoes';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Plant garlic at the base of tomatoes — sulfur compounds deter aphids and spider mites significantly.'
FROM plants p1, plants p2 WHERE p1.slug = 'tomatoes' AND p2.slug = 'garlic';

-- Garlic + Roses/Lettuce (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Garlic repels aphids, the primary pest of lettuce. The scent acts as a natural deterrent throughout the season.'
FROM plants p1, plants p2 WHERE p1.slug = 'garlic' AND p2.slug = 'lettuce';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Garlic planted nearby repels aphids that cluster on lettuce, especially in spring.'
FROM plants p1, plants p2 WHERE p1.slug = 'lettuce' AND p2.slug = 'garlic';

-- Onions + Carrots (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'The classic companion pair — carrot fly is deterred by onion scent, and onion fly is deterred by carrot scent. Interplant them.'
FROM plants p1, plants p2 WHERE p1.slug = 'onions' AND p2.slug = 'carrots';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Carrots and onions are the classic companion pairing — each deters the other''s primary fly pest.'
FROM plants p1, plants p2 WHERE p1.slug = 'carrots' AND p2.slug = 'onions';

-- Beets + Lettuce (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Both cool-season crops with different root depths — beets deep, lettuce shallow. They use different soil layers without competing.'
FROM plants p1, plants p2 WHERE p1.slug = 'beets' AND p2.slug = 'lettuce';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Excellent interplanting companions — beets root deep while lettuce is shallow, no competition for resources.'
FROM plants p1, plants p2 WHERE p1.slug = 'lettuce' AND p2.slug = 'beets';

-- Cabbage + Dill (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Dill attracts parasitic wasps that control cabbage caterpillars. One of the most effective biological controls for brassicas.'
FROM plants p1, plants p2 WHERE p1.slug = 'cabbage' AND p2.slug = 'dill';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Plant dill near cabbage — its flowers attract parasitic wasps that prey on the caterpillars that devastate brassicas.'
FROM plants p1, plants p2 WHERE p1.slug = 'dill' AND p2.slug = 'cabbage';

-- Cauliflower + Marigold (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Marigolds deter cabbage white butterfly and aphids — the primary pests that destroy cauliflower crops.'
FROM plants p1, plants p2 WHERE p1.slug = 'cauliflower' AND p2.slug = 'marigold';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Marigolds protect cauliflower from cabbage moths and aphids — plant as a border around the brassica bed.'
FROM plants p1, plants p2 WHERE p1.slug = 'marigold' AND p2.slug = 'cauliflower';

-- Eggplant + Basil (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Basil repels aphids and spider mites that commonly attack eggplant. Both love heat and full sun — perfect companions.'
FROM plants p1, plants p2 WHERE p1.slug = 'eggplant' AND p2.slug = 'basil';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Basil and eggplant thrive together — same heat and sun requirements, and basil repels eggplant pests.'
FROM plants p1, plants p2 WHERE p1.slug = 'basil' AND p2.slug = 'eggplant';

-- Borage + Tomatoes (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Borage is said to repel tomato hornworm and attracts pollinators. One of the most traditional tomato companions.'
FROM plants p1, plants p2 WHERE p1.slug = 'borage' AND p2.slug = 'tomatoes';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Borage near tomatoes attracts pollinators and is traditionally claimed to improve tomato flavor and deter hornworm.'
FROM plants p1, plants p2 WHERE p1.slug = 'tomatoes' AND p2.slug = 'borage';

-- Borage + Strawberry (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'A classic pairing — borage deters pests and attracts pollinators that improve strawberry fruit set.'
FROM plants p1, plants p2 WHERE p1.slug = 'borage' AND p2.slug = 'strawberry';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Plant borage near strawberries — it attracts bees and is said to enhance fruit quality and repel pests.'
FROM plants p1, plants p2 WHERE p1.slug = 'strawberry' AND p2.slug = 'borage';

-- Chamomile + Vegetables (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Chamomile flowers attract hoverflies and parasitic wasps that control aphids and caterpillars on kale.'
FROM plants p1, plants p2 WHERE p1.slug = 'chamomile' AND p2.slug = 'kale';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Plant chamomile nearby — it draws in beneficial predatory insects that protect brassicas from common pests.'
FROM plants p1, plants p2 WHERE p1.slug = 'kale' AND p2.slug = 'chamomile';

-- Calendula + Tomatoes (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Calendula attracts aphids away from tomatoes as a trap crop and brings in beneficial insects that control pests.'
FROM plants p1, plants p2 WHERE p1.slug = 'calendula' AND p2.slug = 'tomatoes';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Plant calendula nearby — it attracts aphids away from tomatoes and draws in hoverflies that eat pest insects.'
FROM plants p1, plants p2 WHERE p1.slug = 'tomatoes' AND p2.slug = 'calendula';

-- Zinnia + Cucumber/Zucchini (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Zinnias attract butterflies and bees in large numbers — dramatically improves cucumber pollination and fruit set.'
FROM plants p1, plants p2 WHERE p1.slug = 'zinnia' AND p2.slug = 'cucumber';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Zinnias nearby bring in pollinators that help cucumbers set fruit reliably all season.'
FROM plants p1, plants p2 WHERE p1.slug = 'cucumber' AND p2.slug = 'zinnia';

-- Garlic + Fennel (harmful)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'harmful', 'Fennel''s allelopathic root secretions stunt the growth of garlic and most alliums. Keep them in separate containers.'
FROM plants p1, plants p2 WHERE p1.slug = 'garlic' AND p2.slug = 'fennel';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'harmful', 'Fennel inhibits growth in garlic and all alliums through root secretions. Grow fennel in its own isolated container.'
FROM plants p1, plants p2 WHERE p1.slug = 'fennel' AND p2.slug = 'garlic';

-- Onions + Fennel (harmful)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'harmful', 'Fennel''s allelopathic compounds stunt onion development. Always grow fennel in a dedicated, isolated container.'
FROM plants p1, plants p2 WHERE p1.slug = 'onions' AND p2.slug = 'fennel';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'harmful', 'Fennel inhibits most alliums including onions — keep separated in distinct containers at all times.'
FROM plants p1, plants p2 WHERE p1.slug = 'fennel' AND p2.slug = 'onions';

-- ============================================================
-- SPACE TYPE RECOMMENDATIONS
-- ============================================================

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Bush varieties thrive in deep balcony containers. Great spring crop for a sun-facing balcony.', '3 gallon pot (12" deep)' FROM plants WHERE slug = 'peas';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Works in medium containers. Choose short-day varieties for southern balconies, long-day for northern ones.', '3 gallon pot' FROM plants WHERE slug = 'onions';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Excellent balcony crop planted in autumn. Minimal care needed over winter.', '2 gallon pot (8" deep)' FROM plants WHERE slug = 'garlic';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Great balcony container crop — choose round or cylindrical varieties suited to container depth.', '1–2 gallon pot (10" deep)' FROM plants WHERE slug = 'beets';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Works in large balcony containers. Use compact varieties like Gonzales. Cover with netting for pest protection.', '3 gallon pot' FROM plants WHERE slug = 'cabbage';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Possible in large containers but demanding — use colored varieties which are more forgiving.', '3 gallon pot' FROM plants WHERE slug = 'cauliflower';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Excellent balcony plant — loves heat reflected from walls. Use compact Fairy Tale or Patio Baby varieties.', '5 gallon pot (14" deep)' FROM plants WHERE slug = 'eggplant';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', false, 'Butternut squash is too large and sprawling for most balconies. Needs significant horizontal or vertical space.', NULL FROM plants WHERE slug = 'butternut_squash';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Perfect balcony crop — fast, productive in small containers, and one of the most shade-tolerant edibles.', 'Window box or 0.5 gallon' FROM plants WHERE slug = 'arugula';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', false, 'Leeks need deep containers and a long season — better suited to raised beds. Not ideal for most balconies.', NULL FROM plants WHERE slug = 'leeks';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', false, 'Brussels sprouts are too tall, too slow, and need too much space for most balcony setups.', NULL FROM plants WHERE slug = 'brussels_sprouts';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Excellent balcony vegetable — baby varieties are ready in 30 days in compact containers.', '1 gallon pot (8" deep)' FROM plants WHERE slug = 'bok_choy';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Good balcony container plant — productive over a long season in a medium-deep pot.', '2–3 gallon pot (10" deep)' FROM plants WHERE slug = 'collard_greens';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', false, 'Sweet corn needs to be grown in blocks for wind pollination — impractical on most balconies.', NULL FROM plants WHERE slug = 'sweet_corn';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Perfect balcony herb — self-seeds, attracts beneficial insects, and makes great tea. Easy in small pots.', '1 gallon pot' FROM plants WHERE slug = 'chamomile';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Good balcony plant in a dedicated pot. Direct sow — do not transplant. Edible flowers are a balcony garden bonus.', '1 gallon pot' FROM plants WHERE slug = 'borage';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Excellent balcony herb in a small terracotta pot. Loves the heat reflected from walls and paving.', '0.5–1 gallon pot' FROM plants WHERE slug = 'marjoram';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Good balcony herb in a dedicated container. Goes dormant in winter but reliably regrows each spring.', '1 gallon pot' FROM plants WHERE slug = 'tarragon';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Outstanding balcony flower — compact varieties bloom all season and attract beneficial insects to nearby herbs.', '1 gallon pot' FROM plants WHERE slug = 'calendula';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Excellent balcony annual — choose compact Profusion varieties. Blooms all summer in the heat reflected from walls.', '1–2 gallon pot' FROM plants WHERE slug = 'zinnia';
