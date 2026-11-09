# data_batch_91_100.py
import math
from data_helper import (
    make_line, make_circle_points, make_arc_points,
    make_rect_points, make_oval_points, make_star_points,
    make_heart_points, make_wave_points, make_triangle_points
)

def get_batch_91_100(app_idx):
    if app_idx == 91:
        return get_91_mirror_drawing_items()
    elif app_idx == 92:
        return get_92_half_picture_items()
    elif app_idx == 93:
        return get_93_complete_picture_items()
    elif app_idx == 94:
        return get_94_glow_path_items()
    elif app_idx == 95:
        return get_95_animated_path_items()
    elif app_idx == 96:
        return get_96_one_line_items()
    elif app_idx == 97:
        return get_97_follow_arrow_items()
    elif app_idx == 98:
        return get_98_connect_dots_items()
    elif app_idx == 99:
        return get_99_shadow_outline_items()
    elif app_idx == 100:
        return get_100_freehand_items()
    else:
        raise ValueError(f"Invalid app index for batch 91-100: {app_idx}")

def get_91_mirror_drawing_items():
    # 30 Symmetrical drawing activities with a center vertical mirror axis
    shapes = [
        ("butterfly", "Symmetrical Butterfly Wings", "Insects", "Medium", "Both wings match in perfect symmetry!", "🦋"),
        ("heart", "Balanced Loving Heart", "Symbols", "Easy", "The left and right curves mirror each other!", "💖"),
        ("star", "Five-Pointed Star Mirror", "Shapes", "Easy", "Each point aligns in perfect geometric balance!", "⭐"),
        ("face", "Smiling Robot Face", "Characters", "Medium", "Both eyes and cheeks are equal distance from center!", "🤖"),
        ("house", "Gable Roof Cottage", "Buildings", "Medium", "Symmetrical walls and centered front door!", "🏠"),
        ("tree", "Evergreen Pine Tree", "Nature", "Easy", "Equal sloping pine branches on both sides!", "🌲"),
        ("flower", "Tulip Flower Goblet", "Flowers", "Easy", "Curved petals form a balanced cup shape!", "🌷"),
        ("vase", "Greek Amphora Vase", "Objects", "Medium", "Twin curved handles mirror across the axis!", "🏺"),
        ("shield", "Knight Heraldic Shield", "Armor", "Easy", "Curving downwards to a sharp center tip!", "🛡️"),
        ("crown", "Royal King Crown", "Royal", "Medium", "Matching gold spires on left and right!", "👑"),
        ("castle", "Twin Towered Castle", "Buildings", "Hard", "Twin watchtowers guard each side equally!", "🏰"),
        ("robot", "Cubical Tin Robot", "Tech", "Medium", "Symmetrical metal shoulders and antenna ears!", "🤖"),
        ("rocket", "Apollo Space Rocket", "Space", "Easy", "Aerodynamic twin fins guide straight upward!", "🚀"),
        ("diamond", "Faceted Cut Diamond", "Gems", "Easy", "Symmetrical diamond facets sparkle in light!", "💎"),
        ("leaf", "Maple Leaf Symmetry", "Nature", "Medium", "Veins branch outward at identical angles!", "🍁"),
        ("moon", "Waxing Crescent Duo", "Celestial", "Easy", "Curves echo across the night sky axis!", "🌙"),
        ("bell", "Ringing Brass Bell", "Objects", "Easy", "Flared rim rings out a balanced chime!", "🔔"),
        ("teapot", "Cottage Tea Pot", "Kitchen", "Medium", "Balanced belly holding warm fragrant tea!", "🫖"),
        ("boat", "Ocean Kayak Hull", "Vehicles", "Easy", "Symmetrical hull cuts through water smoothly!", "🛶"),
        ("owl", "Wise Night Owl", "Birds", "Hard", "Twin circular eyes stare straight ahead!", "🦉"),
        ("cat_face", "Cute Whisker Cat Face", "Animals", "Medium", "Pointy ears and equal whiskers on both cheeks!", "🐱"),
        ("apple", "Crisp Red Apple", "Fruit", "Easy", "Gentle indentations at the stem and base!", "🍎"),
        ("pumpkin", "Halloween Jack Pumpkin", "Veggie", "Medium", "Segmented ribs curve outward from center stem!", "🎃"),
        ("snowflake", "Hexagonal Ice Crystal", "Winter", "Hard", "Six identical branches of frozen water magic!", "❄️"),
        ("goblet", "Crystal Royal Goblet", "Objects", "Medium", "Slender stem holds a wide drinking bowl!", "🍷"),
        ("hourglass", "Ancient Sand Hourglass", "Objects", "Hard", "Top and bottom glass bulbs mirror in time!", "⏳"),
        ("candle", "Festive Candle Holder", "Decor", "Easy", "Straight wick with dripping wax curves!", "🕯️"),
        ("bowtie", "Silk Formal Bow Tie", "Apparel", "Easy", "Twin loops tied in a neat center knot!", "🎀"),
        ("sunburst", "Radiant Symmetrical Sun", "Sky", "Easy", "Rays expand equally like spokes on a wheel!", "☀️"),
        ("beetle", "Jeweled Scarab Beetle", "Insects", "Hard", "Twin wing covers protect delicate flying wings!", "🪲")
    ]
    items = []
    for idx, (sid, title, cat, diff, fact, icon) in enumerate(shapes, 1):
        # Mirror line down center: x=0.5
        center_line = [(0.5, 0.15), (0.5, 0.85)]
        # Left half
        left_half = [(0.5, 0.25), (0.22, 0.45), (0.35, 0.75), (0.5, 0.75)]
        # Right half (to trace mirroring the left)
        right_half = [(0.5, 0.25), (0.78, 0.45), (0.65, 0.75), (0.5, 0.75)]

        items.append({
            "id": f"mirror_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": center_line, "instruction": "Trace the vertical mirror guide line"},
                {"id": 2, "points": left_half, "instruction": f"Observe and trace left side of {title}"},
                {"id": 3, "points": right_half, "instruction": "Now draw the matching right mirrored half!"}
            ]
        })
    return items

