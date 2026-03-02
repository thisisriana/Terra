-- ============================================================
-- TERRA — Add more plants: flowers, herbs, vegetables, fruits
-- ============================================================

-- ============================================================
-- FLOWERS
-- ============================================================

-- MARIGOLD
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
  'marigold', 'Marigold', '🌼', 'flower', 'annual',
  'Nature''s pest repellent — cheerful and hardworking',
  'Marigolds are the garden''s best multitasker — beautiful, easy to grow, and deeply beneficial to neighboring plants. Their roots release compounds that repel soil nematodes, and their scent deters aphids and whiteflies. Plant them as borders around vegetables for season-long pest protection.',
  'easy',
  'full', 6, 8, 'Full sun, 6–8 hours. Shade causes leggy growth and far fewer blooms. South or west-facing placement is ideal.',
  'weekly', 'Moderate — water deeply once or twice a week. Drought tolerant once established. Avoid wetting the foliage to prevent powdery mildew.',
  5.8, 7.0, '60% potting mix, 25% perlite, 15% compost. Well-draining and moderately fertile. pH 5.8–7.0. Marigolds actually bloom more profusely in lean soil — too rich causes lush foliage but very few flowers. Good drainage prevents the root rot that kills them in wet conditions.', 'good',
  65, 75, 50, 95,
  false, true,
  5, 10, 50, 70,
  true, 1.0, 8.0,
  2, 11
);

-- NASTURTIUM
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
  'nasturtium', 'Nasturtium', '🌸', 'flower', 'annual',
  'Edible, easy, and a trap crop for aphids',
  'Nasturtiums are the ultimate companion plant — flowers and leaves are both edible, they attract aphids away from vegetables as a trap crop, and they self-seed prolifically. Impossibly easy to grow: direct sow seeds in poor soil, ignore them, and harvest abundantly all season.',
  'easy',
  'partial', 4, 8, 'Partial to full sun — thrives in 4–8 hours. Tolerates more shade than most flowers. In very hot climates, afternoon shade improves performance and extends flowering.',
  'weekly', 'Drought tolerant once established — water once a week. Overwatering causes lush leaves with almost no flowers. Less water is genuinely better.',
  6.0, 7.5, '50% potting mix, 35% perlite, 15% coarse sand. Lean, poor, and extremely well-draining. pH 6.0–7.5. Nasturtiums are one of the few plants that actively prefer poor soil — a rich mix causes lush vining growth with very few flowers. No extra compost, no fertilizer. The neglect is completely intentional.', 'excellent',
  55, 65, 45, 85,
  false, false,
  7, 14, 35, 60,
  true, 1.0, 8.0,
  2, 11
);

-- SUNFLOWER
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
  'sunflower', 'Sunflower', '🌻', 'flower', 'annual',
  'Pollinator magnet with edible seeds',
  'Sunflowers are fast-growing, cheerful giants that attract pollinators and produce edible seeds. Dwarf varieties like Dwarf Sunspot or Little Becka work beautifully in containers, reaching just 12–24 inches. They track the sun throughout the day, making them one of the most animated plants in any garden.',
  'easy',
  'full', 6, 8, 'Full sun, 6–8 hours minimum. Sunflowers follow the sun — south-facing placement delivers maximum growth and bloom.',
  'weekly', 'Moderate — water deeply once a week. Drought tolerant once established. Water at the base, not overhead, to prevent disease on leaves.',
  6.0, 7.5, '60% potting mix, 20% compost, 20% perlite. Fertile, well-draining, and moderately moisture-retentive. pH 6.0–7.5. Sunflowers are adaptable but perform best in a rich, well-draining mix. Dwarf varieties need containers at least 12 inches deep; standard varieties need 18 inches — the taproot drives deep.', 'good',
  65, 85, 60, 95,
  false, true,
  7, 14, 60, 80,
  true, 2.0, 12.0,
  2, 11
);

-- ============================================================
-- HERBS
-- ============================================================

-- CILANTRO
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
  'cilantro', 'Cilantro', '🌿', 'herb', 'annual',
  'Quick, cool-season herb — sow in succession',
  'Cilantro is fast and delicious but notorious for bolting in heat. The trick is embracing its short life cycle: sow a new batch every 2–3 weeks for a continuous supply. When it does bolt, the seeds (coriander) are equally useful in cooking. Both leaf and seed make this one of the most efficient container herbs.',
  'moderate',
  'partial', 4, 6, 'Partial to full sun — 4–6 hours. In hot climates, afternoon shade delays bolting significantly. Avoid intense afternoon sun in summer.',
  'every_2_3_days', 'Keep evenly moist — water every 2–3 days. Drought stress is the fastest way to trigger bolting. Shallow roots dry out quickly in containers.',
  6.0, 6.7, '60% potting mix, 25% compost, 15% perlite. Rich, moisture-retentive, and well-draining. pH 6.0–6.7. Deep containers (at least 10 inches) keep roots cool and delay bolting. The key with cilantro: succession sow every 2–3 weeks because it will bolt in heat — embrace that rhythm rather than fighting it.', 'good',
  55, 68, 50, 85,
  false, false,
  7, 14, 21, 45,
  true, 1.0, 10.0,
  2, 11
);

