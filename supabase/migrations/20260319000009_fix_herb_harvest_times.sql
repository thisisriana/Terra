-- Fix days_to_harvest values for herbs to reflect realistic time from seed to first harvest.
-- days_to_harvest represents post-germination growth time; the UI adds days_to_germinate_min on top.
-- Previous values (basil: 25/35, oregano: 45/90) were far too short.

-- Basil: 55–70 days after germination (~60–80 days total from seed outdoors)
UPDATE plants
SET days_to_harvest_min = 55,
    days_to_harvest_max = 70
WHERE slug = 'basil';

-- Oregano: 70–85 days after germination (~78–99 days total from seed outdoors)
UPDATE plants
SET days_to_harvest_min = 70,
    days_to_harvest_max = 85
WHERE slug = 'oregano';