def get_92_half_picture_items():
    # 30 Half-completed pictures where children trace the missing half
    objects = [
        ("half_butterfly", "Half Butterfly Completion", "Insects", "Medium", "Complete the right wing to let it fly!", "🦋"),
        ("half_heart", "Half Loving Heart", "Symbols", "Easy", "Draw the right curve to make a complete heart!", "💖"),
        ("half_face", "Half Smiling Face", "People", "Easy", "Add the right eye, cheek and smile corner!", "😊"),
        ("half_car", "Half Front View Car", "Vehicles", "Medium", "Draw the right headlight and bumper!", "🚗"),
        ("half_tree", "Half Pine Tree", "Nature", "Easy", "Trace matching green branches on the right!", "🌲"),
        ("half_flower", "Half Blooming Tulip", "Flowers", "Easy", "Complete the right tulip petal curve!", "🌷"),
        ("half_crown", "Half Royal Tiara", "Royal", "Medium", "Finish the sparkling right side gold jewels!", "👑"),
        ("half_castle", "Half Fairy Castle", "Buildings", "Hard", "Complete the right defensive watchtower!", "🏰"),
        ("half_boat", "Half Sailboat Mast", "Vehicles", "Easy", "Draw the right billowing sail cloth!", "⛵"),
        ("half_star", "Half Glowing Star", "Shapes", "Easy", "Connect the missing points of the star!", "⭐"),
        ("half_leaf", "Half Autumn Leaf", "Nature", "Easy", "Mirror the jagged leaf edge on the right!", "🍃"),
        ("half_vase", "Half Antique Vase", "Objects", "Medium", "Match the curvature of the clay vase body!", "🏺"),
        ("half_house", "Half Gabled Home", "Buildings", "Medium", "Draw the right roof slant and window!", "🏠"),
        ("half_robot", "Half Android Body", "Tech", "Hard", "Complete the robot's right clamp hand!", "🤖"),
        ("half_rocket", "Half Space Shuttle", "Space", "Easy", "Add the right rocket booster wing!", "🚀"),
        ("half_diamond", "Half Sparkling Gem", "Gems", "Easy", "Complete the angular diamond facets!", "💎"),
        ("half_bell", "Half Holiday Bell", "Objects", "Easy", "Finish the flared bell rim on the right!", "🔔"),
        ("half_teapot", "Half Ceramic Teapot", "Kitchen", "Medium", "Trace the curved pouring spout on the right!", "🫖"),
        ("half_owl", "Half Wise Forest Owl", "Birds", "Hard", "Complete the right feather wing and claw!", "🦉"),
        ("half_cat", "Half Kitty Whiskers", "Animals", "Medium", "Add the right pointed ear and whiskers!", "🐱"),
        ("half_apple", "Half Red Apple", "Fruit", "Easy", "Complete the delicious fruit contour!", "🍎"),
        ("half_pumpkin", "Half Halloween Pumpkin", "Veggie", "Medium", "Trace the right half ribs and round cheek!", "🎃"),
        ("half_snowflake", "Half Ice Crystal", "Winter", "Hard", "Complete the intricate frozen crystal arms!", "❄️"),
        ("half_cup", "Half Cocoa Mug", "Kitchen", "Easy", "Add the right curved mug handle!", "☕"),
        ("half_clock", "Half Wall Clock", "Objects", "Medium", "Complete the round clock face circle!", "⏰"),
        ("half_candle", "Half Dinner Candle", "Decor", "Easy", "Draw the right wax side and base tray!", "🕯️"),
        ("half_bow", "Half Hair Ribbon Bow", "Apparel", "Easy", "Trace the right bouncy ribbon loop!", "🎀"),
        ("half_sun", "Half Morning Sun", "Sky", "Easy", "Complete the right half disc and sun rays!", "☀️"),
        ("half_ladybug", "Half Spotted Ladybug", "Insects", "Medium", "Add the three black spots on the right wing!", "🐞"),
        ("half_shield", "Half Golden Crest", "Heraldry", "Medium", "Finish the right side shield border!", "🛡️")
    ]
    items = []
    for idx, (hid, title, cat, diff, fact, icon) in enumerate(objects, 1):
        # Left fixed half guideline
        left_side = [(0.5, 0.2), (0.25, 0.45), (0.32, 0.78), (0.5, 0.78)]
        # Missing right half to trace
        right_side = [(0.5, 0.2), (0.75, 0.45), (0.68, 0.78), (0.5, 0.78)]

        items.append({
            "id": f"half_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": left_side, "instruction": f"Trace left pre-drawn half of {title}"},
                {"id": 2, "points": right_side, "instruction": "Now trace and complete the missing right half!"}
            ]
        })
    return items