-- OREGANO
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
  'oregano', 'Oregano', '🌿', 'herb', 'perennial',
  'Intensely flavored Mediterranean classic',
  'Greek oregano is one of the most intensely flavored herbs you can grow — the dried version from grocery stores is a pale imitation. Like most Mediterranean herbs it thrives on neglect, poor soil, and full sun. The more heat and direct sun it receives, the more concentrated its essential oils and flavor become.',
  'easy',
  'full', 6, 8, 'Full sun, 6–8 hours minimum. Maximum sun equals maximum flavor. Shade produces floppy, flavorless stems with weak essential oil content.',
  'weekly', 'Drought tolerant once established. Water deeply once a week and allow soil to dry completely between waterings. Overwatering is the primary killer.',
  6.0, 8.0, '50% potting mix, 35% perlite, 15% coarse sand. Lean, gritty, and fast-draining. pH 6.0–8.0. Like all Mediterranean herbs, oregano thrives in poor soil — a rich mix reduces essential oil content and weakens flavor. Water must drain immediately after watering. Standing moisture causes root rot within days.', 'excellent',
  60, 70, 45, 90,
  true, true,
  8, 14, 45, 90,
  true, 0.5, 6.0,
  4, 10
);

-- LEMON BALM
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
  'lemon_balm', 'Lemon Balm', '🍋', 'herb', 'perennial',
  'Calming citrus scent — pollinators love it',
  'Lemon balm is a gentle, lemon-scented herb in the mint family. It makes a wonderful tea, attracts beneficial insects, and grows vigorously in containers. Like mint, it can spread aggressively in the ground — container growing keeps it beautifully contained and makes harvesting effortless. Cold-hardy and remarkably adaptable.',
  'easy',
  'partial', 4, 6, 'Partial sun — thrives with 4–6 hours. Tolerates more shade than most herbs. A good choice for north-facing spots that receive morning light.',
  'every_2_3_days', 'Keep consistently moist — water every 2–3 days. More forgiving of inconsistent watering than Mediterranean herbs. Will wilt dramatically when thirsty but recovers quickly.',
  6.0, 7.5, '60% potting mix, 25% compost, 15% perlite. Fertile, moisture-retentive, and well-draining. pH 6.0–7.5. Lemon balm tolerates average soil conditions but produces lusher, more aromatic growth in a compost-rich mix. Container growing significantly tames its otherwise vigorous spreading habit.', 'good',
  55, 70, 40, 85,
  true, false,
  10, 14, 40, 70,
  true, 1.0, 8.0,
  3, 9
);

-- FENNEL
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
  'fennel', 'Fennel', '🌿', 'herb', 'perennial',
  'Anise-flavored and beautiful — grow it solo',
  'Fennel is a striking, feathery-leaved herb with a distinct anise flavor. Both the fronds and seeds are edible. Important caveat: fennel is allelopathic — its roots release chemicals that inhibit growth in many neighboring plants. Always grow it in its own dedicated container, kept away from the vegetable garden.',
  'moderate',
  'full', 6, 8, 'Full sun, 6–8 hours. Partial shade causes leggy growth and reduces the characteristic anise flavor significantly.',
  'weekly', 'Moderate — water deeply once a week. Allow soil to dry slightly between waterings. More drought tolerant than its feathery appearance suggests.',
  5.5, 7.0, '60% potting mix, 20% compost, 20% perlite. Loose, moderately fertile, and well-draining. pH 5.5–7.0. Deep containers (at least 12 inches) are essential for the taproot. Fennel is allelopathic — keep its pot separated from vegetables and most herbs. The loose mix accommodates the deep root and prevents the waterlogging that causes crown rot.', 'good',
  60, 70, 55, 90,
  false, false,
  7, 14, 60, 90,
  true, 2.0, 12.0,
  4, 9
);

-- ============================================================
-- VEGETABLES
-- ============================================================

-- CARROTS
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
  'carrots', 'Carrots', '🥕', 'vegetable', 'annual',
  'The reward for patience and deep containers',
  'Container-grown carrots are entirely achievable with the right setup: loose, stone-free soil and containers at least 12 inches deep. Nantes and Chantenay varieties are stockier and ideal for pots. Thin seedlings early and ruthlessly — crowded carrots stay small and fork. The payoff is sweet, crisp roots you grew yourself.',
  'moderate',
  'full', 6, 8, 'Full sun preferred — 6–8 hours. Tolerates partial shade but root development slows significantly without adequate sun.',
  'every_2_3_days', 'Keep evenly moist — water every 2–3 days. Inconsistent watering causes roots to crack or fork. Never let the top inch dry completely during development.',
  6.0, 6.8, '55% potting mix, 25% perlite, 20% coarse sand. Loose, gritty, and very well-draining. pH 6.0–6.8. The single most important factor for carrots: loose, stone-free, deep soil. Any resistance causes forked, stunted roots. Use containers at least 12 inches deep. Critically: avoid fresh compost — it causes forking and hairy roots. Use only well-aged compost.', 'excellent',
  45, 85, 60, 75,
  true, false,
  10, 21, 70, 80,
  true, 2.0, 12.0,
  3, 10
);

-- SPINACH
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
  'spinach', 'Spinach', '🥬', 'vegetable', 'annual',
  'Fast, shade-tolerant, cool-season superfood',
  'Spinach is one of the fastest vegetables from seed to table — ready to harvest in as little as 40 days. It thrives in cool weather and tolerates more shade than almost any other vegetable, making it ideal for partially shaded balconies. It bolts quickly in summer heat; grow it as a spring and autumn crop.',
  'easy',
  'partial', 4, 6, 'Partial sun — 4–6 hours is ideal. One of the best vegetables for shaded spots. Full sun works in spring and fall; afternoon shade in summer delays bolting.',
  'every_2_3_days', 'Keep consistently moist — water every 2–3 days. Shallow roots dry out fast in containers. Dry soil triggers immediate bolting, cutting the harvest short.',
  6.0, 7.5, '65% potting mix, 25% compost, 10% perlite. Fertile, moisture-retentive, and well-draining. pH 6.0–7.5. Spinach is a heavy nitrogen feeder — compost-rich mix produces the lush, tender leaves you want. Shallow containers work perfectly, as roots only go 6 inches deep. Cool soil is key; hot soil triggers immediate bolting.', 'good',
  40, 75, 35, 75,
  true, false,
  5, 14, 40, 50,
  true, 0.5, 6.0,
  2, 9
);

