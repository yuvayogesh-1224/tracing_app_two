# data_batch_61_70.py
import math
from data_helper import (
    make_line, make_circle_points, make_arc_points,
    make_rect_points, make_oval_points, make_star_points,
    make_heart_points, make_wave_points, make_triangle_points
)

def get_batch_61_70(app_idx):
    if app_idx == 61:
        return get_61_flower_items()
    elif app_idx == 62:
        return get_62_tree_items()
    elif app_idx == 63:
        return get_63_leaf_items()
    elif app_idx == 64:
        return get_64_rainbow_items()
    elif app_idx == 65:
        return get_65_sun_moon_items()
    elif app_idx == 66:
        return get_66_cloud_items()
    elif app_idx == 67:
        return get_67_mountain_items()
    elif app_idx == 68:
        return get_68_fruit_items()
    elif app_idx == 69:
        return get_69_vegetable_items()
    elif app_idx == 70:
        return get_70_garden_items()
    else:
        raise ValueError(f"Invalid app index for batch 61-70: {app_idx}")

def get_61_flower_items():
    flowers = [
        ("rose", "Velvet Red Rose", "Garden", "Easy", "Roses have sweet perfume and soft velvety petals!", "🌹"),
        ("sunflower", "Giant Golden Sunflower", "Field", "Easy", "Sunflowers turn their faces to follow the warm sun!", "🌻"),
        ("tulip", "Spring Pink Tulip", "Spring", "Easy", "Tulips open up like pretty colorful cups in spring!", "🌷"),
        ("daisy", "Cheerful White Daisy", "Meadow", "Easy", "Daisies have sunny yellow centers and white rays!", "🌼"),
        ("lotus", "Sacred Water Lotus", "Water", "Medium", "Lotus flowers float gracefully on calm temple ponds!", "🪷"),
        ("orchid", "Exotic Tropical Orchid", "Tropical", "Hard", "Orchids have delicate symmetry and vivid colors!", "🌸"),
        ("lily", "Peaceful White Lily", "Garden", "Medium", "Lilies are symbols of peace, purity and love!", "💐"),
        ("hibiscus", "Hawaiian Red Hibiscus", "Tropical", "Medium", "Hummingbirds love sipping sweet hibiscus nectar!", "🌺"),
        ("marigold", "Festive Golden Marigold", "Festival", "Easy", "Marigolds shine brightly at celebration festivals!", "🌼"),
        ("daffodil", "Yellow Trumpet Daffodil", "Spring", "Medium", "Daffodils herald the cheerful arrival of spring!", "🌼"),
        ("carnation", "Ruffled Pink Carnation", "Garden", "Medium", "Carnations have crinkly ruffled petal edges!", "🌸"),
        ("lavender", "Fragrant Purple Lavender", "Herb", "Easy", "Lavender flowers smell calming and sweet!", "🪻"),
        ("iris", "Royal Blue Iris", "Garden", "Hard", "Iris flowers are named after the Greek rainbow goddess!", "🌸"),
        ("cherry_blossom", "Sakura Cherry Blossom", "Tree", "Easy", "Sakura trees bloom in pink clouds in springtime!", "🌸"),
        ("peony", "Fluffy Pink Peony", "Garden", "Hard", "Peonies have hundreds of layered soft petals!", "🌸"),
        ("jasmine", "Night Blooming Jasmine", "Vine", "Easy", "Jasmine releases the sweetest scent at twilight!", "🌼"),
        ("poppy", "Wild Scarlet Poppy", "Wild", "Easy", "Red poppies dance lightly in breezy summer fields!", "🌺"),
        ("bluebell", "Enchanted Woodland Bluebell", "Woodland", "Medium", "Bluebells form carpets under tall forest oaks!", "🪻"),
        ("violet", "Sweet Forest Violet", "Woodland", "Easy", "Small purple violets tuck under green shade leaves!", "🌸"),
        ("chrysanthemum", "Autumn Chrysanthemum", "Autumn", "Hard", "Blooms in vibrant gold and bronze in the autumn!", "🌼"),
        ("dahlia", "Geometric Star Dahlia", "Garden", "Hard", "Dahlias have intricate spiral petal patterns!", "🌸"),
        ("magnolia_flower", "Grand White Magnolia", "Tree", "Medium", "Magnolias have thick leathery fragrant petals!", "🌸"),
        ("begonia", "Shady Coral Begonia", "Pot", "Easy", "Begonias flourish in cool shady cottage porches!", "🌺"),
        ("camellia", "Winter Rose Camellia", "Winter", "Medium", "Camellias brave the chilly frost and bloom proudly!", "🌸"),
        ("morning_glory", "Climbing Morning Glory", "Climber", "Easy", "Morning glories unfurl their bells as dawn breaks!", "🌺"),
        ("water_lily", "Floating Pond Water Lily", "Water", "Medium", "Frogs love sitting right beside floating water lilies!", "🪷"),
        ("sweet_pea", "Climbing Sweet Pea", "Climber", "Medium", "Sweet peas have delicate butterfly-wing petals!", "🌸"),
        ("anemone", "Windy Forest Anemone", "Wild", "Medium", "Also called windflowers because wind opens them!", "🌸"),
        ("zinnia", "Rainbow Fiesta Zinnia", "Annual", "Easy", "Zinnias attract dancing monarch butterflies!", "🌼"),
        ("geranium", "Window Box Geranium", "Balcony", "Easy", "Geraniums brighten sunny balconies around town!", "🌺")
    ]
    items = []
    for idx, (fid, title, cat, diff, fact, icon) in enumerate(flowers, 1):
        center = make_circle_points(cx=0.5, cy=0.42, r=0.08, n=12)
        # Petal outline around center
        petals = make_star_points(points_count=6, cx=0.5, cy=0.42, r_outer=0.22, r_inner=0.12)
        stem = [(0.5, 0.42), (0.5, 0.78)]
        leaf = [(0.5, 0.62), (0.64, 0.56), (0.5, 0.58)]

        items.append({
            "id": f"flower_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": center, "instruction": f"Trace the center core of {title}"},
                {"id": 2, "points": petals, "instruction": "Trace the beautiful blooming petals"},
                {"id": 3, "points": stem, "instruction": "Trace the green supporting flower stem"},
                {"id": 4, "points": leaf, "instruction": "Trace the side sun-catching leaf"}
            ]
        })
    return items