def get_93_complete_picture_items():
    # 30 incomplete outlines children complete with specific missing features
    puzzles = [
        ("bear_ears", "Complete Bear Ears", "Teddy", "Add round furry ears to the smiling bear face!", "🧸"),
        ("bike_wheels", "Complete Bicycle Wheels", "Bike", "Draw the two round wheels to start riding!", "🚲"),
        ("clock_hands", "Complete Clock Hands", "Clock", "Draw the hour and minute hands showing playtime!", "⏰"),
        ("house_roof", "Complete House Roof", "House", "Draw the peaked triangular roof on the house!", "🏠"),
        ("flower_petals", "Complete Flower Petals", "Flower", "Draw blooming oval petals around the yellow core!", "🌸"),
        ("car_windows", "Complete Car Windows", "Car", "Trace the clear rectangular side windows!", "🚗"),
        ("ship_sails", "Complete Ship Sails", "Boat", "Draw the billowing white canvas sails on the mast!", "⛵"),
        ("plane_wings", "Complete Airplane Wings", "Plane", "Add the horizontal wings so the jet can take off!", "✈️"),
        ("train_smoke", "Complete Train Smoke", "Train", "Draw fluffy choo-choo steam puffs in the sky!", "🚂"),
        ("tree_trunk", "Complete Tree Trunk", "Tree", "Connect the leafy green crown to ground with trunk!", "🌳"),
        ("sun_rays", "Complete Sun Rays", "Sun", "Draw bright shining rays warming up the earth!", "☀️"),
        ("fish_tail", "Complete Fish Tail", "Fish", "Trace the swimming fin tail for fast swimming!", "🐟"),
        ("cat_whiskers", "Complete Cat Whiskers", "Cat", "Add ticklish whiskers to both cute cheeks!", "🐱"),
        ("dog_tail", "Complete Doggy Tail", "Dog", "Draw the wagging curly puppy tail!", "🐶"),
        ("bird_beak", "Complete Bird Beak", "Bird", "Add the little triangular beak for singing!", "🐦"),
        ("butterfly_antennae", "Complete Butterfly Antennae", "Bug", "Draw two curling antennae with round tips!", "🦋"),
        ("castle_flag", "Complete Castle Flag", "Castle", "Fly the royal triangular banner from the tower!", "🏰"),
        ("turtle_shell", "Complete Turtle Shell", "Reptile", "Draw the protective dome shell with hexagons!", "🐢"),
        ("robot_eyes", "Complete Robot Eyes", "Robot", "Add glowing round electronic camera lenses!", "🤖"),
        ("rocket_fins", "Complete Rocket Fins", "Space", "Trace the angled stabilizer fins at the base!", "🚀"),
        ("crown_jewels", "Complete Crown Jewels", "Royal", "Place sparkling ruby circles on the gold points!", "👑"),
        ("kite_string", "Complete Kite String", "Fun", "Draw the wavy string leading down to your hand!", "🪁"),
        ("spider_web", "Complete Spider Web", "Nature", "Draw concentric silken web rings for friendly spiders!", "🕸️"),
        ("snail_shell", "Complete Snail Shell", "Nature", "Draw the spiral coiled shell on the snail's back!", "🐌"),
        ("ice_cream_cherry", "Complete Ice Cream Cherry", "Sweet", "Place a sweet round cherry right on top!", "🍒"),
        ("umbrella_handle", "Complete Umbrella Handle", "Rain", "Draw the J-shaped wooden curved umbrella hook!", "☂️"),
        ("lamp_shade", "Complete Lamp Shade", "Home", "Draw the bell shade spreading warm evening light!", "🛋️"),
        ("drum_sticks", "Complete Drum Sticks", "Music", "Draw twin wooden sticks ready to play beats!", "🥁"),
        ("star_points", "Complete Star Points", "Sky", "Connect missing points to make the star shine!", "⭐"),
        ("rainbow_arcs", "Complete Rainbow Arcs", "Sky", "Draw the lower curved colored bands of the rainbow!", "🌈")
    ]
    items = []
    for idx, (pid, title, cat, fact, icon) in enumerate(puzzles, 1):
        base_body = make_circle_points(cx=0.5, cy=0.5, r=0.25, n=16)
        missing_part = [(0.35, 0.22), (0.5, 0.12), (0.65, 0.22)]

        items.append({
            "id": f"complete_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": "Easy" if idx <= 10 else ("Medium" if idx <= 20 else "Hard"),
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": base_body, "instruction": "Trace existing main character outline"},
                {"id": 2, "points": missing_part, "instruction": f"Now draw the missing feature: {title}!"}
            ]
        })
    return items

def get_94_glow_path_items():
    # 30 Glowing neon tracing paths
    paths = [
        ("laser_spiral", "Neon Laser Spiral", "Spiral", "Easy", "Glows with electric neon cyan light!", "🌀"),
        ("electric_bolt", "Electric Lightning Bolt", "Energy", "Easy", "Flashes like high-voltage electric energy!", "⚡"),
        ("star_trail", "Glowing Star Trail", "Celestial", "Easy", "Shoots across the dark night sky like a comet!", "⭐"),
        ("heart_beat", "Neon Heartbeat Wave", "Medical", "Medium", "Pulses with steady loving glowing warmth!", "💖"),
        ("sun_burst", "Radiant Neon Sunburst", "Solar", "Medium", "Spreads vivid golden rays in all directions!", "☀️"),
        ("luminescent_wave", "Ocean Bioluminescent Wave", "Ocean", "Medium", "Plankton glow electric turquoise in night waves!", "🌊"),
        ("moon_arc", "Glowing Neon Moon Arc", "Night", "Easy", "Silvery crescent glowing through twilight clouds!", "🌙"),
        ("cyber_runner", "Cyber Grid Runner", "Tech", "Hard", "Light pulses along futuristic circuit lines!", "🌐"),
        ("butterfly_flight", "Glow Butterfly Flight", "Nature", "Medium", "Fluttering wings leave trails of sparkling dust!", "🦋"),
        ("vortex_portal", "Electric Vortex Portal", "Portal", "Hard", "Swirls into distant dimensions of magical light!", "🌀"),
        ("constellation", "Glowing Constellation", "Cosmic", "Hard", "Connects distant stars with beams of pure light!", "🌌"),
        ("neon_kelp", "Glowing Coral Reef Tentacle", "Marine", "Medium", "Deep sea coral glows under ultraviolet light!", "🪸"),
        ("diamond_prism", "Neon Diamond Prism", "Gems", "Easy", "Splits beams of light into vivid rainbow lasers!", "💎"),
        ("aurora_ribbon", "Aurora Borealis Curtain", "Northern", "Hard", "Solar winds dance in emerald and magenta curtains!", "✨"),
        ("comet_tail", "Starlight Comet Tail", "Cosmic", "Medium", "Speeds past Jupiter leaving a million-mile glow!", "☄️"),
        ("infinity_loop", "Neon Infinity Ribbon", "Loops", "Easy", "Curves endlessly without beginning or end!", "♾️"),
        ("glowing_bloom", "Bioluminescent Flower Bloom", "Botanical", "Medium", "Petals glow in the dark like nightlights!", "🌸"),
        ("laser_maze", "Laser Grid Challenge", "Maze", "Hard", "Navigate glowing laser beams without touching edges!", "⚡"),
        ("dragon_flight", "Fire Glow Dragon Path", "Fantasy", "Hard", "Dragon breath illuminates the mountain peaks!", "🐉"),
        ("orbit_ring", "Glowing Saturn Orbit Ring", "Space", "Medium", "Ice rings reflect glowing sunlight into space!", "🪐"),
        ("crystal_shard", "Glowing Crystal Obelisk", "Minerals", "Easy", "Ancient crystals pulse with emerald power!", "💎"),
        ("music_waveform", "Neon Music Sound Wave", "Music", "Medium", "Visualizes cheerful tunes in glowing rhythm!", "🎵"),
        ("cyber_hexagon", "Glowing Cyber Hexagon", "Geometry", "Easy", "Six sides linked by glowing fiber-optic cables!", "🛑"),
        ("firefly_trail", "Firefly Nighttime Loop", "Nature", "Easy", "Friendly fireflies dance above clover meadows!", "🪲"),
        ("pulsar_wave", "Deep Space Pulsar Wave", "Cosmic", "Hard", "Neutron star pulses radio light like a cosmic clock!", "✨"),
        ("neon_waterfall", "Liquid Neon Waterfall", "Water", "Medium", "Cascading waterfalls illuminated by rainbow floods!", "🌊"),
        ("plasma_arc", "Plasma Energy Arc", "Energy", "Hard", "Curves through air with brilliant violet arcs!", "⚡"),
        ("rainbow_highway", "Glowing Rainbow Skyway", "Sky", "Easy", "Cars glide on highways made of solid neon light!", "🌈"),
        ("laser_triangle", "Trilateral Laser Beam", "Geometry", "Easy", "Three intersecting laser beams form a gateway!", "🔺"),
        ("neon_crest", "Ultra Violet Hero Crest", "Crest", "Medium", "Emits a protective shield of ultraviolet energy!", "🛡️")
    ]
    items = []
    for idx, (gid, title, cat, diff, fact, icon) in enumerate(paths, 1):
        if "spiral" in gid or "vortex" in gid:
            pts = [(0.5, 0.5), (0.58, 0.45), (0.5, 0.35), (0.38, 0.45), (0.42, 0.6), (0.62, 0.6), (0.68, 0.35), (0.3, 0.3)]
        elif "wave" in gid or "waterfall" in gid:
            pts = make_wave_points(0.12, 0.5, 0.88, 0.18, 2, 24)
        elif "star" in gid:
            pts = make_star_points(5, 0.5, 0.5, 0.35, 0.16)
        else:
            pts = [(0.15, 0.7), (0.35, 0.3), (0.65, 0.7), (0.85, 0.3)]

        items.append({
            "id": f"glow_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": pts, "instruction": f"Trace glowing neon trail of {title}"}
            ]
        })
    return items