-- GREEN BEANS
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
  'green_beans', 'Green Beans', '🫘', 'vegetable', 'annual',
  'Bush varieties are perfect container producers',
  'Bush green beans are one of the most productive container vegetables. They mature quickly, fix their own nitrogen from the air, and produce abundantly over several weeks. Always choose bush (not pole) varieties — they stay compact, need no staking, and produce a concentrated harvest that is easy to manage.',
  'easy',
  'full', 6, 8, 'Full sun, 6–8 hours. Adequate sun is essential for flowering and pod development. Insufficient light produces lots of foliage and few beans.',
  'every_2_3_days', 'Consistent moisture — water every 2–3 days. Keep evenly moist during flowering and pod development. Drought stress during pod set causes stringy, tough beans.',
  6.0, 7.0, '60% potting mix, 25% compost, 15% perlite. Fertile, well-draining, and moisture-retentive. pH 6.0–7.0. Beans fix their own nitrogen from the air, so avoid heavy nitrogen fertilization once established — it promotes leafy growth over pod production. Good drainage is essential to prevent root rot in wet conditions.', 'good',
  60, 85, 60, 85,
  false, true,
  5, 8, 50, 60,
  true, 2.0, 8.0,
  3, 10
);

-- RADISH
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
  'radish', 'Radish', '🌱', 'vegetable', 'annual',
  'Fastest vegetable from seed to table — 22 days',
  'Radishes are the ultimate instant-gratification vegetable — some varieties are table-ready in just 3 weeks. They''re perfect for filling empty container space between slower crops, act as a trap crop to lure flea beetles away from brassicas, and need so little depth you can grow a harvest in a windowsill box.',
  'easy',
  'partial', 4, 8, 'Partial to full sun — 4–8 hours. Tolerates partial shade well. Afternoon shade in hot weather prevents premature bolting.',
  'every_2_3_days', 'Keep evenly moist — water every 2–3 days. Irregular watering causes roots to crack and become pithy and excessively hot.',
  6.0, 7.0, '60% potting mix, 25% perlite, 15% coarse sand. Loose, light, and very well-draining. pH 6.0–7.0. Loose soil is essential for properly shaped round roots — compacted soil causes misshapen, pithy radishes. Shallow containers work perfectly (just 6 inches deep). Radishes are ideal for succession sowing and filling container gaps between slower-growing crops.', 'excellent',
  45, 70, 50, 70,
  true, false,
  3, 7, 22, 30,
  true, 0.5, 6.0,
  2, 10
);

-- SWISS CHARD
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
  'swiss_chard', 'Swiss Chard', '🥬', 'vegetable', 'biennial',
  'Stunning, colorful, and almost indestructible',
  'Swiss chard is one of the most beautiful and forgiving vegetables you can grow. Rainbow chard produces stems in red, yellow, orange, and white. It tolerates both heat and cold better than almost any other leafy green, making it a true four-season container vegetable in most climates. Grow it once and you''ll never stop.',
  'easy',
  'partial', 4, 8, 'Partial to full sun — 4–8 hours. Very adaptable. Handles more shade than most vegetables without significant yield loss.',
  'every_2_3_days', 'Consistent moisture — water every 2–3 days. Tolerates brief drought better than most leafy greens. Steady moisture produces tender, sweeter stems.',
  6.0, 7.5, '65% potting mix, 25% compost, 10% perlite. Rich, fertile, and moisture-retentive. pH 6.0–7.5. Swiss chard is the most adaptable leafy green — it tolerates heat, cold, partial shade, and average soil. A compost-rich mix significantly boosts leaf size and color. Rainbow chard''s vivid stem colors intensify with more sun.', 'good',
  50, 85, 40, 90,
  true, true,
  5, 7, 50, 60,
  true, 1.0, 8.0,
  2, 11
);

-- BROCCOLI
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
  'broccoli', 'Broccoli', '🥦', 'vegetable', 'annual',
  'Cool-season heavy feeder with a huge reward',
  'Broccoli is a substantial plant that rewards attentive care — rich soil, consistent moisture, and cool temperatures. It needs time, but there''s nothing like cutting a fresh head straight from the garden. After the main head is harvested, side shoots continue producing smaller florets for weeks.',
  'moderate',
  'full', 6, 8, 'Full sun, 6–8 hours. Adequate sun is critical for head development. Shade causes small, loose, poorly formed heads.',
  'every_2_3_days', 'Consistent moisture is essential — water every 2–3 days. Drought stress causes premature heading (buttoning) and noticeably bitter flavor.',
  6.0, 7.0, '55% potting mix, 35% compost, 10% perlite. Very rich, fertile, and moisture-retentive. pH 6.0–7.0. Broccoli is one of the heaviest nitrogen feeders in the garden. Amend very generously with compost at planting — lean mix produces tight, disappointingly small heads. Consistent moisture throughout head development is non-negotiable. Good drainage prevents the club root disease common in wet brassica soil.', 'good',
  45, 85, 45, 75,
  true, false,
  5, 10, 80, 100,
  true, 3.0, 12.0,
  2, 9
);

-- ============================================================
-- FRUITS
-- ============================================================