def get_62_tree_items():
    trees = [
        ("oak_tree", "Mighty Majestic Oak", "Deciduous", "Medium", "Oak trees produce smooth acorns that squirrels adore!", "🌳"),
        ("pine_tree", "Evergreen Forest Pine", "Conifer", "Easy", "Pine needles stay fresh and green all winter long!", "🌲"),
        ("palm_tree", "Sunny Beach Coconut Palm", "Tropical", "Easy", "Palm fronds sway over warm tropical ocean shores!", "🌴"),
        ("maple_tree", "Golden Autumn Maple", "Deciduous", "Medium", "Maple sap boils down into sweet yummy pancake syrup!", "🍁"),
        ("willow_tree", "Weeping River Willow", "River", "Hard", "Long graceful branches sweep down to touch water!", "🌳"),
        ("birch_tree", "White Paper Birch", "Forest", "Medium", "Birch trees have papery silver-white striped bark!", "🌳"),
        ("apple_tree", "Orchard Sweet Apple Tree", "Fruit", "Easy", "Full of red crunchy apples ready to pick in fall!", "🍎"),
        ("redwood_tree", "Giant California Redwood", "Conifer", "Hard", "The tallest living trees on Earth, older than castles!", "🌲"),
        ("baobab_tree", "African Bottle Baobab", "Exotic", "Hard", "Baobab trunks store thousands of liters of rainwater!", "🌳"),
        ("cedar_tree", "Fragrant Mountain Cedar", "Conifer", "Medium", "Cedar wood smells wonderful and repels insects!", "🌲"),
        ("banyan_tree", "Sacred Sprawling Banyan", "Tropical", "Hard", "Aerial prop roots grow down into dozens of trunks!", "🌳"),
        ("bonsai_tree", "Miniature Zen Bonsai", "Zen", "Hard", "Trained with care to look like tiny ancient trees!", "🪴"),
        ("cherry_tree", "Pink Blossom Cherry Tree", "Blossom", "Medium", "Spreads a sea of pink confetti petals in April!", "🌸"),
        ("cypress_tree", "Slender Italian Cypress", "Mediterranean", "Easy", "Stands straight like a green brush painting the sky!", "🌲"),
        ("elm_tree", "Grand Shady Elm", "Deciduous", "Medium", "Spreads wide green arches over city park walks!", "🌳"),
        ("ash_tree", "Sturdy Woodland Ash", "Woodland", "Medium", "Strong flexible wood is used to craft baseball bats!", "🌳"),
        ("eucalyptus", "Koala Australian Gum Tree", "Australian", "Medium", "Koala bears love to snooze high in gum tree branches!", "🐨"),
        ("magnolia_tree", "Southern White Magnolia", "Flowering", "Medium", "Features glossy green leaves and giant white blooms!", "🌳"),
        ("olive_tree", "Ancient Mediterranean Olive", "Fruit", "Hard", "Some olive trees have been fruiting for 2,000 years!", "🫒"),
        ("jacaranda", "Purple Cloud Jacaranda", "Tropical", "Hard", "Blankets entire avenues with violet-purple flowers!", "🌳"),
        ("fir_tree", "Silver Mountain Fir", "Conifer", "Easy", "Traditional holiday trees that smell like pine forest!", "🎄"),
        ("aspen_tree", "Quaking Golden Aspen", "Mountain", "Medium", "Golden leaves tremble and whisper in the wind!", "🍂"),
        ("beech_tree", "Smooth Grey Beech", "Forest", "Medium", "Beech nuts feed woodland birds during chilly winters!", "🌳"),
        ("chestnut_tree", "Sweet Horse Chestnut", "Nut", "Medium", "Produces shiny brown conker chestnuts in spiked cups!", "🌰"),
        ("coconut_palm", "Island Coconut Palm", "Tropical", "Easy", "Coconuts drift across ocean waves to new islands!", "🥥"),
        ("fig_tree", "Sweet Wild Fig Tree", "Fruit", "Medium", "Broad lobed leaves and sweet purple delicious figs!", "🌳"),
        ("spruce_tree", "Blue Colorado Spruce", "Conifer", "Easy", "Silvery-blue frosted needles glisten in snowfall!", "🌲"),
        ("mahogany_tree", "Dense Tropical Mahogany", "Rainforest", "Hard", "Strong prized wood from deep lush rainforests!", "🌳"),
        ("ginkgo_tree", "Ancient Maidenhair Ginkgo", "Ancient", "Medium", "Living fossil tree with beautiful fan-shaped leaves!", "🍂"),
        ("joshua_tree", "Mojave Desert Joshua Tree", "Desert", "Hard", "Twisted spiky branches thrive in sunny desert sands!", "🌵")
    ]
    items = []
    for idx, (tid, title, cat, diff, fact, icon) in enumerate(trees, 1):
        trunk = [(0.46, 0.85), (0.46, 0.52), (0.54, 0.52), (0.54, 0.85)]
        if "Conifer" in cat or "Palm" in cat:
            crown = [(0.5, 0.18), (0.75, 0.55), (0.25, 0.55), (0.5, 0.18)]
        else:
            crown = make_circle_points(cx=0.5, cy=0.38, r=0.22, n=16)

        items.append({
            "id": f"tree_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": trunk, "instruction": f"Trace the strong wooden trunk of {title}"},
                {"id": 2, "points": crown, "instruction": "Trace the leafy crown reaching for the sky"}
            ]
        })
    return items

def get_63_leaf_items():
    leaves = [
        ("maple_leaf", "Pointed Maple Leaf", "Deciduous", "Medium", "Featured on the Canadian flag with sharp lobes!", "🍁"),
        ("oak_leaf", "Lobed Forest Oak Leaf", "Deciduous", "Medium", "Wavy rounded margins shelter sleeping acorns!", "🍃"),
        ("palm_frond", "Feathery Palm Frond", "Tropical", "Hard", "Long arched leaflets fan out like green feathers!", "🌴"),
        ("birch_leaf", "Serrated Birch Leaf", "Forest", "Easy", "Triangular leaf with neatly toothed jagged edges!", "🍃"),
        ("fern_frond", "Lacy Forest Fern Frond", "Woodland", "Hard", "Unrolls gracefully from a coiled baby fiddlehead!", "🌿"),
        ("clover_leaf", "Lucky Four Leaf Clover", "Meadow", "Easy", "Finding a rare four leaf clover brings good luck!", "🍀"),
        ("willow_leaf", "Slender Willow Blade", "River", "Easy", "Narrow, ribbon-like leaf that dances in raindrops!", "🍃"),
        ("pine_needle", "Twin Pine Needle Pair", "Conifer", "Easy", "Slender waxy needles conserve water in winter cold!", "🌲"),
        ("ginkgo_leaf", "Fan Shaped Ginkgo Leaf", "Ancient", "Medium", "Distinctive fan shape turns bright golden butter yellow!", "🍂"),
        ("monstera_leaf", "Swiss Cheese Monstera", "Houseplant", "Hard", "Has natural oval holes and deep artistic cutaways!", "🪴"),
        ("ivy_leaf", "Climbing English Ivy", "Climber", "Medium", "Tri-lobed leaf that climbs high up stone castle walls!", "🌿"),
        ("banana_leaf", "Giant Tropical Banana Leaf", "Tropical", "Medium", "Huge waterproof leaves make natural jungle umbrellas!", "🍌"),
        ("eucalyptus_leaf", "Curved Gum Leaf", "Australian", "Easy", "Sickle-shaped leaf full of refreshing aromatic oil!", "🐨"),
        ("fig_leaf", "Broad Five-Lobe Fig Leaf", "Fruit", "Hard", "Ancient symbol of protection with deep finger lobes!", "🍃"),
        ("chestnut_leaf", "Spike Toothed Chestnut", "Nut", "Medium", "Long oval blade with crisp pointed needle teeth!", "🌰"),
        ("olive_leaf", "Silver Underside Olive", "Mediterranean", "Easy", "Silvery underside reflects bright Mediterranean heat!", "🫒"),
        ("cherry_leaf", "Oval Cherry Leaf", "Fruit", "Easy", "Double-toothed margins that turn ruby red in autumn!", "🍒"),
        ("lime_leaf", "Fragrant Kaffir Lime Leaf", "Citrus", "Medium", "Double-lobed hour glass leaf adds citrus perfume!", "🍋"),
        ("rose_leaf", "Compound Rose Leaflet", "Garden", "Medium", "Features pairs of leaflets with tiny saw-tooth edges!", "🌹"),
        ("grape_leaf", "Vineyard Grape Leaf", "Vine", "Hard", "Palmate leaf used to wrap tasty Mediterranean foods!", "🍇"),
        ("sycamore_leaf", "Giant Broad Sycamore", "Deciduous", "Hard", "Broad 5-pointed leaf casting cool summer shade!", "🍁"),
        ("aspen_leaf", "Heart Quaking Aspen", "Mountain", "Easy", "Flat stalk allows leaf to flutter at the slightest puff!", "🍂"),
        ("beech_leaf", "Glossy Wavy Beech Leaf", "Forest", "Easy", "Silky hairy veins in spring, turning golden copper!", "🍃"),
        ("holly_leaf", "Prickly Winter Holly", "Evergreen", "Medium", "Sharp spiny corners keep hungry deer from eating it!", "🌿"),
        ("laurel_leaf", "Noble Bay Laurel Leaf", "Herb", "Easy", "Chefs simmer sweet bay leaves in comforting soups!", "🍃"),
        ("papaya_leaf", "Star Lobed Papaya Leaf", "Tropical", "Hard", "Intricately segmented leaf looks like a tropical star!", "🍈"),
        ("teak_leaf", "Giant Velvety Teak Leaf", "Timber", "Medium", "Leaves can grow as big as a kid's school backpack!", "🍃"),
        ("bamboo_leaf", "Sharp Lance Bamboo Leaf", "Grass", "Easy", "Giant pandas munch these tender bamboo leaves daily!", "🎋"),
        ("lotus_leaf", "Round Floating Lotus Pad", "Water", "Medium", "Raindrops bead up and roll off without wetting it!", "🪷"),
        ("mint_leaf", "Cool Peppermint Leaf", "Herb", "Easy", "Crushing this leaf gives a delightfully fresh scent!", "🌱")
    ]
    items = []
    for idx, (lid, title, cat, diff, fact, icon) in enumerate(leaves, 1):
        outline = [(0.5, 0.82), (0.32, 0.52), (0.5, 0.16), (0.68, 0.52), (0.5, 0.82)]
        midrib = [(0.5, 0.82), (0.5, 0.18)]
        vein1 = [(0.5, 0.55), (0.62, 0.45)]
        vein2 = [(0.5, 0.45), (0.38, 0.35)]

        items.append({
            "id": f"leaf_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": outline, "instruction": f"Trace the outer edge of {title}"},
                {"id": 2, "points": midrib, "instruction": "Trace the central supporting midrib vein"},
                {"id": 3, "points": vein1, "instruction": "Trace the right side nutrient vein"},
                {"id": 4, "points": vein2, "instruction": "Trace the left side nutrient vein"}
            ]
        })
    return items