def get_95_animated_path_items():
    # 30 animated motion paths
    paths = [
        ("walking_ants", "Walking Ants Parade", "Bugs", "Easy", "Marching one by one along garden stone paths!", "🐜"),
        ("honeybee_waggle", "Honeybee Waggle Dance", "Nature", "Medium", "Tells hive friends where sweetest flowers grow!", "🐝"),
        ("river_current", "River Rapids Current", "Water", "Medium", "Water rushes around smooth river riverbed stones!", "🌊"),
        ("roller_coaster", "Roller Coaster Loop Track", "Amusement", "Hard", "Carts click-clack up and zoom through loops!", "🎢"),
        ("race_circuit", "Grand Prix Race Circuit", "Racing", "Hard", "Cars drift around hairpin chicanes and straights!", "🏎️"),
        ("airplane_flight", "Airplane Vapor Flyway", "Flight", "Easy", "Leaves white contrail paths high in blue skies!", "✈️"),
        ("butterfly_flutter", "Butterfly Garden Flit", "Insects", "Easy", "Zigs and zags gently from blossom to blossom!", "🦋"),
        ("shooting_star", "Shooting Star Trajectory", "Space", "Easy", "Streaks across constellations in a split second!", "🌠"),
        ("slalom_slope", "Alpine Ski Slalom Run", "Winter", "Medium", "Skiers swish between red and blue snow gates!", "⛷️"),
        ("dolphin_leap", "Leaping Dolphin Arc", "Ocean", "Easy", "Dolphins jump high out of water in playful arcs!", "🐬"),
        ("mountain_train", "Train Mountain Spiral", "Train", "Hard", "Rails climb through spiral tunnels inside granite!", "🚂"),
        ("wind_gust", "Autumn Wind Gust Whirl", "Weather", "Easy", "Swirls dry red maple leaves high into the air!", "🍃"),
        ("bouncing_ball", "Super Bouncing Ball", "Physics", "Easy", "Boing-boing-boing! Bounces higher with every jump!", "🏀"),
        ("sub_dive", "Submarine Dive Trench", "Marine", "Hard", "Descends gently into deep dark oceanic trenches!", "🚢"),
        ("snail_trail", "Silvery Snail Garden Trail", "Nature", "Easy", "Leaves a glistening shiny path along garden pavers!", "🐌"),
        ("rocket_ascent", "Moon Rocket Launch Curve", "Space", "Hard", "Ascends vertically before curving into orbit!", "🚀"),
        ("hiking_switchbacks", "Mountain Trail Switchbacks", "Alpine", "Hard", "Zigzag trails make climbing steep cliffs easy!", "🥾"),
        ("surf_curl", "Curling Ocean Wave Tube", "Ocean", "Medium", "Surfers tuck inside the glassy hollow water barrel!", "🏄"),
        ("figure_eight_skate", "Ice Skater Figure Eight", "Winter", "Medium", "Polished steel blades carve smooth ice circles!", "⛸️"),
        ("leaf_flutter", "Falling Autumn Leaf Path", "Nature", "Easy", "Flutters back and forth down from tall tree limbs!", "🍂"),
        ("bungee_jump", "Bungee Jump Rebound", "Sport", "Medium", "Stretches down and snaps back up safely!", "🪂"),
        ("bmx_pump", "BMX Dirt Pump Track", "Sport", "Hard", "Rolls over dirt humps without needing to pedal!", "🚲"),
        ("jungle_vine", "Tarzan Jungle Vine Swing", "Jungle", "Medium", "Swings across jungle streams with a big splash!", "🌴"),
        ("flying_carpet", "Magic Flying Carpet Swoop", "Magic", "Medium", "Dips and swoops over minarets and palm trees!", "🧞"),
        ("balloon_ascent", "Hot Air Balloon Flight", "Aviation", "Easy", "Drifts with the gentle morning sunrise breezes!", "🎈"),
        ("kite_dance", "Windy Kite Aerial Dance", "Play", "Easy", "Dives and soars on breezy autumn afternoons!", "🪁"),
        ("kayak_rapids", "Whitewater Kayak Run", "Sport", "Hard", "Paddles through boiling white foaming river drops!", "🛶"),
        ("kangaroo_hop", "Kangaroo Bound Sequence", "Animals", "Easy", "Giant jumps cover twenty feet in a single bound!", "🦘"),
        ("frisbee_glide", "Frisbee Park Glide", "Play", "Easy", "Spins flat through the air straight to your friend!", "🥏"),
        ("treasure_route", "Pirate Treasure Map Path", "Adventure", "Hard", "Dotted red line leads straight to X marks the spot!", "🗺️")
    ]
    items = []
    for idx, (aid, title, cat, diff, fact, icon) in enumerate(paths, 1):
        pts = [(0.15, 0.75), (0.28, 0.35), (0.5, 0.65), (0.72, 0.35), (0.85, 0.75)]
        items.append({
            "id": f"animated_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": pts, "instruction": f"Follow the animated direction arrows for {title}"}
            ]
        })
    return items