-- BLUEBERRY
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
  'blueberry', 'Blueberry', '🫐', 'fruit', 'perennial',
  'Long-lived container plant — pH is everything',
  'Blueberries are excellent container plants once you master the one critical requirement: highly acidic soil. Get the pH right and they are surprisingly low-maintenance and long-lived. Get it wrong and they slowly starve regardless of feeding. Always use ericaceous (acid) potting mix. Two different varieties improve pollination and significantly increase harvest.',
  'hard',
  'full', 6, 8, 'Full sun, 6–8 hours. More sun means more berries and better flavor. South-facing placement is ideal.',
  'every_2_3_days', 'Keep consistently moist — water every 2–3 days. Never let dry out, especially during fruiting. Use rainwater or filtered water — alkaline tap water raises pH over time and starves the plant.',
  4.5, 5.5, '40% ericaceous (acid) potting mix, 30% peat moss or coco coir, 20% compost, 10% perlite. Highly acidic, moisture-retentive, and well-draining. pH 4.5–5.5. This is the most acidic mix in this guide — it is non-negotiable. Without correct pH, blueberries cannot absorb nutrients regardless of how much you feed them. Add garden sulfur to lower pH if needed. Always water with collected rainwater or pH-adjusted water rather than alkaline tap water.', 'good',
  60, 75, 45, 90,
  true, false,
  14, 28, 60, 90,
  true, 5.0, 14.0,
  4, 7
);

-- RASPBERRY
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
  'raspberry', 'Raspberry', '🍇', 'fruit', 'perennial',
  'Autumn-fruiting varieties thrive in containers',
  'Raspberries are surprisingly successful in large containers — autumn-fruiting varieties are the best choice, as they fruit on first-year canes, making pruning simple. Cut all canes to the ground each February; they regrow and fruit abundantly the same year. Rich soil and consistent moisture during fruiting are the keys to a heavy harvest.',
  'moderate',
  'full', 6, 8, 'Full sun, 6–8 hours. Partial shade reduces yield significantly. South or west-facing placement is ideal for maximum fruit production.',
  'every_2_3_days', 'Consistent moisture — water every 2–3 days. Critical during fruit development. Drought stress causes small, seedy berries. Good drainage prevents crown rot, the most common raspberry killer.',
  5.5, 6.5, '55% potting mix, 30% compost, 15% perlite. Rich, fertile, and well-draining. pH 5.5–6.5. Raspberries are vigorous feeders. Amend generously with compost at planting and top-dress with compost each spring. Consistent moisture during fruiting is critical — drought causes small, seedy, disappointing berries. Excellent drainage prevents crown rot, the most common container raspberry killer.', 'good',
  45, 75, 35, 90,
  true, false,
  14, 28, 90, 120,
  true, 5.0, 12.0,
  3, 9
);

-- ============================================================
-- PLANT TIPS
-- ============================================================

-- Marigold tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Plant as a border around vegetables — roots release compounds that repel soil nematodes for the entire season', 'general', 1 FROM plants WHERE slug = 'marigold';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Deadhead spent blooms regularly to keep flowering all season — stop deadheading in autumn to allow self-seeding', 'pruning', 2 FROM plants WHERE slug = 'marigold';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Lean soil produces more blooms — resist the urge to fertilize heavily', 'soil', 3 FROM plants WHERE slug = 'marigold';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'French marigolds (Tagetes patula) are the most compact and pest-deterring variety for containers', 'container', 4 FROM plants WHERE slug = 'marigold';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Let some flowers go to seed at season end — they will self-sow and come back next year', 'seasonal', 5 FROM plants WHERE slug = 'marigold';

-- Nasturtium tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Sow seeds directly where they will grow — nasturtiums strongly dislike transplanting', 'general', 1 FROM plants WHERE slug = 'nasturtium';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Both flowers and leaves are edible — peppery flavor is excellent raw in salads', 'harvesting', 2 FROM plants WHERE slug = 'nasturtium';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Plant near vulnerable vegetables — aphids will cluster on nasturtiums instead (sacrificial trap crop)', 'pest', 3 FROM plants WHERE slug = 'nasturtium';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Do not fertilize — poor soil actively produces more flowers. Neglect is the goal.', 'soil', 4 FROM plants WHERE slug = 'nasturtium';

-- Sunflower tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Choose dwarf varieties like Dwarf Sunspot or Little Becka for containers — they stay under 2 feet tall', 'container', 1 FROM plants WHERE slug = 'sunflower';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Sow seeds directly — transplanting disturbs the taproot and stunts growth significantly', 'general', 2 FROM plants WHERE slug = 'sunflower';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Stake taller varieties — stems are surprisingly brittle in high winds', 'general', 3 FROM plants WHERE slug = 'sunflower';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Leave seed heads standing in autumn — birds will flock to them for weeks', 'seasonal', 4 FROM plants WHERE slug = 'sunflower';

-- Cilantro tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Succession sow every 2–3 weeks for a continuous supply — each batch will bolt eventually in heat', 'general', 1 FROM plants WHERE slug = 'cilantro';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'When it bolts, let it flower and set seed — coriander seeds are equally useful and flavorful in cooking', 'harvesting', 2 FROM plants WHERE slug = 'cilantro';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest outer stems regularly — this delays bolting and keeps the plant producing longer', 'harvesting', 3 FROM plants WHERE slug = 'cilantro';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Afternoon shade in summer can extend the harvest season by 2–3 weeks', 'seasonal', 4 FROM plants WHERE slug = 'cilantro';

-- Oregano tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest just before flowering for peak flavor — essential oil content is highest at this stage', 'harvesting', 1 FROM plants WHERE slug = 'oregano';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Greek oregano (Origanum vulgare subsp. hirtum) has the strongest flavor — seek out this specific variety', 'general', 2 FROM plants WHERE slug = 'oregano';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Cut back hard after flowering to keep the plant compact and encourage fresh productive growth', 'pruning', 3 FROM plants WHERE slug = 'oregano';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Dry bunches upside down in a warm spot — dried oregano is more intensely flavored than fresh', 'harvesting', 4 FROM plants WHERE slug = 'oregano';