def get_64_rainbow_items():
    items = []
    rainbow_names = [
        ("Classic 7-Arch Rainbow", "Red, orange, yellow, green, blue, indigo, violet!", "🌈", "Classic"),
        ("Double Sky Rainbow", "Sometimes a fainter secondary rainbow forms outside!", "🌈", "Double"),
        ("Fluffy Cloud Rainbow", "Grows straight out of two happy smiling white clouds!", "⛅", "Cloud"),
        ("Pastel Baby Rainbow", "Gentle baby pastel tints like pink, mint and lavender!", "🎨", "Pastel"),
        ("Sparkling Star Rainbow", "Twinkling golden stars dance along the arched curves!", "✨", "Sparkle"),
        ("Heart Shaped Rainbow", "Curved into a giant loving heart in the bright blue sky!", "💖", "Love"),
        ("Whirling Spiral Rainbow", "Loops round and round like a magic spinning top!", "🌀", "Spiral"),
        ("Mountain Peak Rainbow", "Arches over snowy mountain ridges after a summer shower!", "🏔️", "Mountain"),
        ("Waterfall Mist Rainbow", "Continuous rainbows sparkle in the spray of waterfalls!", "🌊", "Water"),
        ("Ocean Horizon Rainbow", "Dips its colorful ends right into the blue salty ocean!", "🌊", "Ocean"),
        ("Sunny Daybreak Rainbow", "A bright morning rainbow with smiling sunbeams!", "☀️", "Sun"),
        ("Starlight Midnight Bow", "Moonbeams create rare nighttime white moonbows!", "🌙", "Moon"),
        ("Fairytale Castle Rainbow", "Frames fairytale towers where magical stories live!", "🏰", "Castle"),
        ("Sunset Crimson Rainbow", "Sunset turns the sky fiery amber and crimson rose!", "🌅", "Sunset"),
        ("Neon Electric Rainbow", "Ultra-bright neon paths glowing against twilight!", "⚡", "Neon"),
        ("Rainforest Canopy Bow", "Connects two green canopy trees over sleeping toucans!", "🦜", "Forest"),
        ("Hot Air Balloon Rainbow", "Float past rainbow arches in a cozy wicker basket!", "🎈", "Balloon"),
        ("Sweet Dream Rainbow", "Flies through sweet dreams while kids are snoozing!", "💤", "Dream"),
        ("Fairy Dust Rainbow", "Tiny magical fairies sprinkle glittering rainbow dust!", "🧚", "Fairy"),
        ("Silver Crescent Bow", "Ties around the smiling crescent moon like a ribbon!", "🌙", "Celestial"),
        ("Cosmic Nebula Rainbow", "Swirls in deep outer space among distant galaxy stars!", "🌌", "Cosmic"),
        ("Prism Crystal Rainbow", "Glass crystals split white sunlight into pure colors!", "💎", "Crystal"),
        ("Butterfly Wing Rainbow", "Reflects in the iridescent wings of morpho butterflies!", "🦋", "Nature"),
        ("Twisted Ribbon Rainbow", "Twirls like a gymnast's colorful satin ribbon in air!", "🎀", "Ribbon"),
        ("Island Oasis Rainbow", "Touches golden sandy shores under coconut palms!", "🏝️", "Island"),
        ("Rainbow Roller Bridge", "A bridge made of solid light that bears slide down!", "🌉", "Bridge"),
        ("Curling Wave Rainbow", "Surfers catch glassy waves glowing with rainbow light!", "🏄", "Wave"),
        ("Triple Arch Rainbow", "Three rainbow rings bending over emerald green fields!", "🌈", "Triple"),
        ("Magic Wand Rainbow", "Shoots from the glowing tip of a wizard's gold wand!", "🪄", "Magic"),
        ("Pot of Gold Rainbow", "Leads straight to a shiny pot of golden chocolate coins!", "🪙", "Treasure")
    ]
    for idx, (title, fact, icon, cat) in enumerate(rainbow_names, 1):
        arc1 = make_arc_points(cx=0.5, cy=0.68, r=0.38, start_deg=180, sweep_deg=180, n=16)
        arc2 = make_arc_points(cx=0.5, cy=0.68, r=0.30, start_deg=180, sweep_deg=180, n=16)
        arc3 = make_arc_points(cx=0.5, cy=0.68, r=0.22, start_deg=180, sweep_deg=180, n=16)

        items.append({
            "id": f"rainbow_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": "Easy" if idx <= 10 else ("Medium" if idx <= 20 else "Hard"),
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": arc1, "instruction": f"Trace the outer arch of {title}"},
                {"id": 2, "points": arc2, "instruction": "Trace the middle colorful rainbow band"},
                {"id": 3, "points": arc3, "instruction": "Trace the inner glowing curved arch"}
            ]
        })
    return items