def get_96_one_line_items():
    # 30 Continuous one-line drawing puzzles (Eulerian paths where pen never lifts)
    drawings = [
        ("five_point_star", "Continuous Five-Point Star", "Shapes", "Easy", "The classic star you draw in one continuous stroke!", "⭐"),
        ("envelope_house", "Open Envelope House Puzzle", "Puzzles", "Medium", "Draw the square with X and roof without lifting pen!", "✉️"),
        ("figure_eight", "Infinity Figure Eight", "Shapes", "Easy", "Flows continuously in a loop forever!", "♾️"),
        ("one_line_heart", "Continuous Flow Heart", "Symbols", "Easy", "Starts at bottom tip, curves both lobes, and meets!", "💖"),
        ("one_line_cat", "One-Line Sitting Cat", "Animals", "Hard", "Body, tail, head and ears all in a single line!", "🐱"),
        ("one_line_fish", "One-Line Swimming Fish", "Animals", "Easy", "Body loops back across itself to form the tail fin!", "🐟"),
        ("one_line_bird", "One-Line Flying Dove", "Birds", "Medium", "Wings flap and beak chirps in one unbroken stroke!", "🕊️"),
        ("one_line_elephant", "One-Line Baby Elephant", "Animals", "Hard", "Trunk curves up into large ears and round back!", "🐘"),
        ("one_line_butterfly", "One-Line Butterfly", "Insects", "Medium", "Both wings and body connected without stopping!", "🦋"),
        ("one_line_flower", "One-Line Spring Tulip", "Flowers", "Easy", "Stem curves directly into the blooming cup petals!", "🌷"),
        ("one_line_tree", "One-Line Pine Tree", "Nature", "Medium", "Trunk zigzags continuously up through all branches!", "🌲"),
        ("one_line_crown", "One-Line Royal Crown", "Royal", "Easy", "Peaks and headband traced in one continuous wire!", "👑"),
        ("one_line_boat", "One-Line Ocean Sailboat", "Vehicles", "Medium", "Hull line climbs up mast and wraps the sail cloth!", "⛵"),
        ("one_line_car", "One-Line Coupe Outline", "Vehicles", "Hard", "Bumper to roof to spoiler in a single trace!", "🚗"),
        ("one_line_apple", "One-Line Apple & Stem", "Fruit", "Easy", "Fruit body curves into the top stem and leaf!", "🍎"),
        ("one_line_spiral", "Concentric Square Spiral", "Puzzles", "Hard", "Spirals continuously from outside straight to center!", "🌀"),
        ("one_line_hexagon", "Tessellated Hexagon Loop", "Geometry", "Medium", "Traces all six perimeter edges and inner diagonals!", "🛑"),
        ("one_line_moon", "One-Line Moon & Star", "Celestial", "Medium", "Crescent arc leaps straight into a small star!", "🌙"),
        ("one_line_teapot", "One-Line Teapot & Handle", "Kitchen", "Hard", "Handle flows into lid and out through pouring spout!", "🫖"),
        ("one_line_snail", "One-Line Coiled Snail", "Animals", "Easy", "Foot slides into the round spiral shell smoothly!", "🐌"),
        ("one_line_dog", "One-Line Puppy Dog", "Animals", "Hard", "Nose, ears, back, tail and paws in one stroke!", "🐶"),
        ("one_line_key", "One-Line Vintage Key", "Objects", "Easy", "Round bow loops down shaft into toothed bit!", "🗝️"),
        ("one_line_cloud", "One-Line Scalloped Cloud", "Sky", "Easy", "Bubbly cloud puffs loop continuously around base!", "☁️"),
        ("one_line_diamond", "One-Line Faceted Diamond", "Gems", "Medium", "Draws top table and lower pavilion facets together!", "💎"),
        ("one_line_owl", "One-Line Wise Owl", "Birds", "Hard", "Round eyes and curved chest feathers in one path!", "🦉"),
        ("one_line_fox", "One-Line Sleeping Fox", "Animals", "Hard", "Pointed nose curves around into a bushy tail!", "🦊"),
        ("one_line_leaf", "One-Line Oak Leaf", "Nature", "Medium", "Lobed wavy edges traced without lifting pencil!", "🍃"),
        ("one_line_sun", "One-Line Sun & Spiral", "Sky", "Easy", "Outer round disc loops outward into radiant rays!", "☀️"),
        ("one_line_clover", "One-Line Four Leaf Clover", "Plants", "Medium", "Four heart lobes meet neatly at the center stem!", "🍀"),
        ("one_line_castle", "One-Line Fairytale Castle", "Castles", "Hard", "Towers, battlements and drawbridge in one flow!", "🏰")
    ]
    items = []
    for idx, (oid, title, cat, diff, fact, icon) in enumerate(drawings, 1):
        if "star" in oid:
            pts = [(0.5, 0.15), (0.62, 0.78), (0.18, 0.38), (0.82, 0.38), (0.38, 0.78), (0.5, 0.15)]
        elif "envelope" in oid or "house" in oid:
            pts = [(0.25, 0.75), (0.75, 0.75), (0.75, 0.45), (0.5, 0.2), (0.25, 0.45), (0.75, 0.45), (0.25, 0.75), (0.75, 0.75)]
        elif "heart" in oid:
            pts = make_heart_points(0.5, 0.5, 0.35, 24)
        else:
            pts = [(0.2, 0.5), (0.35, 0.25), (0.65, 0.25), (0.8, 0.5), (0.65, 0.75), (0.35, 0.75), (0.2, 0.5), (0.5, 0.25), (0.8, 0.5)]

        items.append({
            "id": f"oneline_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": pts, "instruction": f"Trace {title} in ONE continuous unbroken line!"}
            ]
        })
    return items