-- Lemon balm tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Pinch off flower buds to keep the plant bushy and prevent prolific self-seeding', 'pruning', 1 FROM plants WHERE slug = 'lemon_balm';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest leaves in the morning when essential oils are most concentrated for tea and cooking', 'harvesting', 2 FROM plants WHERE slug = 'lemon_balm';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Makes a calming tea — steep fresh or dried leaves in hot water for 5 minutes', 'general', 3 FROM plants WHERE slug = 'lemon_balm';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Cut back to 2 inches in autumn — it will regrow vigorously from the base the following spring', 'seasonal', 4 FROM plants WHERE slug = 'lemon_balm';

-- Fennel tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Keep in its own dedicated container — fennel''s root secretions inhibit growth in most nearby plants', 'container', 1 FROM plants WHERE slug = 'fennel';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest fronds when 8–12 inches tall for the best anise flavor — flavor weakens after flowering', 'harvesting', 2 FROM plants WHERE slug = 'fennel';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Bronze fennel is more compact and decorative with deep purple-bronze foliage — beautiful in pots', 'general', 3 FROM plants WHERE slug = 'fennel';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Let it flower — fennel flowers attract beneficial predatory insects including parasitic wasps', 'general', 4 FROM plants WHERE slug = 'fennel';

-- Carrots tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Use containers at least 12 inches deep — shallow pots guarantee stubby, forked, disappointing roots', 'container', 1 FROM plants WHERE slug = 'carrots';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Thin seedlings to 2 inches apart early and ruthlessly — crowded carrots never develop properly', 'general', 2 FROM plants WHERE slug = 'carrots';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Nantes and Chantenay varieties are stockier and specifically bred for container and raised bed growing', 'general', 3 FROM plants WHERE slug = 'carrots';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Use only well-aged compost in the mix — fresh compost causes forking and hairy roots', 'soil', 4 FROM plants WHERE slug = 'carrots';

-- Spinach tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Grow as a spring and fall crop — it bolts rapidly and turns bitter in summer heat', 'seasonal', 1 FROM plants WHERE slug = 'spinach';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest outer leaves and the plant keeps producing — the cut-and-come-again method works beautifully', 'harvesting', 2 FROM plants WHERE slug = 'spinach';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Savoy varieties (crinkled leaves) are more heat tolerant than flat-leaf types', 'general', 3 FROM plants WHERE slug = 'spinach';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Pair with taller plants in summer to get natural shade that delays bolting by a few weeks', 'seasonal', 4 FROM plants WHERE slug = 'spinach';

-- Green beans tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Always choose bush varieties (not pole) — they stay compact, need no staking, and are ideal for containers', 'container', 1 FROM plants WHERE slug = 'green_beans';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest pods when young and tender — leaving overgrown pods on the plant signals it to stop producing', 'harvesting', 2 FROM plants WHERE slug = 'green_beans';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Do not over-fertilize with nitrogen — beans fix their own nitrogen from the air', 'soil', 3 FROM plants WHERE slug = 'green_beans';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Succession sow 2–3 weeks apart to extend the harvest window across the whole season', 'general', 4 FROM plants WHERE slug = 'green_beans';

-- Radish tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Some varieties are ready in just 22 days — the fastest vegetable you can grow from seed', 'general', 1 FROM plants WHERE slug = 'radish';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Succession sow every 2 weeks for a continuous harvest from spring through fall', 'general', 2 FROM plants WHERE slug = 'radish';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest promptly — overripe radishes become pithy, hollow, and extremely hot and unpleasant', 'harvesting', 3 FROM plants WHERE slug = 'radish';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Use as a trap crop near kale and broccoli — flea beetles attack radishes first, protecting your brassicas', 'pest', 4 FROM plants WHERE slug = 'radish';

-- Swiss chard tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Rainbow chard varieties (Bright Lights) produce stunning multicolored stems — edible and ornamental', 'general', 1 FROM plants WHERE slug = 'swiss_chard';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest outer leaves first, always leaving the center crown intact so the plant keeps producing', 'harvesting', 2 FROM plants WHERE slug = 'swiss_chard';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'One of the most heat and cold tolerant leafy greens — grows almost year-round in mild climates', 'seasonal', 3 FROM plants WHERE slug = 'swiss_chard';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Stems and leaves cook differently — use stems like asparagus, leaves like spinach', 'harvesting', 4 FROM plants WHERE slug = 'swiss_chard';

-- Broccoli tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Harvest the main head before any yellow appears in the florets — once it flowers it is past peak flavor', 'harvesting', 1 FROM plants WHERE slug = 'broccoli';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'After the main head, side shoots keep producing smaller florets for weeks — do not pull the plant', 'harvesting', 2 FROM plants WHERE slug = 'broccoli';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Cover with fine mesh netting to protect against cabbage white butterfly — caterpillars can devastate a plant overnight', 'pest', 3 FROM plants WHERE slug = 'broccoli';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Calabrese (green broccoli) is the most reliable and easiest container broccoli variety', 'container', 4 FROM plants WHERE slug = 'broccoli';

-- Blueberry tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Use ericaceous (acid) potting mix from day one — regular mix causes yellow leaves and slow starvation', 'soil', 1 FROM plants WHERE slug = 'blueberry';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Plant two different varieties for cross-pollination — this alone can double your harvest', 'general', 2 FROM plants WHERE slug = 'blueberry';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Water with rainwater when possible — alkaline tap water slowly raises pH and starves the plant over time', 'watering', 3 FROM plants WHERE slug = 'blueberry';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Spectacular autumn leaf color — one of the most ornamental container plants in fall', 'seasonal', 4 FROM plants WHERE slug = 'blueberry';