def get_65_sun_moon_items():
    celestials = [
        ("smiling_sun", "Happy Smiling Sun", "Sun", "Easy", "The sun gives warmth and light to every plant on Earth!", "☀️"),
        ("crescent_moon", "Silver Crescent Moon", "Moon", "Easy", "Looks like a glowing silver fingernail in the sky!", "🌙"),
        ("full_moon", "Bright Round Full Moon", "Moon", "Easy", "Shines like a giant nightlight when you go to bed!", "🌕"),
        ("sunburst", "Radiant Sunburst", "Sun", "Medium", "Sun rays travel 93 million miles in just 8 minutes!", "🌞"),
        ("solar_eclipse", "Corona Solar Eclipse", "Eclipse", "Hard", "The moon passes right between Earth and the bright sun!", "🌑"),
        ("lunar_eclipse", "Blood Red Lunar Eclipse", "Eclipse", "Hard", "Earth casts a reddish shadow over the full moon!", "🌖"),
        ("half_moon", "Quarter Half Moon", "Moon", "Easy", "Half is glowing bright and half rests in dark shadow!", "🌓"),
        ("starry_sun", "Cosmic Star Sun", "Sun", "Medium", "Our sun is actually a glowing star among billions!", "⭐"),
        ("sleepy_moon", "Sleepy Nighttime Moon", "Moon", "Easy", "Wearing a little nightcap and closing drowsy eyes!", "🌙"),
        ("morning_sun", "Sunrise Dawn Sun", "Sun", "Easy", "Roosters crow cock-a-doodle-doo when morning dawn arrives!", "🌅"),
        ("silver_crescent", "Gleaming Silver Horns", "Moon", "Medium", "Crescent tips are called the horns of the moon!", "🌙"),
        ("golden_sol", "Golden Helios Sun", "Sun", "Medium", "Ancient Greeks thought the sun was pulled by gold horses!", "☀️"),
        ("cloud_moon", "Moon Behind Cloud", "Night", "Medium", "Peeks gently through wispy nighttime cloud blankets!", "⛅"),
        ("harvest_moon", "Orange Harvest Moon", "Moon", "Medium", "Rises big and orange to help farmers harvest crops!", "🌕"),
        ("sun_flares", "Solar Prominence Sun", "Sun", "Hard", "Giant fiery magnetic loops dance on the sun's surface!", "☀️"),
        ("waning_crescent", "Early Morning Waning Moon", "Moon", "Easy", "Seen right before dawn as the stars begin to fade!", "🌘"),
        ("waxing_gibbous", "Growing Waxing Gibbous", "Moon", "Medium", "Growing fatter each night until it becomes full!", "🌔"),
        ("noon_blaze", "High Noon Brilliant Sun", "Sun", "Medium", "At noon, shadows shrink right under your sneakers!", "☀️"),
        ("mystic_moon", "Mystic Silver Moon", "Fantasy", "Hard", "Ancient sailors navigated stormy seas using the moon!", "🌙"),
        ("summer_solstice", "Summer Solstice Sun", "Sun", "Hard", "The longest day of the whole sunny year!", "☀️"),
        ("winter_solstice", "Frosty Winter Solstice", "Winter", "Hard", "The shortest day where night comes early and cozy!", "❄️"),
        ("blue_moon", "Once in a Blue Moon", "Moon", "Medium", "Having two full moons in a single calendar month is rare!", "🌕"),
        ("twilight_sun", "Sunset Twilight Sun", "Sunset", "Easy", "Colors the evening clouds in peach, plum and gold!", "🌇"),
        ("craters_moon", "Cratered Moon Surface", "Science", "Hard", "Astronaut footprints on the dusty moon will last forever!", "🌕"),
        ("tribal_sun", "Tribal Spiral Sun", "Art", "Hard", "Ancient cultures carved swirling suns into stone walls!", "🌞"),
        ("fairy_moon", "Fairy Cradle Moon", "Fantasy", "Medium", "Little magical sprites swing from the bottom tip!", "🌙"),
        ("zenith_sun", "Equator Zenith Sun", "Sun", "Medium", "Shines directly overhead on tropical sunny islands!", "☀️"),
        ("supermoon", "Gigantic Perigee Supermoon", "Moon", "Medium", "Looks 14% larger and 30% brighter in the sky!", "🌕"),
        ("compass_sun", "Explorer Compass Sun", "Navigation", "Hard", "Rising in the east and setting gently in the west!", "🧭"),
        ("cosmic_duo", "Sun & Moon Celestial Duo", "Duo", "Hard", "Together they create tides, days, nights and seasons!", "🌗")
    ]
    items = []
    for idx, (cid, title, cat, diff, fact, icon) in enumerate(celestials, 1):
        if "Moon" in cat or "Eclipse" in cat or "crescent" in cid:
            outer = make_arc_points(cx=0.5, cy=0.5, r=0.32, start_deg=-90, sweep_deg=180, n=16)
            inner = make_arc_points(cx=0.4, cy=0.5, r=0.28, start_deg=90, sweep_deg=-180, n=16)
            strokes = [
                {"id": 1, "points": outer, "instruction": f"Trace the curved outer crescent of {title}"},
                {"id": 2, "points": inner, "instruction": "Trace the inner shadow arc"}
            ]
        else:
            disc = make_circle_points(cx=0.5, cy=0.5, r=0.22, n=16)
            rays = make_star_points(points_count=8, cx=0.5, cy=0.5, r_outer=0.38, r_inner=0.26)
            strokes = [
                {"id": 1, "points": disc, "instruction": f"Trace the round central disc of {title}"},
                {"id": 2, "points": rays, "instruction": "Trace the warm radiant sun rays"}
            ]

        items.append({
            "id": f"sun_moon_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": strokes
        })
    return items