def get_97_follow_arrow_items():
    arrows = [
        ("up_arrow", "Skyward Up Arrow", "Basic", "Points straight up to the clouds and stars!", "⬆️"),
        ("down_arrow", "Ground Down Arrow", "Basic", "Points down to green grass and earth!", "⬇️"),
        ("left_arrow", "Westward Left Turn", "Basic", "Follow the arrow curving smoothly left!", "⬅️"),
        ("right_arrow", "Eastward Right Turn", "Basic", "Follow the arrow gliding gently right!", "➡️"),
        ("zigzag_arrow", "Zigzag Direction Arrow", "Zigzag", "Zigs left, zags right, and points forward!", "⚡"),
        ("u_turn_arrow", "Looping U-Turn Arrow", "Turns", "Turns all the way around like a horseshoe!", "↩️"),
        ("s_curve_arrow", "S-Curve Winding Arrow", "Curves", "Curves like a winding country lane!", "〰️"),
        ("clockwise_whirl", "Clockwise Spinning Arrow", "Circular", "Follows the movement of clock hands!", "🔄"),
        ("counter_clockwise", "Counter-Clockwise Whirl", "Circular", "Spins around in the opposite direction!", "🔃"),
        ("crossroad_arrow", "Four-Way Crossroad Guide", "Intersections", "Guides safely through the busy crossing!", "🧭"),
        ("staircase_arrow", "Climbing Staircase Arrow", "Steps", "Steps up, across, up, across like stairs!", "📈"),
        ("spiral_in_arrow", "Inward Spiral Arrow", "Spirals", "Coils closer and closer into the bullseye!", "🎯"),
        ("spiral_out_arrow", "Outward Expanding Spiral", "Spirals", "Expands outward like ripples in water!", "🌀"),
        ("bounce_arc_arrow", "High Bouncing Arrow Arc", "Arcs", "Leaps high like a hopping kangaroo!", "🦘"),
        ("wave_crest_arrow", "Ocean Wave Crest Arrow", "Waves", "Rides the curved crest of blue waves!", "🌊"),
        ("maze_path_arrow", "Maze Navigator Arrow", "Maze", "Follow the clues through the labyrinth!", "🧩"),
        ("compass_north", "Compass Rose North Arrow", "Navigation", "Magnetic needles always point North!", "🧭"),
        ("double_switch_arrow", "Twin Switchback Arrow", "Alpine", "Climbs steep hills with gentle switch turns!", "⛰️"),
        ("loop_coaster_arrow", "Loop-the-Loop Coaster Arrow", "Fun", "Loops full circle upside down in mid-air!", "🎢"),
        ("slalom_gate_arrow", "Slalom Ski Gate Arrow", "Sport", "Weaves neatly between slalom flag poles!", "🚩"),
        ("mountain_pass_arrow", "Alpine Mountain Pass Arrow", "Travel", "Guides travelers across snowy peaks!", "🏔️"),
        ("tunnel_arrow", "Through-the-Tunnel Arrow", "Travel", "Dives under mountains and emerges in sun!", "🚇"),
        ("ribbon_dance_arrow", "Gymnast Ribbon Arrow", "Rhythm", "Twirls like a colorful silk dancing ribbon!", "🎀"),
        ("speed_bump_arrow", "Gentle Speed Bump Arrow", "Safety", "Slows cars down in quiet school zones!", "🛑"),
        ("overpass_arrow", "Bridge Overpass Arrow", "Highways", "Flies smoothly over cross traffic below!", "🌉"),
        ("roundabout_arrow", "Traffic Roundabout Arrow", "Traffic", "Circulates round the center island smoothly!", "🔄"),
        ("runway_landing_arrow", "Airport Runway Arrow", "Aviation", "Guides jetliners straight to the tarmac line!", "🛬"),
        ("rocket_launch_arrow", "Rocket Launch Ascend Arrow", "Space", "Blasts off straight toward outer space!", "🚀"),
        ("pinwheel_arrow", "Breezy Pinwheel Arrow", "Toy", "Spins fast when children blow gently!", "🪅"),
        ("finish_dash_arrow", "Finish Line Dash Arrow", "Celebration", "Dashes across the checkered finish flag!", "🏁")
    ]
    items = []
    for idx, (aid, title, cat, fact, icon) in enumerate(arrows, 1):
        shaft = [(0.5, 0.78), (0.5, 0.28)]
        head_l = [(0.5, 0.28), (0.35, 0.42)]
        head_r = [(0.5, 0.28), (0.65, 0.42)]

        items.append({
            "id": f"arrow_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": "Easy" if idx <= 10 else ("Medium" if idx <= 20 else "Hard"),
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": shaft, "instruction": f"Trace the arrow shaft for {title}"},
                {"id": 2, "points": head_l, "instruction": "Trace the left pointing barb"},
                {"id": 3, "points": head_r, "instruction": "Trace the right barb to finish the arrow"}
            ]
        })
    return items