-- Raspberry tips
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Choose autumn-fruiting varieties like Autumn Bliss — cut all canes to ground in February, they fruit the same year', 'general', 1 FROM plants WHERE slug = 'raspberry';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Use a 5-gallon+ container per plant — crowded roots dramatically reduce yield', 'container', 2 FROM plants WHERE slug = 'raspberry';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Tie canes to a stake or small trellis — they can reach 4–5 feet tall and will flop without support', 'general', 3 FROM plants WHERE slug = 'raspberry';
INSERT INTO plant_tips (plant_id, tip, category, sort_order) SELECT id, 'Top-dress with compost each spring before new growth begins for best yield', 'soil', 4 FROM plants WHERE slug = 'raspberry';

-- ============================================================
-- COMPANION PLANTING
-- ============================================================

-- Marigold + Tomatoes (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Marigolds repel soil nematodes, whiteflies, and aphids that attack tomatoes. The classic companion pairing.'
FROM plants p1, plants p2 WHERE p1.slug = 'marigold' AND p2.slug = 'tomatoes';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Plant marigolds as a border — they repel nematodes and aphids that target tomato roots and foliage.'
FROM plants p1, plants p2 WHERE p1.slug = 'tomatoes' AND p2.slug = 'marigold';

-- Marigold + Peppers (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Marigolds repel aphids, spider mites, and whiteflies that commonly attack peppers.'
FROM plants p1, plants p2 WHERE p1.slug = 'marigold' AND p2.slug = 'peppers';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Marigolds act as natural pest repellent for pepper crops throughout the season.'
FROM plants p1, plants p2 WHERE p1.slug = 'peppers' AND p2.slug = 'marigold';

-- Marigold + Cucumber (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Marigolds repel cucumber beetles and aphids. Excellent border plant for cucumber containers.'
FROM plants p1, plants p2 WHERE p1.slug = 'marigold' AND p2.slug = 'cucumber';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Marigolds in nearby pots deter cucumber beetles and reduce aphid pressure.'
FROM plants p1, plants p2 WHERE p1.slug = 'cucumber' AND p2.slug = 'marigold';

-- Marigold + Kale (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Marigolds deter aphids and cabbage moths that commonly attack brassicas like kale.'
FROM plants p1, plants p2 WHERE p1.slug = 'marigold' AND p2.slug = 'kale';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Marigolds provide natural pest deterrence around brassica crops all season long.'
FROM plants p1, plants p2 WHERE p1.slug = 'kale' AND p2.slug = 'marigold';

-- Marigold + Broccoli (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Marigolds deter cabbage white butterfly and aphids that devastate broccoli.'
FROM plants p1, plants p2 WHERE p1.slug = 'marigold' AND p2.slug = 'broccoli';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Marigolds are excellent companions for all brassicas, deterring cabbage moths and aphids.'
FROM plants p1, plants p2 WHERE p1.slug = 'broccoli' AND p2.slug = 'marigold';

-- Nasturtium + Tomatoes (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Nasturtiums act as a trap crop — aphids cluster on them instead of attacking tomatoes.'
FROM plants p1, plants p2 WHERE p1.slug = 'nasturtium' AND p2.slug = 'tomatoes';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Nasturtiums nearby lure aphids away from tomatoes, acting as a sacrificial trap crop.'
FROM plants p1, plants p2 WHERE p1.slug = 'tomatoes' AND p2.slug = 'nasturtium';

-- Nasturtium + Cucumber (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Nasturtiums repel cucumber beetles and attract aphids away from the cucumber plants.'
FROM plants p1, plants p2 WHERE p1.slug = 'nasturtium' AND p2.slug = 'cucumber';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Nasturtiums serve as a trap crop, drawing aphids and beetles away from cucumber vines.'
FROM plants p1, plants p2 WHERE p1.slug = 'cucumber' AND p2.slug = 'nasturtium';

-- Nasturtium + Kale (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Nasturtiums act as a trap crop for aphids and caterpillars that target brassicas like kale.'
FROM plants p1, plants p2 WHERE p1.slug = 'nasturtium' AND p2.slug = 'kale';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Nasturtiums lure aphids and caterpillars away from kale, protecting the harvest.'
FROM plants p1, plants p2 WHERE p1.slug = 'kale' AND p2.slug = 'nasturtium';

-- Sunflower + Cucumber (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Sunflowers attract pollinators that dramatically improve cucumber fruit set and yield.'
FROM plants p1, plants p2 WHERE p1.slug = 'sunflower' AND p2.slug = 'cucumber';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Sunflowers nearby bring bees and pollinators that help cucumbers set fruit more reliably.'
FROM plants p1, plants p2 WHERE p1.slug = 'cucumber' AND p2.slug = 'sunflower';

-- Sunflower + Zucchini (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Sunflowers attract bees and other pollinators that improve zucchini fruit set and production.'
FROM plants p1, plants p2 WHERE p1.slug = 'sunflower' AND p2.slug = 'zucchini';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Sunflowers draw in pollinators, helping zucchini flowers get fertilized and set fruit.'
FROM plants p1, plants p2 WHERE p1.slug = 'zucchini' AND p2.slug = 'sunflower';

-- Cilantro + Tomatoes (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Cilantro flowers attract parasitic wasps and hoverflies that prey on common tomato pests.'
FROM plants p1, plants p2 WHERE p1.slug = 'cilantro' AND p2.slug = 'tomatoes';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Cilantro in flower draws beneficial insects that help control aphids and caterpillars on tomatoes.'
FROM plants p1, plants p2 WHERE p1.slug = 'tomatoes' AND p2.slug = 'cilantro';

-- Cilantro + Spinach (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Both are cool-season crops with similar water needs. An excellent spring and autumn container pairing.'
FROM plants p1, plants p2 WHERE p1.slug = 'cilantro' AND p2.slug = 'spinach';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Cool-season companions that share identical care requirements and grow well together.'
FROM plants p1, plants p2 WHERE p1.slug = 'spinach' AND p2.slug = 'cilantro';

-- Oregano + Tomatoes (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Oregano''s strong aromatic oils repel aphids, spider mites, and cabbage moths near tomatoes.'
FROM plants p1, plants p2 WHERE p1.slug = 'oregano' AND p2.slug = 'tomatoes';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Oregano nearby deters many common tomato pests with its powerful aromatic compounds.'
FROM plants p1, plants p2 WHERE p1.slug = 'tomatoes' AND p2.slug = 'oregano';

-- Oregano + Peppers (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Oregano repels aphids and spider mites that attack peppers. Both thrive in the same hot, sunny conditions.'
FROM plants p1, plants p2 WHERE p1.slug = 'oregano' AND p2.slug = 'peppers';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Oregano deters pepper pests with its aromatic oils. Both love heat and can share a sunny spot.'
FROM plants p1, plants p2 WHERE p1.slug = 'peppers' AND p2.slug = 'oregano';

-- Lemon balm + Tomatoes (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Lemon balm''s flowers attract pollinators and beneficial insects that improve tomato yield.'
FROM plants p1, plants p2 WHERE p1.slug = 'lemon_balm' AND p2.slug = 'tomatoes';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Lemon balm in flower attracts pollinators and its scent helps confuse and deter aphids.'
FROM plants p1, plants p2 WHERE p1.slug = 'tomatoes' AND p2.slug = 'lemon_balm';

-- Lemon balm + Lettuce (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Both prefer partial shade and consistent moisture. Lemon balm''s scent deters aphids on nearby lettuce.'
FROM plants p1, plants p2 WHERE p1.slug = 'lemon_balm' AND p2.slug = 'lettuce';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Lemon balm provides gentle pest deterrence and shares the same partial shade preference as lettuce.'
FROM plants p1, plants p2 WHERE p1.slug = 'lettuce' AND p2.slug = 'lemon_balm';

-- Fennel + Tomatoes (harmful)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'harmful', 'Fennel is allelopathic — its root secretions inhibit tomato growth. Keep containers well separated.'
FROM plants p1, plants p2 WHERE p1.slug = 'fennel' AND p2.slug = 'tomatoes';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'harmful', 'Tomatoes are sensitive to fennel''s allelopathic root chemicals. Keep fennel in a separate area of the garden.'
FROM plants p1, plants p2 WHERE p1.slug = 'tomatoes' AND p2.slug = 'fennel';

-- Fennel + Peppers (harmful)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'harmful', 'Fennel''s allelopathic root secretions inhibit pepper growth. Keep containers separated.'
FROM plants p1, plants p2 WHERE p1.slug = 'fennel' AND p2.slug = 'peppers';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'harmful', 'Keep fennel away from peppers — its allelopathic compounds stunt growth and reduce yield.'
FROM plants p1, plants p2 WHERE p1.slug = 'peppers' AND p2.slug = 'fennel';

-- Fennel + Basil (harmful)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'harmful', 'Fennel inhibits basil growth significantly. Never plant them together or even near each other.'
FROM plants p1, plants p2 WHERE p1.slug = 'fennel' AND p2.slug = 'basil';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'harmful', 'Basil is suppressed by fennel''s allelopathic root chemicals. Keep them in completely separate containers.'
FROM plants p1, plants p2 WHERE p1.slug = 'basil' AND p2.slug = 'fennel';

-- Fennel + Dill (harmful — cross-pollination)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'harmful', 'Fennel and dill cross-pollinate if grown nearby, producing inferior-flavored seeds of both. Keep them well separated.'
FROM plants p1, plants p2 WHERE p1.slug = 'fennel' AND p2.slug = 'dill';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'harmful', 'Dill and fennel cross-pollinate if too close, ruining the seed quality of both plants. Keep them apart.'
FROM plants p1, plants p2 WHERE p1.slug = 'dill' AND p2.slug = 'fennel';

-- Carrots + Chives (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Chives repel carrot fly with their strong scent — one of the most damaging carrot pests. Classic pairing.'
FROM plants p1, plants p2 WHERE p1.slug = 'carrots' AND p2.slug = 'chives';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Plant chives near carrots to repel carrot fly — the chive scent masks the carrot smell.'
FROM plants p1, plants p2 WHERE p1.slug = 'chives' AND p2.slug = 'carrots';

-- Carrots + Rosemary (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Rosemary''s powerful scent confuses and deters carrot fly. Keep pots adjacent for best effect.'
FROM plants p1, plants p2 WHERE p1.slug = 'carrots' AND p2.slug = 'rosemary';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Rosemary is an effective carrot fly deterrent when grown nearby. Both benefit from the pairing.'
FROM plants p1, plants p2 WHERE p1.slug = 'rosemary' AND p2.slug = 'carrots';

-- Carrots + Lettuce (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Lettuce shallow roots and carrot deep roots use different soil layers — efficient use of container space.'
FROM plants p1, plants p2 WHERE p1.slug = 'carrots' AND p2.slug = 'lettuce';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Carrots grow deep while lettuce stays shallow — complementary root zones in the same container.'
FROM plants p1, plants p2 WHERE p1.slug = 'lettuce' AND p2.slug = 'carrots';

-- Spinach + Lettuce (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Both cool-season leafy greens with identical care needs. The perfect window box companions.'
FROM plants p1, plants p2 WHERE p1.slug = 'spinach' AND p2.slug = 'lettuce';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Spinach and lettuce share the same care requirements and grow beautifully side by side.'
FROM plants p1, plants p2 WHERE p1.slug = 'lettuce' AND p2.slug = 'spinach';

-- Spinach + Radish (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Radishes loosen the soil as they grow, benefiting spinach roots. Both are cool-season companions.'
FROM plants p1, plants p2 WHERE p1.slug = 'spinach' AND p2.slug = 'radish';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Plant fast radishes alongside spinach — they mark the row and are harvested before spinach needs the space.'
FROM plants p1, plants p2 WHERE p1.slug = 'radish' AND p2.slug = 'spinach';

-- Green beans + Carrots (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Beans fix atmospheric nitrogen that benefits heavy-feeding carrots. Different root depths coexist beautifully.'
FROM plants p1, plants p2 WHERE p1.slug = 'green_beans' AND p2.slug = 'carrots';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Nitrogen-fixing bean roots benefit nearby carrot growth. Complementary companions in adjacent containers.'
FROM plants p1, plants p2 WHERE p1.slug = 'carrots' AND p2.slug = 'green_beans';

-- Green beans + Strawberry (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Beans fix nitrogen that strawberries use for leaf and runner growth. Both benefit from consistent moisture.'
FROM plants p1, plants p2 WHERE p1.slug = 'green_beans' AND p2.slug = 'strawberry';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Green beans improve soil nitrogen in adjacent containers, benefiting nearby strawberry plants.'
FROM plants p1, plants p2 WHERE p1.slug = 'strawberry' AND p2.slug = 'green_beans';

-- Radish + Kale (beneficial — trap crop)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Radishes act as a trap crop for flea beetles, drawing them away from and protecting kale.'
FROM plants p1, plants p2 WHERE p1.slug = 'radish' AND p2.slug = 'kale';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Plant radishes nearby as a sacrificial trap crop — flea beetles prefer them and leave the kale alone.'
FROM plants p1, plants p2 WHERE p1.slug = 'kale' AND p2.slug = 'radish';

-- Swiss chard + Lettuce (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Both leafy greens with similar moisture needs. Chard provides height and structure in mixed containers.'
FROM plants p1, plants p2 WHERE p1.slug = 'swiss_chard' AND p2.slug = 'lettuce';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Swiss chard and lettuce are excellent container companions with compatible care requirements.'
FROM plants p1, plants p2 WHERE p1.slug = 'lettuce' AND p2.slug = 'swiss_chard';

-- Blueberry + Strawberry (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Both prefer acidic soil (pH 5.5–6.5) and can share the same soil mix and watering schedule.'
FROM plants p1, plants p2 WHERE p1.slug = 'blueberry' AND p2.slug = 'strawberry';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Strawberries and blueberries share acidic soil preferences — easy to manage side by side.'
FROM plants p1, plants p2 WHERE p1.slug = 'strawberry' AND p2.slug = 'blueberry';

-- Broccoli + Dill (beneficial)
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Dill flowers attract parasitic wasps that control the caterpillars and aphids that attack broccoli.'
FROM plants p1, plants p2 WHERE p1.slug = 'broccoli' AND p2.slug = 'dill';
INSERT INTO companion_planting (plant_id, companion_plant_id, relationship, note)
SELECT p1.id, p2.id, 'beneficial', 'Dill in flower attracts beneficial predatory insects that protect broccoli from cabbage pests.'
FROM plants p1, plants p2 WHERE p1.slug = 'dill' AND p2.slug = 'broccoli';

-- Broccoli + Marigold (already added above)
-- Broccoli + Nasturtium (already added above)

-- ============================================================
-- SPACE TYPE RECOMMENDATIONS
-- ============================================================

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Excellent balcony companion plant. Place in small pots around vegetables as a pest deterrent.', '1 gallon pot' FROM plants WHERE slug = 'marigold';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Perfect trailing balcony plant. Direct sow and ignore — thrives on neglect.', '1 gallon pot' FROM plants WHERE slug = 'nasturtium';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Dwarf varieties are ideal for balcony containers. Use a deep pot for the taproot.', '2 gallon pot (12" deep)' FROM plants WHERE slug = 'sunflower';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Great balcony herb — succession sow in small pots every 2–3 weeks.', '1 gallon pot (10" deep)' FROM plants WHERE slug = 'cilantro';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Perfect balcony herb in terracotta. Loves hot reflected heat from walls and paving.', '0.5–1 gallon pot' FROM plants WHERE slug = 'oregano';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Excellent container herb for partially shaded balconies — tolerates less sun than most herbs.', '1 gallon pot' FROM plants WHERE slug = 'lemon_balm';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Grow in its own dedicated container — needs 12" depth for taproot and space away from other plants.', '2 gallon pot (12" deep)' FROM plants WHERE slug = 'fennel';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Excellent balcony crop in deep containers. Use Nantes or Chantenay varieties for best results.', '2 gallon pot (12" deep)' FROM plants WHERE slug = 'carrots';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Perfect for balcony window boxes and shallow containers. Fast and rewarding.', 'Window box or 0.5 gallon' FROM plants WHERE slug = 'spinach';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Bush varieties work well in large balcony containers with good sun exposure.', '2 gallon pot' FROM plants WHERE slug = 'green_beans';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Ideal balcony crop — tiny, fast, and needs minimal depth. Great for window boxes.', 'Window box or 0.5 gallon' FROM plants WHERE slug = 'radish';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Excellent balcony container vegetable — highly ornamental rainbow stems and productive all season.', '1–2 gallon pot' FROM plants WHERE slug = 'swiss_chard';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Calabrese broccoli works in large balcony containers with full sun. Use 3 gallon minimum.', '3 gallon pot' FROM plants WHERE slug = 'broccoli';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Excellent container fruit. Use ericaceous mix. Plant two varieties for pollination and best harvest.', '5 gallon pot minimum' FROM plants WHERE slug = 'blueberry';

INSERT INTO plant_space_recommendations (plant_id, space_type_id, recommended, notes, recommended_container_size)
SELECT id, 'balcony', true, 'Autumn-fruiting varieties thrive in large balcony containers. Stake canes against a wall.', '5 gallon pot minimum' FROM plants WHERE slug = 'raspberry';