def get_66_cloud_items():
    clouds = [
        ("fluffy_cumulus", "Fluffy White Cumulus", "Fair", "Easy", "Cumulus clouds look like giant heaps of mashed potatoes!", "☁️"),
        ("rainy_nimbus", "Drizzling Rain Cloud", "Rain", "Easy", "Carries cool refreshing raindrops for thirsty flowers!", "🌧️"),
        ("thunder_cloud", "Booming Thundercloud", "Storm", "Hard", "Rumbles with loud thunder and flashes lightning!", "⛈️"),
        ("snowy_cloud", "Chilly Snowdrift Cloud", "Winter", "Medium", "Drops millions of unique geometric snowflakes!", "🌨️"),
        ("rainbow_cloud", "Cloud with Rainbow", "Rainbow", "Easy", "Sun shines through raindrops to form magic colors!", "⛅"),
        ("swirling_wind", "Wind Whirl Breeze", "Wind", "Medium", "Wind is air rushing from cool places to warm places!", "💨"),
        ("sunset_pink", "Cotton Candy Sunset Cloud", "Sunset", "Easy", "Dust in the air turns sunset clouds cotton candy pink!", "☁️"),
        ("cirrus_feathers", "Wispy High Cirrus", "High", "Hard", "High in the freezing sky, made entirely of ice crystals!", "☁️"),
        ("stratus_blanket", "Low Gray Stratus Layer", "Low", "Medium", "Covers the whole sky like a soft gray bedsheet!", "☁️"),
        ("heart_cloud", "Floating Heart Cloud", "Fun", "Easy", "Wind occasionally sculpts playful cloud shapes!", "💖"),
        ("star_cloud", "Shining Cloud Star", "Fun", "Medium", "Looks like a glowing star floating in daytime sky!", "⭐"),
        ("smiling_puffy", "Smiling Puffy Cloud", "Fun", "Easy", "Beams happily down at kids playing in the park!", "☁️"),
        ("cotton_candy", "Pink Fairground Cloud", "Sunset", "Easy", "Looks sweet enough to eat on a wooden stick!", "☁️"),
        ("storm_tempest", "Dark Swirling Tempest", "Storm", "Hard", "Ships drop heavy anchors when tempest clouds loom!", "🌩️"),
        ("tornado_funnel", "Twirling Funnel Cloud", "Storm", "Hard", "Spinning vortex of wind reaching toward the ground!", "🌪️"),
        ("morning_fog", "Misty Ground Fog", "Mist", "Easy", "A cloud that sits right on the grass like cool steam!", "🌫️"),
        ("golden_sunrise", "Golden Morning Horizon", "Dawn", "Easy", "Catches the very first golden rays of daybreak!", "🌅"),
        ("jet_contrail", "High Flying Jet Stream", "Aviation", "Easy", "Airplanes leave white vapor trails across the blue!", "✈️"),
        ("dream_bubble", "Dreaming Thought Cloud", "Fun", "Easy", "Comic books use fluffy clouds for bright ideas!", "💭"),
        ("silver_lining", "Cloud with Silver Lining", "Hope", "Medium", "Every cloud has a silver lining when sun shines through!", "⛅"),
        ("mountain_cap", "Lenticular Mountain Cap", "Alpine", "Hard", "Looks like a smooth flying saucer resting on a peak!", "🏔️"),
        ("desert_mirage", "Desert Thermal Cloud", "Desert", "Medium", "Heat thermals rise from hot sand to form puffy clouds!", "☁️"),
        ("moonlight_cloud", "Silver Midnight Cloud", "Night", "Medium", "Lit by the cool glow of the midnight full moon!", "🌙"),
        ("autumn_breeze", "Breezy Autumn Gust", "Autumn", "Easy", "Blows yellow and red maple leaves across streets!", "🍃"),
        ("ice_crystal_halo", "Sun Dog Ice Halo", "Optical", "Hard", "Ice crystals refract sunlight into twin mock suns!", "☀️"),
        ("monsoon_downpour", "Tropical Monsoon Cloud", "Monsoon", "Hard", "Drenches rice paddies in life-giving summer rains!", "🌧️"),
        ("puffy_sheep", "Sky Sheep Cloud", "Fun", "Easy", "A flock of fluffy sheep wandering across the blue sky!", "🐑"),
        ("cozy_blanket", "Cozy Winter Overcast", "Winter", "Easy", "Keeps the ground warm like a fleece quilt!", "☁️"),
        ("electric_arc", "Lightning Bolt Cloud", "Storm", "Hard", "Lightning heats air five times hotter than the sun!", "⚡"),
        ("sunny_partly", "Partly Sunny Sky Cloud", "Fair", "Easy", "Just a few cheerful clouds dotting a sunny afternoon!", "🌤️")
    ]
    items = []
    for idx, (cid, title, cat, diff, fact, icon) in enumerate(clouds, 1):
        # Fluffy cloud lobes
        c1 = make_arc_points(cx=0.35, cy=0.48, r=0.14, start_deg=180, sweep_deg=140, n=8)
        c2 = make_arc_points(cx=0.52, cy=0.42, r=0.18, start_deg=220, sweep_deg=130, n=8)
        c3 = make_arc_points(cx=0.68, cy=0.48, r=0.14, start_deg=260, sweep_deg=140, n=8)
        base = [(0.78, 0.58), (0.24, 0.58)]
        strokes = [
            {"id": 1, "points": c1, "instruction": f"Trace the left cloud puff of {title}"},
            {"id": 2, "points": c2, "instruction": "Trace the tall middle puff"},
            {"id": 3, "points": c3, "instruction": "Trace the right cloud puff"},
            {"id": 4, "points": base, "instruction": "Trace the flat cloud bottom"}
        ]
        if "Rain" in cat or "Storm" in cat:
            drops = [(0.35, 0.65), (0.35, 0.76)]
            drops2 = [(0.5, 0.65), (0.5, 0.76)]
            drops3 = [(0.65, 0.65), (0.65, 0.76)]
            strokes.append({"id": 5, "points": drops, "instruction": "Trace falling raindrops"})
            strokes.append({"id": 6, "points": drops2, "instruction": "Trace more raindrops"})
            strokes.append({"id": 7, "points": drops3, "instruction": "Trace the last raindrop"})

        items.append({
            "id": f"cloud_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": strokes
        })
    return items