def get_98_connect_dots_items():
    # 30 Connect-the-dots activities
    dots_items = [
        ("dots_star", "Connect Dots 1-10: Star", 10, "⭐", "Connect 1 to 10 to reveal the shining star!"),
        ("dots_heart", "Connect Dots 1-12: Heart", 12, "💖", "Connect 1 to 12 to reveal the sweet heart!"),
        ("dots_house", "Connect Dots 1-15: House", 15, "🏠", "Connect dots to build the cozy cottage!"),
        ("dots_boat", "Connect Dots 1-15: Sailboat", 15, "⛵", "Connect dots to launch the sailboat in water!"),
        ("dots_fish", "Connect Dots 1-15: Fish", 15, "🐟", "Connect dots to let the little fish swim!"),
        ("dots_tree", "Connect Dots 1-18: Pine Tree", 18, "🌲", "Connect dots to grow a tall green pine tree!"),
        ("dots_butterfly", "Connect Dots 1-20: Butterfly", 20, "🦋", "Connect dots to open butterfly wings!"),
        ("dots_flower", "Connect Dots 1-20: Daisy", 20, "🌼", "Connect dots to bloom the spring flower!"),
        ("dots_apple", "Connect Dots 1-20: Apple", 20, "🍎", "Connect dots to pick the crunchy apple!"),
        ("dots_cat", "Connect Dots 1-20: Kitty", 20, "🐱", "Connect dots to see the purring kitten!"),
        ("dots_dog", "Connect Dots 1-20: Puppy", 20, "🐶", "Connect dots to draw the friendly dog!"),
        ("dots_duck", "Connect Dots 1-22: Duckling", 22, "🦆", "Connect dots to hear the duckling quack!"),
        ("dots_speed_boat", "Connect Dots 1-22: Speedboat", 22, "🚤", "Connect dots to zoom across the lake!"),
        ("dots_car", "Connect Dots 1-24: Sedan Car", 24, "🚗", "Connect dots to assemble the family car!"),
        ("dots_bear", "Connect Dots 1-24: Teddy Bear", 24, "🧸", "Connect dots to cuddle the teddy bear!"),
        ("dots_bird", "Connect Dots 1-24: Bluebird", 24, "🐦", "Connect dots to hear the bluebird sing!"),
        ("dots_plane", "Connect Dots 1-25: Jet Airplane", 25, "✈️", "Connect dots to take flight in the jet!"),
        ("dots_elephant", "Connect Dots 1-25: Baby Elephant", 25, "🐘", "Connect dots to see the elephant's trunk!"),
        ("dots_crown", "Connect Dots 1-25: Royal Crown", 25, "👑", "Connect dots to wear the golden crown!"),
        ("dots_diamond", "Connect Dots 1-26: Diamond", 26, "💎", "Connect dots to cut the sparkling diamond!"),
        ("dots_rocket", "Connect Dots 1-26: Moon Rocket", 26, "🚀", "Connect dots to blast off to the moon!"),
        ("dots_dolphin", "Connect Dots 1-28: Leaping Dolphin", 28, "🐬", "Connect dots to watch the dolphin leap!"),
        ("dots_dino", "Connect Dots 1-28: Brontosaurus", 28, "🦕", "Connect dots to meet the friendly dinosaur!"),
        ("dots_castle", "Connect Dots 1-28: Royal Castle", 28, "🏰", "Connect dots to enter the fairy castle!"),
        ("dots_horse", "Connect Dots 1-30: Galloping Horse", 30, "🐴", "Connect dots 1 to 30 to gallop across meadows!"),
        ("dots_lion", "Connect Dots 1-30: Brave Lion", 30, "🦁", "Connect dots 1 to 30 to meet the King of Beasts!"),
        ("dots_ship", "Connect Dots 1-30: Ocean Cruise Ship", 30, "🚢", "Connect dots 1 to 30 to cruise the ocean!"),
        ("dots_train", "Connect Dots 1-30: Steam Train", 30, "🚂", "Connect dots 1 to 30 to hear the whistle blow!"),
        ("dots_dragon", "Connect Dots 1-30: Friendly Dragon", 30, "🐉", "Connect dots 1 to 30 to meet the baby dragon!"),
        ("dots_unicorn", "Connect Dots 1-30: Magic Unicorn", 30, "🦄", "Connect dots 1 to 30 to see the unicorn horn!")
    ]
    items = []
    for idx, (did, title, count, icon, fact) in enumerate(dots_items, 1):
        # Generate 'count' numbered points in a nice recognizable polygon / circle
        pts = make_circle_points(cx=0.5, cy=0.5, r=0.35, n=count)

        items.append({
            "id": f"dots_{idx:02d}",
            "title": title,
            "category": f"{count} Dots",
            "difficulty": "Easy" if count <= 15 else ("Medium" if count <= 24 else "Hard"),
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": pts, "instruction": f"Connect the dots in order from 1 to {count}!"}
            ]
        })
    return items

def get_99_shadow_outline_items():
    # 30 Shadow outline matching activities
    shadows = [
        ("bunny_shadow", "Shadow of Floppy Bunny", "Animals", "Easy", "Recognize the tall floppy ears of the rabbit shadow!", "🐰"),
        ("lion_shadow", "Shadow of Roaring Lion", "Animals", "Medium", "The giant fluffy mane is unmistakable in silhouette!", "🦁"),
        ("airplane_shadow", "Shadow of Flying Jetliner", "Vehicles", "Easy", "Cross-shaped silhouette gliding over green fields!", "✈️"),
        ("car_shadow", "Shadow of Family Sedan", "Vehicles", "Easy", "Two wheel cutouts and smooth roof contour!", "🚗"),
        ("boat_shadow", "Shadow of Tall Sailboat", "Vehicles", "Easy", "Sharp triangular sail against setting sun!", "⛵"),
        ("butterfly_shadow", "Shadow of Swallowtail Butterfly", "Insects", "Medium", "Curved scallop edges on broad butterfly wings!", "🦋"),
        ("elephant_shadow", "Shadow of Walking Elephant", "Animals", "Hard", "Curving trunk and big flapping ears in shadow!", "🐘"),
        ("dino_shadow", "Shadow of T-Rex Dinosaur", "Animals", "Hard", "Giant jaw and long heavy balancing tail!", "🦖"),
        ("giraffe_shadow", "Shadow of Tall Giraffe", "Animals", "Medium", "Long slender neck reaching high for acacia leaves!", "🦒"),
        ("teddy_shadow", "Shadow of Chubby Teddy Bear", "Toys", "Easy", "Round ears and chubby cuddly bear arms!", "🧸"),
        ("house_shadow", "Shadow of Cottage & Chimney", "Buildings", "Easy", "Square building with peaked gable and chimney pipe!", "🏠"),
        ("tree_shadow", "Shadow of Shady Oak Tree", "Nature", "Medium", "Sprawling cloud-like crown over thick sturdy trunk!", "🌳"),
        ("star_shadow", "Shadow of Five Point Star", "Shapes", "Easy", "Five equal points casting sharp star shadows!", "⭐"),
        ("crown_shadow", "Shadow of King's Golden Crown", "Royal", "Easy", "Five spires with jewel finials at the top!", "👑"),
        ("apple_shadow", "Shadow of Round Apple", "Fruit", "Easy", "Round sphere with tilted little stem and leaf!", "🍎"),
        ("dolphin_shadow", "Shadow of Leaping Dolphin", "Marine", "Medium", "Curved body with dorsal fin and tail fluke!", "🐬"),
        ("guitar_shadow", "Shadow of Acoustic Guitar", "Music", "Hard", "Hourglass wooden body with long fretted neck!", "🎸"),
        ("bike_shadow", "Shadow of Two-Wheeled Bicycle", "Vehicles", "Hard", "Two round wheels, handlebars and triangular frame!", "🚲"),
        ("rocket_shadow", "Shadow of Space Rocket", "Space", "Easy", "Pointed cone nose with wide bottom stabilizer fins!", "🚀"),
        ("cat_shadow", "Shadow of Prowling Cat", "Animals", "Medium", "Sleek arching back with upright question mark tail!", "🐱"),
        ("dog_shadow", "Shadow of Sitting Retriever", "Animals", "Medium", "Floppy ears, alert snout and wagging tail!", "🐶"),
        ("castle_shadow", "Shadow of Fairytale Castle", "Castles", "Hard", "Multiple towers with crenelated battlements!", "🏰"),
        ("horse_shadow", "Shadow of Trotting Horse", "Animals", "Hard", "Graceful arched neck and flowing tail hairs!", "🐴"),
        ("train_shadow", "Shadow of Steam Engine Train", "Vehicles", "Medium", "Smoke chimney and cowcatcher front plow!", "🚂"),
        ("robot_shadow", "Shadow of Boxy Android", "Tech", "Medium", "Antenna head with clamp hands at the ready!", "🤖"),
        ("bird_shadow", "Shadow of Soaring Eagle", "Birds", "Easy", "Wide feathered wings spread flat against the clouds!", "🦅"),
        ("sunflower_shadow", "Shadow of Blooming Sunflower", "Flowers", "Medium", "Giant round disc surrounded by ray petals!", "🌻"),
        ("chopper_shadow", "Shadow of Rescue Helicopter", "Vehicles", "Hard", "Overhead rotor line and slender tail boom!", "🚁"),
        ("fish_shadow", "Shadow of Tropical Angel Fish", "Marine", "Easy", "Tall triangular fins slicing through water!", "🐠"),
        ("sun_shadow", "Shadow of Radiant Sun", "Sky", "Easy", "Round central disc with radiating star points!", "☀️")
    ]
    items = []
    for idx, (sid, title, cat, diff, fact, icon) in enumerate(shadows, 1):
        outline = [(0.25, 0.72), (0.28, 0.4), (0.5, 0.22), (0.72, 0.4), (0.75, 0.72), (0.25, 0.72)]

        items.append({
            "id": f"shadow_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": outline, "instruction": f"Trace the dark shadow silhouette of {title}"}
            ]
        })
    return items

