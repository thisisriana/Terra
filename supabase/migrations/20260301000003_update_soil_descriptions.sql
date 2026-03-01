-- ============================================================
-- TERRA — Update soil descriptions with ratios, pH, and drainage
-- ============================================================

UPDATE plants SET soil_description = '60% potting mix, 30% compost, 10% perlite. Rich, moisture-retentive, and well-draining. pH 6.0–7.0. Never use straight garden soil — it compacts and suffocates roots in containers. Good drainage prevents root rot while compost keeps roots fed.' WHERE slug = 'basil';

UPDATE plants SET soil_description = '50% potting mix, 40% perlite or coarse grit, 10% coarse sand. Intentionally lean and fast-draining. pH 6.0–8.0. This mix is deliberately poor in nutrients — rich soil causes floppy, flavorless growth. Water must flow straight through within seconds of watering.' WHERE slug = 'thyme';

UPDATE plants SET soil_description = '55% potting mix, 30% perlite, 15% coarse sand. Low fertility, excellent drainage. pH 6.0–7.0. Avoid adding extra compost — too rich causes floppy, weak growth. The grit and sand mimic sage''s native dry hillside conditions.' WHERE slug = 'sage';

UPDATE plants SET soil_description = '60% potting mix, 25% perlite, 15% compost. Loose, light, and well-draining. pH 5.8–6.5. The loose texture allows the deep taproot to penetrate easily. Use a container at least 12 inches deep — shallow pots stunt the plant and cause it to bolt early.' WHERE slug = 'dill';

UPDATE plants SET soil_description = '65% potting mix, 25% compost, 10% perlite. Rich, fertile, and moisture-retentive. pH 6.0–7.0. Unlike Mediterranean herbs, mint wants a rich, consistently moist mix. The compost feeds its vigorous growth — it will tell you when it''s thirsty by wilting dramatically.' WHERE slug = 'mint';

UPDATE plants SET soil_description = '40% potting mix, 40% perlite or horticultural grit, 20% coarse sand. Extremely fast-draining — the driest mix in this guide. pH 6.5–7.5. Add a small handful of garden lime per gallon of mix to raise pH toward the alkaline end. Water must drain immediately — standing moisture causes root rot within days.' WHERE slug = 'lavender';

UPDATE plants SET soil_description = '50% potting mix, 35% perlite, 15% coarse sand. Lean, gritty, and very fast-draining. pH 6.0–8.0. This mix mimics rosemary''s native Mediterranean hillside habitat. Drainage is everything — rosemary rots quickly in consistently moist soil. Tilt the pot slightly to encourage runoff.' WHERE slug = 'rosemary';

UPDATE plants SET soil_description = '60% potting mix, 20% compost, 20% perlite. Rich, fertile, and well-draining. pH 6.0–6.8. Peppers are heavy feeders. Mix in a slow-release fertilizer at planting time and top-dress with compost mid-season. Good drainage is essential — waterlogged roots cause blossom drop.' WHERE slug = 'peppers';

UPDATE plants SET soil_description = '55% potting mix, 30% compost, 15% perlite. Deep, very rich, and well-draining. pH 6.0–6.8. Tomatoes are the heaviest feeders in the garden. Add one tablespoon of crushed eggshells or garden lime per gallon of mix to supply calcium and prevent blossom end rot.' WHERE slug = 'tomatoes';

UPDATE plants SET soil_description = '70% potting mix, 20% compost, 10% perlite. Light, fine-textured, and moisture-retentive. pH 6.0–7.0. Shallow roots (4–6 inches) need a fine mix that stays evenly moist. Good drainage is still essential — waterlogged lettuce turns slimy and bolts faster in heat.' WHERE slug = 'lettuce';

UPDATE plants SET soil_description = '60% potting mix, 25% compost, 15% perlite. Adaptable, well-draining, and fertile. pH 6.0–7.0. Chives tolerate a wide range of soil conditions. Enriching with compost significantly increases yield and speeds regrowth after each cutting. Good drainage prevents the only thing that reliably kills them: root rot.' WHERE slug = 'chives';

UPDATE plants SET soil_description = '60% potting mix, 25% compost, 15% perlite. Deep, rich, and well-draining. pH 5.5–6.7. A container at least 10 inches deep is required for the taproot. Rich mix supports parsley''s long growing season — it''s a slow, steady feeder that rewards consistent soil fertility.' WHERE slug = 'parsley';

UPDATE plants SET soil_description = '55% potting mix, 30% compost, 15% perlite. Fertile, nitrogen-rich, and well-draining. pH 6.0–7.5. Kale is a heavy nitrogen feeder. Amend generously with compost and consider an organic nitrogen-boosting fertilizer at planting. Good drainage prevents the club root disease that plagues brassicas in wet soil.' WHERE slug = 'kale';

UPDATE plants SET soil_description = '60% potting mix, 20% compost, 15% perlite, 5% peat moss or coco coir. Slightly acidic, fertile, and well-draining. pH 5.5–6.5. The peat or coco coir provides the acidity strawberries prefer and helps retain moisture during fruiting. Good drainage prevents crown rot — the most common strawberry killer.' WHERE slug = 'strawberry';

UPDATE plants SET soil_description = '55% potting mix, 25% compost, 20% perlite. Rich, moisture-retentive, and well-draining. pH 6.0–7.0. Cucumbers drink heavily but hate waterlogged roots — this balance of compost and perlite achieves both. Use a 5-gallon+ container to buffer moisture levels and prevent the bitter fruit caused by drought stress.' WHERE slug = 'cucumber';

UPDATE plants SET soil_description = '50% potting mix, 35% compost, 15% perlite. Very rich, deeply amended, and well-draining. pH 6.0–7.5. The richest mix in this guide — zucchini is an extreme feeder with an enormous plant to support. Use a 10-gallon+ container and fertilize every two weeks once fruiting begins.' WHERE slug = 'zucchini';