def get_67_mountain_items():
    mountains = [
        ("snow_peak", "Glittering Snow Peak", "Alpine", "Easy", "Snow stays frozen on high summits all year long!", "🏔️"),
        ("twin_peaks", "Double Alpine Twin Peaks", "Alpine", "Medium", "Twin sister peaks standing side-by-side in harmony!", "⛰️"),
        ("volcano_cone", "Smoking Volcanic Cone", "Volcano", "Medium", "Lava builds steep symmetrical cones over centuries!", "🌋"),
        ("mount_fuji", "Sacred Mount Fuji", "Iconic", "Hard", "Japan's symmetrical snow-capped volcanic mountain!", "🗻"),
        ("rocky_ridge", "Jagged Rocky Ridge", "Ridge", "Hard", "Goats with rubbery hooves climb shear granite cliffs!", "⛰️"),
        ("forest_foothills", "Rolling Green Foothills", "Hills", "Easy", "Gentle green hills lead up to tall rocky giants!", "🏕️"),
        ("canyon_mesa", "Flat Topped Red Mesa", "Desert", "Medium", "Water and wind carved a giant flat tabletop mountain!", "🏜️"),
        ("matterhorn", "Sharp Alpine Matterhorn", "Alpine", "Hard", "Four steep triangular faces meet at a sharp point!", "🏔️"),
        ("desert_dunes", "Golden Sand Dune Mountain", "Desert", "Easy", "Wind constantly reshapes dunes like frozen waves!", "🏜️"),
        ("everest_summit", "Mount Everest Top", "Summit", "Hard", "The highest point above sea level on Planet Earth!", "🏔️"),
        ("glacier_valley", "U-Shaped Glacier Valley", "Glacier", "Hard", "Heavy crawling glaciers carve smooth U-shaped valleys!", "🏔️"),
        ("waterfall_peak", "Waterfall Cascading Peak", "Water", "Medium", "Melting summit snow forms crystal clear waterfalls!", "🏞️"),
        ("sunset_silhouette", "Sunset Purple Silhouette", "Sunset", "Easy", "Mountains turn royal purple against orange sunsets!", "🌄"),
        ("misty_peaks", "Misty Cloud Wrapped Peaks", "Atmospheric", "Medium", "Clouds wrap around mountains like fluffy white scarves!", "⛰️"),
        ("pine_valley", "Pine Forest Valley Peak", "Valley", "Medium", "Scent of pine needles fills the crisp mountain air!", "🌲"),
        ("castle_rock", "Towering Castle Rock", "Rock", "Hard", "Ancient eroded fortress made of natural sandstone!", "⛰️"),
        ("sunrise_golden", "Alpenglow Sunrise Peak", "Dawn", "Easy", "Early dawn turns white snow into rosy alpenglow!", "🌅"),
        ("crystal_mountain", "Quartz Crystal Mountain", "Mineral", "Hard", "Veins of sparkling quartz crystals glitter in sun!", "💎"),
        ("rainbow_mountain", "Peruvian Rainbow Mountain", "Geology", "Hard", "Natural mineral layers create colorful striped slopes!", "⛰️"),
        ("starry_peak", "Midnight Starlit Mountain", "Night", "Medium", "Campers look up at the Milky Way above the ridge!", "🌌"),
        ("oasis_mountain", "Palm Tree Oasis Mountain", "Desert", "Easy", "Fresh springs bubble up at the foot of dry cliffs!", "🌴"),
        ("valley_gorge", "Deep River Gorge Canyon", "Canyon", "Hard", "Rivers carve deep chasms through billion-year rocks!", "🏞️"),
        ("plateau_highland", "Highland Green Plateau", "Plateau", "Medium", "Sheep graze on peaceful high mountain pastures!", "🐑"),
        ("iceberg_peak", "Floating Arctic Ice Mountain", "Polar", "Hard", "Nine tenths of an iceberg is hidden underwater!", "🧊"),
        ("granite_tor", "Moorland Granite Tor", "Rock", "Medium", "Stacked granite slabs sculpted by winter storms!", "⛰️"),
        ("crater_lake", "Blue Water Crater Mountain", "Volcano", "Hard", "Ancient volcano holds deep sapphire blue water!", "🏞️"),
        ("sierra_spine", "Sawtooth Sierra Mountain", "Ridge", "Hard", "Looks just like the serrated teeth of a giant saw!", "⛰️"),
        ("meadow_pass", "Wildflower Mountain Pass", "Pass", "Easy", "Hikers follow trails filled with yellow buttercups!", "🌼"),
        ("highland_hills", "Scottish Highland Bens", "Highland", "Easy", "Covered in fragrant purple heather and clear burns!", "🏴󠁧󠁢󠁳󠁣󠁴󠁿"),
        ("pyramid_peak", "Natural Pyramid Peak", "Alpine", "Hard", "Glaciers on all four sides carved a perfect pyramid!", "🏔️")
    ]
    items = []
    for idx, (mid, title, cat, diff, fact, icon) in enumerate(mountains, 1):
        m1 = [(0.12, 0.78), (0.5, 0.28), (0.88, 0.78)]
        snow = [(0.38, 0.44), (0.44, 0.48), (0.5, 0.44), (0.56, 0.48), (0.62, 0.44)]
        base = [(0.06, 0.78), (0.94, 0.78)]

        items.append({
            "id": f"mountain_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": m1, "instruction": f"Trace the soaring pyramid peak of {title}"},
                {"id": 2, "points": snow, "instruction": "Trace the snowy summit cap line"},
                {"id": 3, "points": base, "instruction": "Trace the valley ground base line"}
            ]
        })
    return items

def get_68_fruit_items():
    fruits = [
        ("apple", "Crisp Red Apple", "Pome", "Easy", "An apple a day keeps the doctor away!", "🍎"),
        ("banana", "Sweet Yellow Banana", "Tropical", "Easy", "Monkeys love peeling ripe yellow bananas!", "🍌"),
        ("orange", "Juicy Citrus Orange", "Citrus", "Easy", "Packed with vitamin C to keep you strong and healthy!", "🍊"),
        ("strawberry", "Sweet Red Strawberry", "Berry", "Easy", "The only fruit with seeds on the outside!", "🍓"),
        ("grapes", "Bunch of Purple Grapes", "Vine", "Medium", "Grow in sweet hanging clusters on climbing vines!", "🍇"),
        ("watermelon", "Cool Summer Watermelon", "Melon", "Easy", "Over 90% pure refreshing sweet water!", "🍉"),
        ("pineapple", "Golden Crown Pineapple", "Tropical", "Hard", "Takes almost three years to grow one sweet pineapple!", "🍍"),
        ("mango", "King of Fruits Mango", "Tropical", "Medium", "Sweet, juicy and golden inside with a large seed!", "🥭"),
        ("peach", "Fuzzy Sweet Peach", "Stone", "Easy", "Has velvety soft fuzz and sweet honey-flavored juice!", "🍑"),
        ("cherry", "Twin Red Cherries", "Stone", "Easy", "Grow joined together on green twin stems!", "🍒"),
        ("lemon", "Zesty Sour Lemon", "Citrus", "Easy", "Sour taste makes you pucker your lips and smile!", "🍋"),
        ("blueberry", "Round Wild Blueberry", "Berry", "Easy", "Deep blue color comes from healthy antioxidants!", "🫐"),
        ("kiwi", "Fuzzy Brown Kiwi", "Exotic", "Medium", "Fuzzy brown outside, bright emerald green inside!", "🥝"),
        ("papaya", "Tropical Melon Papaya", "Tropical", "Medium", "Filled with round shiny black peppery seeds!", "🍈"),
        ("coconut", "Hairy Tropical Coconut", "Palm", "Hard", "Contains sweet refreshing coconut water inside!", "🥥"),
        ("avocado", "Creamy Green Avocado", "Tropical", "Medium", "Creamy and rich with a big round wooden seed!", "🥑"),
        ("pear", "Bell Shaped Sweet Pear", "Pome", "Easy", "Gets wider at the bottom like a little green bell!", "🍐"),
        ("plum", "Deep Purple Juicy Plum", "Stone", "Easy", "Sweet purple skin with golden delicious flesh!", "🫐"),
        ("raspberry", "Thimble Ruby Raspberry", "Berry", "Medium", "Looks like a little bumpy red hollow thimble!", "🫐"),
        ("pomegranate", "Ruby Jewel Pomegranate", "Exotic", "Hard", "Packed with hundreds of ruby jewel-like sweet seeds!", "🍎"),
        ("fig", "Purple Honey Fig", "Ficus", "Medium", "One of the oldest sweet fruits cultivated by humans!", "🫐"),
        ("guava", "Pink Tropical Guava", "Tropical", "Medium", "Smells like a tropical paradise with pink center!", "🍈"),
        ("dragonfruit", "Spiky Pink Dragonfruit", "Cactus", "Hard", "Grows on cactus vines with dazzling pink scales!", "🐉"),
        ("blackberry", "Shiny Wild Blackberry", "Berry", "Medium", "Turns from green to red, and finally to deep black!", "🫐"),
        ("apricot", "Golden Velvet Apricot", "Stone", "Easy", "Golden orange color with a sweet velvety aroma!", "🍑"),
        ("cantaloupe", "Sweet Cantaloupe Melon", "Melon", "Medium", "Has a textured netting pattern on its outer rind!", "🍈"),
        ("lime", "Bright Green Tart Lime", "Citrus", "Easy", "Adds a fresh tangy zing to tropical drinks!", "🍋"),
        ("passionfruit", "Purple Passion Fruit", "Vine", "Hard", "Filled with aromatic orange pulp and crunchy seeds!", "🫐"),
        ("grapefruit", "Pink Ruby Grapefruit", "Citrus", "Medium", "Grows in clusters on trees just like giant grapes!", "🍊"),
        ("starfruit", "Golden Five-Point Starfruit", "Exotic", "Hard", "When sliced crosswise, each slice is a perfect star!", "⭐")
    ]
    items = []
    for idx, (fid, title, cat, diff, fact, icon) in enumerate(fruits, 1):
        if fid == "banana":
            body = make_arc_points(cx=0.5, cy=0.5, r=0.32, start_deg=-60, sweep_deg=120, n=16)
            stem = [(0.66, 0.22), (0.7, 0.2)]
            strokes = [
                {"id": 1, "points": body, "instruction": f"Trace the gentle curve of {title}"},
                {"id": 2, "points": stem, "instruction": "Trace the banana stem tip"}
            ]
        elif fid == "strawberry":
            body = [(0.5, 0.78), (0.28, 0.42), (0.38, 0.3), (0.5, 0.35), (0.62, 0.3), (0.72, 0.42), (0.5, 0.78)]
            calyx = [(0.4, 0.3), (0.5, 0.24), (0.6, 0.3)]
            strokes = [
                {"id": 1, "points": body, "instruction": f"Trace the heart shape of {title}"},
                {"id": 2, "points": calyx, "instruction": "Trace the green leafy strawberry crown"}
            ]
        else:
            body = make_circle_points(cx=0.5, cy=0.52, r=0.26, n=16)
            stem = [(0.5, 0.26), (0.5, 0.16)]
            leaf = [(0.5, 0.2), (0.64, 0.14), (0.55, 0.22)]
            strokes = [
                {"id": 1, "points": body, "instruction": f"Trace the round delicious body of {title}"},
                {"id": 2, "points": stem, "instruction": "Trace the fruit stem"},
                {"id": 3, "points": leaf, "instruction": "Trace the attached green leaf"}
            ]

        items.append({
            "id": f"fruit_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": strokes
        })
    return items