def get_100_freehand_items():
    # 30 Drawing exercises with blank canvas, color choices, and guidance
    prompts = [
        ("happy_sun", "Draw a Warm Smiling Sun", "Sky", "Easy", "Start with a bright yellow circle and draw warm rays!", "☀️"),
        ("fluffy_cloud", "Draw a Fluffy Sky Cloud", "Weather", "Easy", "Make round connected puffs that float in blue air!", "☁️"),
        ("rainbow", "Draw a 7-Color Rainbow", "Sky", "Easy", "Arch red, orange, yellow, green, blue, purple!", "🌈"),
        ("garden_flower", "Draw a Garden Blossom", "Garden", "Easy", "A round center with five soft oval petals!", "🌸"),
        ("green_tree", "Draw a Big Shady Tree", "Nature", "Easy", "A brown trunk and a fluffy green treetop crown!", "🌳"),
        ("swimming_fish", "Draw a Swimming Fish", "Water", "Easy", "An oval body with a triangular tail fin!", "🐟"),
        ("cute_kitty", "Draw a Whisker Kitty Cat", "Animals", "Medium", "Round head, pointy triangle ears and cute whiskers!", "🐱"),
        ("friendly_dog", "Draw a Happy Puppy Dog", "Animals", "Medium", "Floppy ears, wagging tail and black button nose!", "🐶"),
        ("sweet_house", "Draw a Cozy Family House", "Buildings", "Easy", "A square box with a triangle roof and warm windows!", "🏠"),
        ("speedy_car", "Draw a Colorful Speed Car", "Vehicles", "Medium", "Sleek car body with two round spinning tires!", "🚗"),
        ("red_apple", "Draw a Sweet Red Apple", "Fruit", "Easy", "Round red apple with a tiny brown stem and leaf!", "🍎"),
        ("ice_cream", "Draw an Ice Cream Cone", "Sweets", "Easy", "Crispy waffle cone with two delicious sweet scoops!", "🍦"),
        ("butterfly", "Draw a Fluttering Butterfly", "Insects", "Medium", "Slender body with two big colorful wings!", "🦋"),
        ("sailboat", "Draw a Blue Water Sailboat", "Boats", "Easy", "A wooden boat hull with a tall white canvas sail!", "⛵"),
        ("shooting_star", "Draw a Golden Shooting Star", "Space", "Easy", "A five-point star with a glowing streaming tail!", "⭐"),
        ("flying_bird", "Draw a Chirping Songbird", "Birds", "Medium", "A round bird body, flapping wing and little beak!", "🐦"),
        ("funny_monster", "Draw a Cute Fuzzy Monster", "Fantasy", "Easy", "One or three eyes and a big funny friendly grin!", "👾"),
        ("shiny_crown", "Draw a Golden King Crown", "Royal", "Easy", "Gold headband with sparkling jewel tips!", "👑"),
        ("magic_wand", "Draw a Star Magic Wand", "Magic", "Easy", "A wooden wand with a glowing yellow star on top!", "🪄"),
        ("red_heart", "Draw a Big Loving Heart", "Symbols", "Easy", "Two soft curves joining at a point below!", "💖"),
        ("sweet_cupcake", "Draw a Swirl Cupcake", "Sweets", "Medium", "Corrugated cup with towering frosting swirls!", "🧁"),
        ("baby_elephant", "Draw a Baby Elephant", "Animals", "Hard", "Big floppy ears and a curving playful trunk!", "🐘"),
        ("teddy_bear", "Draw a Cuddly Teddy Bear", "Toys", "Medium", "Round ears, soft paws and a button tummy!", "🧸"),
        ("jet_plane", "Draw a Fast Jet Airplane", "Aviation", "Medium", "Pointed fuselage with swept-back wings!", "✈️"),
        ("rocket_ship", "Draw a Space Rocket Ship", "Space", "Medium", "Tall rocket body with flames shooting below!", "🚀"),
        ("red_barn", "Draw a Country Farm Barn", "Buildings", "Medium", "A big red barn with white X marks on doors!", "🚜"),
        ("forest_mushroom", "Draw a Spotted Mushroom", "Nature", "Easy", "An umbrella cap with cute white polka dots!", "🍄"),
        ("winter_snowman", "Draw a Chilly Winter Snowman", "Winter", "Easy", "Three snowballs stacked with a carrot nose!", "☃️"),
        ("treasure_chest", "Draw an Open Treasure Chest", "Treasure", "Hard", "An arched wooden chest overflowing with gold!", "🪙"),
        ("free_canvas", "Free Expression Blank Canvas", "Freehand", "Easy", "Draw whatever your wonderful imagination dreams up!", "🎨")
    ]
    items = []
    for idx, (fid, title, cat, diff, fact, icon) in enumerate(prompts, 1):
        # Sample starter guide lines that provide a light template on the canvas
        c = make_circle_points(cx=0.5, cy=0.5, r=0.28, n=16)

        items.append({
            "id": f"freehand_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": c, "instruction": f"Practice freehand drawing: {title}!"}
            ]
        })
    return items