def get_69_vegetable_items():
    veggies = [
        ("carrot", "Crunchy Orange Carrot", "Root", "Easy", "Bunnies love munching sweet vitamin-A rich carrots!", "🥕"),
        ("broccoli", "Mini Tree Broccoli", "Brassica", "Medium", "Looks just like a miniature lush green forest tree!", "🥦"),
        ("tomato", "Juicy Red Vine Tomato", "Nightshade", "Easy", "Botanically a fruit, but enjoyed as a tasty veggie!", "🍅"),
        ("eggplant", "Shiny Purple Eggplant", "Nightshade", "Medium", "Glossy purple skin with a cute green hat cap!", "🍆"),
        ("corn_cob", "Golden Sweet Corn Cob", "Grain", "Medium", "Wrapped in green husks with silky golden threads!", "🌽"),
        ("pumpkin", "Big Orange Autumn Pumpkin", "Gourd", "Hard", "Carved into glowing jack-o'-lanterns in autumn!", "🎃"),
        ("bell_pepper", "Sweet Red Bell Pepper", "Pepper", "Medium", "Crunchy and sweet with hollow chambers inside!", "🫑"),
        ("cucumber", "Cool Green Cucumber", "Gourd", "Easy", "Cool as a cucumber because it stays chilled inside!", "🥒"),
        ("potato", "Earthy Brown Potato", "Tuber", "Easy", "Grows underground and makes delicious mashed potatoes!", "🥔"),
        ("onion", "Layered Golden Onion", "Allium", "Medium", "Peeling onions has layers and brings happy cooking tears!", "🧅"),
        ("sweet_peas", "Pod of Sweet Green Peas", "Legume", "Easy", "Little round green pearls tucked cozy in a pod!", "🫛"),
        ("mushroom", "Spotted Forest Mushroom", "Fungi", "Easy", "Umbrella caps pop up overnight in moist soil!", "🍄"),
        ("cabbage", "Round Leafy Cabbage", "Brassica", "Hard", "Tightly packed round ball of crisp curly leaves!", "🥬"),
        ("radish", "Peppery Pink Radish", "Root", "Easy", "Zesty crunchy pink root with leafy green tops!", "🥗"),
        ("lettuce", "Crisp Salad Lettuce", "Leaf", "Medium", "Forms the fresh crispy base of healthy garden salads!", "🥬"),
        ("cauliflower", "Snow White Cauliflower", "Brassica", "Hard", "Creamy white florets shielded by outer green leaves!", "🥦"),
        ("spinach", "Iron Rich Green Spinach", "Leaf", "Easy", "Popeye's favorite green leaf for super strength!", "🥬"),
        ("beetroot", "Ruby Red Beetroot", "Root", "Medium", "Earthy sweet root that turns soups lovely ruby pink!", "🍠"),
        ("garlic_bulb", "Braided Garlic Bulb", "Allium", "Hard", "Cloves of garlic add fantastic savory flavor to food!", "🧄"),
        ("chili_pepper", "Fiery Red Chili Pepper", "Pepper", "Easy", "Spicy capsaicin brings warmth to delicious curries!", "🌶️"),
        ("zucchini", "Summer Garden Zucchini", "Gourd", "Easy", "Grows quickly on sunny vines with yellow blooms!", "🥒"),
        ("artichoke", "Noble Purple Artichoke", "Thistle", "Hard", "A delicious edible flower bud with layered petals!", "🥦"),
        ("sweet_potato", "Sweet Orange Yam", "Tuber", "Medium", "Baked sweet potatoes are filled with golden warmth!", "🍠"),
        ("asparagus", "Tender Asparagus Spear", "Shoot", "Medium", "Spring shoots point upward like green knight lances!", "🥦"),
        ("celery", "Crunchy Green Celery", "Stem", "Easy", "Crisp watery stalks that make a satisfying crunch!", "🥬"),
        ("turnip", "Purple Top Turnip", "Root", "Medium", "White globe with a purple collar that grows in soil!", "🥔"),
        ("okra", "Star Pod Okra Ladyfinger", "Pod", "Medium", "When cut in rounds, okra looks like little pentagon stars!", "🥒"),
        ("ginger_root", "Aromatic Ginger Root", "Rhizome", "Hard", "Knobby subterranean stem adds warm spicy fragrance!", "🫚"),
        ("green_bean", "Snap Pole Green Bean", "Legume", "Easy", "Snap beans make a cheerful snapping sound when broken!", "🫛"),
        ("leek", "Tall Sweet Garden Leek", "Allium", "Medium", "Welsh national emblem with long tender white stalks!", "🥬")
    ]
    items = []
    for idx, (vid, title, cat, diff, fact, icon) in enumerate(veggies, 1):
        if vid == "carrot":
            body = [(0.42, 0.28), (0.58, 0.28), (0.5, 0.84), (0.42, 0.28)]
            greens = [(0.5, 0.28), (0.5, 0.14)]
            greens2 = [(0.5, 0.28), (0.38, 0.18)]
            greens3 = [(0.5, 0.28), (0.62, 0.18)]
            strokes = [
                {"id": 1, "points": body, "instruction": f"Trace the tapering orange root of {title}"},
                {"id": 2, "points": greens, "instruction": "Trace the center green fern frond"},
                {"id": 3, "points": greens2, "instruction": "Trace the left green leaf shoot"},
                {"id": 4, "points": greens3, "instruction": "Trace the right green leaf shoot"}
            ]
        elif vid == "mushroom":
            cap = make_arc_points(cx=0.5, cy=0.45, r=0.28, start_deg=180, sweep_deg=180, n=16)
            base_cap = [(0.78, 0.45), (0.22, 0.45)]
            stem = [(0.4, 0.45), (0.4, 0.8), (0.6, 0.8), (0.6, 0.45)]
            strokes = [
                {"id": 1, "points": cap, "instruction": f"Trace the rounded cap of {title}"},
                {"id": 2, "points": base_cap, "instruction": "Trace the flat underside of the cap"},
                {"id": 3, "points": stem, "instruction": "Trace the thick mushroom stalk"}
            ]
        else:
            body = make_circle_points(cx=0.5, cy=0.54, r=0.26, n=16)
            stem = [(0.5, 0.28), (0.5, 0.16)]
            strokes = [
                {"id": 1, "points": body, "instruction": f"Trace the healthy body of {title}"},
                {"id": 2, "points": stem, "instruction": "Trace the veggie stem top"}
            ]

        items.append({
            "id": f"veggie_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": strokes
        })
    return items

def get_70_garden_items():
    garden_objects = [
        ("watering_can", "Green Watering Can", "Tools", "Medium", "Sprinkles gentle rain drops onto thirsty sprouts!", "🚿"),
        ("garden_trowel", "Hand Digging Trowel", "Tools", "Easy", "Digs small cozy holes for bulb planting!", "⛏️"),
        ("picket_fence", "White Wooden Picket Fence", "Structure", "Easy", "Neat painted slats keep friendly rabbits outside!", "🏡"),
        ("wheelbarrow", "Garden Hauling Wheelbarrow", "Equipment", "Hard", "One wheel in front makes it easy to balance mulch!", "🛒"),
        ("terracotta_pot", "Clay Terracotta Pot", "Pottery", "Easy", "Porous red clay breathes so plant roots stay happy!", "🪴"),
        ("butterfly_flower", "Monarch on Flower", "Wildlife", "Medium", "Tastes sweet nectar through feet before drinking!", "🦋"),
        ("friendly_ladybug", "Spotted Red Ladybug", "Wildlife", "Easy", "Gardener's best friend, protecting roses from aphids!", "🐞"),
        ("leaf_rake", "Fan Garden Leaf Rake", "Tools", "Medium", "Gathers autumn leaves into big jumping piles!", "🧹"),
        ("garden_hose", "Coiled Green Garden Hose", "Watering", "Medium", "Sprays mist that creates miniature rainbows!", "💦"),
        ("birdbath", "Stone Garden Birdbath", "Birds", "Medium", "Robins and sparrows splash happily on hot days!", "🕊️"),
        ("wooden_bench", "Cottage Garden Bench", "Furniture", "Medium", "A peaceful spot to read books surrounded by blooms!", "🪑"),
        ("honeybee_hive", "Busy Honeybee Hive", "Wildlife", "Hard", "Bees pollinate flowers and make golden honey!", "🐝"),
        ("sun_hat", "Straw Sun Gardening Hat", "Apparel", "Easy", "Wide brim keeps gardeners cool under bright sun!", "👒"),
        ("seed_packets", "Flower Seed Packet", "Seeds", "Easy", "Tiny seeds hold the giant mystery of growing blooms!", "🌱"),
        ("pruning_shears", "Sharp Pruning Shears", "Tools", "Medium", "Trims overgrown branches to encourage new buds!", "✂️"),
        ("rose_trellis", "Wooden Rose Trellis Arch", "Structure", "Hard", "Climbing roses weave fragrant archways over paths!", "🌹"),
        ("stepping_stones", "Smooth Stepping Stones", "Path", "Easy", "Leads wanderers through mossy garden fairy paths!", "🪨"),
        ("garden_gnome", "Whimsical Garden Gnome", "Decor", "Hard", "Pointed red hat gnome guards secret garden corners!", "🧙"),
        ("wind_chime", "Melodic Bamboo Wind Chime", "Decor", "Medium", "Summer breezes play gentle wooden music chords!", "🎐"),
        ("tool_shed", "Red Garden Tool Shed", "Structure", "Hard", "Stores shovels, seeds, watering cans and twine!", "🛖"),
        ("sprouting_seedling", "First Sprouting Seedling", "Growth", "Easy", "Two baby green cotyledon leaves reach for light!", "🌱"),
        ("hanging_birdhouse", "Wooden Hanging Birdhouse", "Birds", "Medium", "Bluebirds build cozy straw nests safe from cats!", "🐦"),
        ("friendly_earthworm", "Soil Aerating Earthworm", "Wildlife", "Easy", "Earthworms burrow tunnels that make fertile soil!", "🪱"),
        ("rubber_boots", "Yellow Rubber Garden Boots", "Apparel", "Easy", "Splashing in garden puddles without muddy socks!", "🥾"),
        ("soil_barrow", "Barrow of Rich Compost", "Soil", "Medium", "Rich black compost feeds hungry tomato plants!", "🪴"),
        ("harvest_basket", "Woven Veggie Basket", "Harvest", "Medium", "Filled with fresh cucumbers, beans and tomatoes!", "🧺"),
        ("wooden_planter", "Raised Wooden Planter Bed", "Structure", "Medium", "Keeps veggies at perfect kid-friendly height!", "🪵"),
        ("rotary_sprinkler", "Spinning Lawn Sprinkler", "Watering", "Medium", "Spins around ch-ch-ch-ch spraying cool water arcs!", "💦"),
        ("garden_snail", "Spiral Shell Garden Snail", "Wildlife", "Easy", "Carries its cozy spiral home wherever it glides!", "🐌"),
        ("honey_jar", "Fresh Garden Honey Jar", "Harvest", "Easy", "Sweet golden harvest from friendly backyard bees!", "🍯")
    ]
    items = []
    for idx, (gid, title, cat, diff, fact, icon) in enumerate(garden_objects, 1):
        if gid == "watering_can":
            body = make_circle_points(cx=0.45, cy=0.55, r=0.18, n=16)
            spout = [(0.58, 0.55), (0.78, 0.42)]
            handle = [(0.32, 0.44), (0.24, 0.55), (0.32, 0.66)]
            strokes = [
                {"id": 1, "points": body, "instruction": f"Trace the water tank of {title}"},
                {"id": 2, "points": spout, "instruction": "Trace the long sprinkler spout"},
                {"id": 3, "points": handle, "instruction": "Trace the sturdy carry handle"}
            ]
        elif gid == "terracotta_pot":
            rim = make_rect_points(0.3, 0.4, 0.4, 0.08)
            pot = [(0.34, 0.48), (0.38, 0.76), (0.62, 0.76), (0.66, 0.48)]
            strokes = [
                {"id": 1, "points": rim, "instruction": f"Trace the top rim of {title}"},
                {"id": 2, "points": pot, "instruction": "Trace the tapering clay pot base"}
            ]
        else:
            base = make_circle_points(cx=0.5, cy=0.5, r=0.25, n=16)
            detail = [(0.35, 0.5), (0.65, 0.5)]
            strokes = [
                {"id": 1, "points": base, "instruction": f"Trace the outline of {title}"},
                {"id": 2, "points": detail, "instruction": "Trace the decorative garden feature"}
            ]

        items.append({
            "id": f"garden_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": strokes
        })
    return items

