# data_batch_71_80.py
import math
from data_helper import (
    make_line, make_circle_points, make_arc_points,
    make_rect_points, make_oval_points, make_star_points,
    make_heart_points, make_wave_points, make_triangle_points
)

def get_batch_71_80(app_idx):
    if app_idx == 71:
        return get_71_princess_items()
    elif app_idx == 72:
        return get_72_unicorn_items()
    elif app_idx == 73:
        return get_73_mermaid_items()
    elif app_idx == 74:
        return get_74_robot_items()
    elif app_idx == 75:
        return get_75_superhero_items()
    elif app_idx == 76:
        return get_76_fairy_items()
    elif app_idx == 77:
        return get_77_castle_items()
    elif app_idx == 78:
        return get_78_dragon_items()
    elif app_idx == 79:
        return get_79_space_character_items()
    elif app_idx == 80:
        return get_80_cute_cartoon_items()
    else:
        raise ValueError(f"Invalid app index for batch 71-80: {app_idx}")

def get_71_princess_items():
    items_def = [
        ("ballgown", "Sparkling Princess Ballgown", "Dresses", "Easy", "Made with layers of shimmering pink satin!", "👗"),
        ("tiara", "Glittering Diamond Tiara", "Crowns", "Easy", "Rests gracefully atop princess hair curls!", "👑"),
        ("glass_slipper", "Crystal Glass Slipper", "Shoes", "Easy", "Fits only the kind and gentle princess!", "👠"),
        ("magic_mirror", "Enchanted Gold Mirror", "Magic", "Medium", "Shows faraway kingdom meadows and rainbows!", "🪞"),
        ("princess_castle", "Pink Royal Palace Spire", "Castles", "Hard", "Tall pink towers with waving silk banners!", "🏰"),
        ("magic_wand", "Star Tipped Magic Wand", "Magic", "Easy", "Wave the wand to turn pumpkins into carriages!", "🪄"),
        ("golden_carriage", "Golden Pumpkin Carriage", "Carriage", "Hard", "Pulled by four snowy white royal horses!", "🎠"),
        ("royal_scepter", "Ruby Encrusted Scepter", "Regalia", "Medium", "Symbol of peaceful kingdom leadership!", "🪄"),
        ("pearl_necklace", "Lustrous Pearl Choker", "Jewelry", "Easy", "Luminous natural pearls from mermaid lagoons!", "📿"),
        ("rose_bouquet", "Royal Velvet Rose Bouquet", "Flowers", "Easy", "Freshly gathered from palace rose gardens!", "💐"),
        ("feathered_fan", "Silk Ballroom Hand Fan", "Accessories", "Medium", "Cools dancers during festive royal waltzes!", "🪭"),
        ("velvet_cape", "Royal Ermine Trim Cape", "Apparel", "Medium", "Keeps princesses cozy on winter carriage rides!", "🧣"),
        ("crystal_chandelier", "Palace Ballroom Chandelier", "Decor", "Hard", "Hundreds of crystal drops catching candle light!", "✨"),
        ("princess_pony", "Braided Mane Royal Pony", "Animals", "Hard", "Loves eating sweet red apples from princess hands!", "🐴"),
        ("fairy_godmother", "Fairy Godmother Wings", "Magic", "Medium", "Grants heartfelt wishes with kindness and love!", "🧚"),
        ("emerald_ring", "Sparkling Emerald Royal Ring", "Jewelry", "Easy", "Glittering deep green stone set in pure gold!", "💍"),
        ("grand_stairs", "Curved Palace Grand Staircase", "Palace", "Hard", "Sweeps gracefully down to the crystal ballroom!", "🏛️"),
        ("satin_ribbon", "Silk Hair Ribbon Bow", "Accessories", "Easy", "Ties around sunny blonde curls with a soft knot!", "🎀"),
        ("royal_pillow", "Velvet Crown Pillow", "Royal", "Easy", "Soft plush velvet with golden corner tassels!", "👑"),
        ("royal_crest", "Kingdom Golden Shield Crest", "Heraldry", "Hard", "Embroidery showing twin smiling swans!", "🛡️"),
        ("ballet_shoes", "Pink Satin Ballet Slippers", "Shoes", "Easy", "Twirling gracefully on tiptoes across the stage!", "🩰"),
        ("teacup_saucer", "Porcelain Royal Tea Cup", "Dining", "Easy", "Drinking sweet chamomile tea with honey!", "☕"),
        ("heart_locket", "Golden Keepsake Locket", "Jewelry", "Medium", "Holds a tiny family portrait close to heart!", "💖"),
        ("starlight_harp", "Gilded Golden Harp", "Music", "Hard", "Plays soothing lullabies for sleeping kingdom babies!", "🎵"),
        ("quill_parchment", "Peacock Feather Writing Quill", "Writing", "Medium", "Writes invitations to the grand festival ball!", "🪶"),
        ("royal_signet", "Wax Seal Monogram", "Royal", "Medium", "Stamps warm red wax to seal royal letters!", "✉️"),
        ("golden_key", "Secret Garden Golden Key", "Treasure", "Easy", "Unlocks the iron gate to the secret rose maze!", "🗝️"),
        ("canopy_bed", "Royal Silk Canopy Bed", "Palace", "Hard", "Piled high with twenty soft downy feather mattresses!", "🛏️"),
        ("throne_chair", "Ornate Velvet Royal Throne", "Palace", "Hard", "Carved gold armrests with plush velvet cushions!", "🪑"),
        ("swan_princess", "Graceful Lake Princess Swan", "Animals", "Medium", "Glides gently across mirror-smooth palace lakes!", "🦢")
    ]
    items = []
    for idx, (pid, title, cat, diff, fact, icon) in enumerate(items_def, 1):
        if pid == "tiara":
            base = [(0.2, 0.65), (0.8, 0.65)]
            points = [(0.2, 0.65), (0.3, 0.45), (0.4, 0.58), (0.5, 0.35), (0.6, 0.58), (0.7, 0.45), (0.8, 0.65)]
            strokes = [
                {"id": 1, "points": base, "instruction": f"Trace the curved band of {title}"},
                {"id": 2, "points": points, "instruction": "Trace the sparkling crown peaks"}
            ]
        elif pid == "ballgown":
            bodice = [(0.42, 0.28), (0.58, 0.28), (0.55, 0.45), (0.45, 0.45), (0.42, 0.28)]
            skirt = [(0.45, 0.45), (0.2, 0.8), (0.8, 0.8), (0.55, 0.45)]
            strokes = [
                {"id": 1, "points": bodice, "instruction": f"Trace the top bodice of {title}"},
                {"id": 2, "points": skirt, "instruction": "Trace the flowing royal skirt"}
            ]
        else:
            c = make_circle_points(cx=0.5, cy=0.48, r=0.25, n=16)
            decor = [(0.32, 0.48), (0.68, 0.48)]
            strokes = [
                {"id": 1, "points": c, "instruction": f"Trace the main outline of {title}"},
                {"id": 2, "points": decor, "instruction": "Trace the royal jewel accents"}
            ]

        items.append({
            "id": f"princess_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": strokes
        })
    return items

def get_72_unicorn_items():
    unicorns = [
        ("standing_unicorn", "Graceful Standing Unicorn", "Pose", "Medium", "Stands proudly in a meadow of starry flowers!", "🦄"),
        ("prancing_unicorn", "High-Prancing White Unicorn", "Pose", "Hard", "Lifts silvery hooves high with playful joy!", "🦄"),
        ("galloping_unicorn", "Wind-Galloping Unicorn", "Pose", "Hard", "Gallops as fast as the northern autumn wind!", "🦄"),
        ("sleeping_unicorn", "Curled Cozy Baby Unicorn", "Pose", "Easy", "Curled peacefully under a blooming lilac bush!", "🦄"),
        ("unicorn_head", "Majestic Unicorn Profile", "Portrait", "Easy", "Flowing rainbow mane and gentle sparkling eyes!", "🦄"),
        ("golden_horn", "Spiraled Magic Alicorn", "Magic", "Easy", "The magical spiral horn is called an alicorn!", "✨"),
        ("pegasus_wings", "Feathered Winged Pegasus", "Winged", "Hard", "Twin feathered wings lift unicorns into clouds!", "🪽"),
        ("rainbow_unicorn", "Rainbow Mane Unicorn", "Rainbow", "Medium", "Mane shines with all seven bright rainbow colors!", "🌈"),
        ("starry_unicorn", "Starlight Midnight Unicorn", "Cosmic", "Medium", "Star dust sparkles wherever its hooves step!", "⭐"),
        ("crystal_unicorn", "Pure Quartz Crystal Unicorn", "Crystal", "Hard", "Glows with shimmering translucent prism light!", "💎"),
        ("baby_foal", "Playful Baby Unicorn Foal", "Baby", "Easy", "Tiny golden horn just beginning to sprout!", "🦄"),
        ("winged_alicorn", "Royal Princess Alicorn", "Royal", "Hard", "Possesses both a magic horn and pegasus wings!", "🪽"),
        ("moonlit_unicorn", "Moonbeam Silver Unicorn", "Moon", "Medium", "Drinks cool water from moonlit forest springs!", "🌙"),
        ("sunbeam_unicorn", "Golden Sunbeam Unicorn", "Sun", "Medium", "Warms forest creatures with sunny golden magic!", "☀️"),
        ("rose_unicorn", "Rose Garland Unicorn", "Floral", "Easy", "Wears sweet pink rose crowns woven by fairies!", "🌹"),
        ("cloud_unicorn", "Sky Cloud Gliding Unicorn", "Sky", "Medium", "Steps gently across fluffy cumulus cloud steps!", "☁️"),
        ("cosmic_unicorn", "Milky Way Galaxy Unicorn", "Cosmic", "Hard", "Travels constellations across distant galaxies!", "🌌"),
        ("sparkling_unicorn", "Glittering Diamond Unicorn", "Sparkle", "Medium", "Sprinkles glitter that makes flowers bloom!", "✨"),
        ("forest_unicorn", "Enchanted Forest Guardian", "Forest", "Hard", "Protects woodland deer, bunnies and songbirds!", "🌲"),
        ("waterfall_unicorn", "Misty Waterfall Unicorn", "Water", "Medium", "Bathes under cool cascading forest waterfalls!", "🌊"),
        ("meadow_unicorn", "Clover Meadow Unicorn", "Meadow", "Easy", "Munches sweet clover and fragrant chamomile!", "🍀"),
        ("golden_mane", "Braided Golden Mane Unicorn", "Beauty", "Medium", "Braided with golden ribbons and buttercups!", "🎀"),
        ("fairy_friend", "Fairy Riding Unicorn", "Friendship", "Hard", "A tiny garden fairy sits comfortably behind ears!", "🧚"),
        ("jeweled_hooves", "Ruby Hoofed Unicorn", "Jewel", "Easy", "Hooves leave glowing jewel marks on pebbles!", "💎"),
        ("dream_unicorn", "Sweet Dreams Night Unicorn", "Dream", "Easy", "Guards children's sleep from stormy nightmares!", "💤"),
        ("castle_guard", "Royal Palace Guard Unicorn", "Royal", "Hard", "Stands noble guard at castle golden gates!", "🏰"),
        ("ocean_unicorn", "Tide Foam Sea Unicorn", "Ocean", "Medium", "Leaps from crashing white waves like sea spray!", "🌊"),
        ("firefly_unicorn", "Firefly Night Unicorn", "Night", "Medium", "Surrounded by a halo of glowing green fireflies!", "🪲"),
        ("twin_unicorns", "Twin Brother Unicorns", "Duo", "Hard", "Two playful unicorn twins playing leapfrog!", "🦄"),
        ("crowned_queen", "Queen Celestia Unicorn", "Queen", "Hard", "The wise mother unicorn of all magical realms!", "👑")
    ]
    items = []
    for idx, (uid, title, cat, diff, fact, icon) in enumerate(unicorns, 1):
        # Head & neck outline
        head = [(0.25, 0.65), (0.35, 0.48), (0.5, 0.42), (0.6, 0.52), (0.55, 0.65), (0.4, 0.72), (0.25, 0.65)]
        # Spiral Horn
        horn = [(0.48, 0.42), (0.65, 0.18), (0.54, 0.42)]
        # Mane
        mane = [(0.35, 0.48), (0.28, 0.58), (0.3, 0.75)]
        # Eye
        eye = make_circle_points(cx=0.48, cy=0.52, r=0.03, n=8)

        items.append({
            "id": f"unicorn_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": head, "instruction": f"Trace the noble head of {title}"},
                {"id": 2, "points": horn, "instruction": "Trace the magic spiral unicorn horn"},
                {"id": 3, "points": mane, "instruction": "Trace the flowing silky mane"},
                {"id": 4, "points": eye, "instruction": "Draw the gentle twinkling eye"}
            ]
        })
    return items

def get_73_mermaid_items():
    mermaids = [
        ("smiling_mermaid", "Smiling Coral Mermaid", "Character", "Medium", "Swims swiftly with friendly ocean dolphins!", "🧜‍♀️"),
        ("mermaid_tail", "Gleaming Fish Scales Tail", "Tail", "Easy", "Iridescent scales shimmer in underwater sunlight!", "🧜‍♀️"),
        ("seashell_top", "Pink Scallop Seashell Top", "Apparel", "Easy", "Made from natural ocean shells tied with seaweed!", "🐚"),
        ("pearl_crown", "Lagoon Pearl Princess Crown", "Crown", "Easy", "Woven from seaweed and glowing white pearls!", "👑"),
        ("underwater_castle", "Sunken Coral Castle", "Palace", "Hard", "Built from living pink coral and giant sea sponges!", "🏰"),
        ("dolphin_friend", "Friendly Leaping Dolphin", "Creatures", "Medium", "Clicks and chirps cheerful underwater messages!", "🐬"),
        ("seahorse_companion", "Tiny Sea Horse Companion", "Creatures", "Easy", "Anchors its curly tail to seaweed branches!", "🫧"),
        ("starfish_clip", "Five-Point Starfish Hairclip", "Accessories", "Easy", "Gentle orange starfish sits in mermaid hair!", "⭐"),
        ("clam_shell_bed", "Giant Clam Shell Bed", "Furniture", "Medium", "Lined with soft green moss for cozy sea dreams!", "🐚"),
        ("sea_turtle_pal", "Ancient Green Sea Turtle", "Creatures", "Hard", "Flies through deep blue water like a bird!", "🐢"),
        ("coral_garden", "Branching Reef Coral Garden", "Habitat", "Hard", "Tiny coral polyps build gigantic ocean reefs!", "🪸"),
        ("message_bottle", "Floating Message in Bottle", "Treasure", "Easy", "Contains a secret map to buried pirate gold!", "🍾"),
        ("pirate_chest", "Sunken Treasure Chest", "Treasure", "Hard", "Filled with gold doubloons and emerald necklaces!", "🪙"),
        ("sea_trident", "Golden Ocean Trident", "Regalia", "Medium", "Commands gentle tides and calms stormy waters!", "🔱"),
        ("glowing_jellyfish", "Bioluminescent Jellyfish", "Creatures", "Medium", "Pulses with soft blue and purple night light!", "🪼"),
        ("deep_sea_angler", "Friendly Deep Sea Angler", "Creatures", "Hard", "Has a little glowing lantern on its forehead!", "🐟"),
        ("baby_octopus", "Playful Baby Octopus", "Creatures", "Easy", "Eight cute wiggly arms give super hugs!", "🐙"),
        ("pearl_clam", "Open Clam with Giant Pearl", "Treasure", "Medium", "Takes years for oysters to polish round pearls!", "🦪"),
        ("seaweed_swirl", "Flowing Kelp Seaweed Swirl", "Plants", "Easy", "Giant kelp grows up to two feet every day!", "🌿"),
        ("dancing_clownfish", "Striped Orange Clownfish", "Creatures", "Easy", "Lives safely among stinging sea anemones!", "🐠"),
        ("ocean_wave", "Curling Ocean Wave Crest", "Water", "Medium", "Carries sea foam and salty refreshing breezes!", "🌊"),
        ("sea_anemone", "Waving Tentacle Anemone", "Creatures", "Hard", "Looks like a garden flower but is actually an animal!", "🪸"),
        ("blue_whale", "Singing Blue Ocean Whale", "Creatures", "Hard", "The largest creature ever to live on our planet!", "🐋"),
        ("mermaid_mirror", "Abalone Shell Hand Mirror", "Accessories", "Easy", "Rainbow abalone mother-of-pearl frame!", "🪞"),
        ("conch_horn", "Spiraled Sea Conch Trumpet", "Music", "Medium", "Blow through the conch to call ocean friends!", "🐚"),
        ("tropical_lagoon", "Hidden Emerald Lagoon", "Habitat", "Medium", "Protected by ring reefs from big ocean waves!", "🏝️"),
        ("moonlit_tide", "Midnight Glowing Tide", "Night", "Easy", "Plankton glow blue when waves lap the sand!", "🌊"),
        ("sand_realm", "Underwater Sandcastle Realm", "Fun", "Hard", "Sculpted by mermaid princesses using wet sea sand!", "🏖️"),
        ("shell_necklace", "Twisted Puka Shell Choker", "Jewelry", "Easy", "Smooth polished ocean shells on woven hemp!", "📿"),
        ("singing_siren", "Singing Mermaid on Rock", "Myth", "Hard", "Sweet songs make stormy oceans calm and quiet!", "🧜‍♀️")
    ]
    items = []
    for idx, (mid, title, cat, diff, fact, icon) in enumerate(mermaids, 1):
        if mid == "mermaid_tail":
            fluke = [(0.5, 0.3), (0.45, 0.6), (0.35, 0.8), (0.5, 0.72), (0.65, 0.8), (0.55, 0.6), (0.5, 0.3)]
            strokes = [{"id": 1, "points": fluke, "instruction": f"Trace the swimming fin tail of {title}"}]
        elif mid == "seashell_top":
            s1 = make_arc_points(cx=0.38, cy=0.5, r=0.12, start_deg=180, sweep_deg=180, n=8)
            s2 = make_arc_points(cx=0.62, cy=0.5, r=0.12, start_deg=180, sweep_deg=180, n=8)
            strokes = [
                {"id": 1, "points": s1, "instruction": f"Trace the left shell of {title}"},
                {"id": 2, "points": s2, "instruction": "Trace the right shell cup"}
            ]
        else:
            body = make_circle_points(cx=0.5, cy=0.38, r=0.18, n=16)
            tail = [(0.5, 0.56), (0.42, 0.72), (0.5, 0.84), (0.58, 0.72), (0.5, 0.56)]
            strokes = [
                {"id": 1, "points": body, "instruction": f"Trace the head and torso of {title}"},
                {"id": 2, "points": tail, "instruction": "Trace the curving mermaid tail"}
            ]

        items.append({
            "id": f"mermaid_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": strokes
        })
    return items

def get_74_robot_items():
    robots = [
        ("tin_robot", "Vintage Clockwork Tin Bot", "Retro", "Easy", "Has a winding key in back that goes click-clack!", "🤖"),
        ("helper_bot", "Smiling Home Helper Bot", "Domestic", "Easy", "Cleans up toys and puts books on low shelves!", "🤖"),
        ("android_explorer", "Mars Rover Android", "Explorer", "Hard", "Rolls across red martian dust finding ice!", "🤖"),
        ("wheeled_bot", "Self-Balancing Wheel Bot", "Wheeled", "Easy", "Balances on two rubber wheels like a segway!", "🤖"),
        ("flying_drone_bot", "Quad-Rotor Drone Bot", "Aviation", "Medium", "Spins four propellers to hover in mid-air!", "🤖"),
        ("industrial_arm", "Heavy Factory Robotic Arm", "Factory", "Hard", "Lifts heavy car engines with steel precision!", "🦾"),
        ("nano_bot", "Microscopic Nano Explorer", "Medical", "Hard", "Smaller than a speck of dust to heal cells!", "🤖"),
        ("vacuum_bot", "Round Robotic Floor Cleaner", "Domestic", "Easy", "Scampers around the rug sucking up crumbs!", "🤖"),
        ("doggy_bot", "Robotic Puppy Companion", "Pet", "Medium", "Wags its metal antenna tail when you pet it!", "🐕"),
        ("solar_bot", "Sun-Powered Solar Rover", "Green", "Medium", "Unfolds solar wings every morning at sunrise!", "🤖"),
        ("submarine_bot", "Deep Sea Trench Explorer", "Marine", "Hard", "Survives intense crushing deep ocean pressures!", "🤖"),
        ("windup_walker", "Key-Wound Mechanical Walker", "Retro", "Easy", "Waddles forward with funny mechanical steps!", "🤖"),
        ("laser_bot", "Precision Laser Cutting Bot", "Industrial", "Hard", "Cuts steel sheets using beams of pure light!", "🤖"),
        ("chef_bot", "Pancake Flipping Chef Bot", "Culinary", "Medium", "Flips hot pancakes 3 feet into the air!", "🤖"),
        ("garden_bot", "Weed Pulling Garden Bot", "Agri", "Medium", "Identifies weeds with camera eyes and pulls them!", "🤖"),
        ("patrol_bot", "Security Patrol Sentry Bot", "Security", "Medium", "Patrols museum halls keeping paintings safe!", "🤖"),
        ("music_bot", "Synthesizer Music Bot", "Arts", "Hard", "Plays electronic synth tunes with flashing LEDs!", "🤖"),
        ("builder_bot", "Brick Laying Mason Bot", "Building", "Hard", "Lays 1,000 bricks an hour with perfect cement!", "🤖"),
        ("telescope_bot", "Star Tracker Observatory Bot", "Science", "Hard", "Points giant telescopes at distant galaxies!", "🤖"),
        ("fire_rescue_bot", "Fireproof Emergency Bot", "Rescue", "Hard", "Crawls into smoky buildings to rescue puppies!", "🤖"),
        ("medic_bot", "First Aid Hospital Bot", "Medical", "Medium", "Delivers medicine vials to doctor rooms quickly!", "🤖"),
        ("courier_bot", "Sidewalk Parcel Delivery Bot", "Delivery", "Easy", "Drives safely on sidewalks delivering books!", "🤖"),
        ("biped_runner", "Two-Legged Sprinting Android", "Biped", "Hard", "Can do backflips and parkour over obstacles!", "🤖"),
        ("cyber_shield", "Antivirus Firewall Bot", "Digital", "Medium", "Guards computers from pesky digital bugs!", "🛡️"),
        ("magnet_crane_bot", "Electromagnetic Scrap Lifter", "Industrial", "Hard", "Turns magnets on and off to pick up iron cars!", "🤖"),
        ("tutor_bot", "Friendly Math Teacher Bot", "Education", "Easy", "Helps kids practice fun math puzzles and art!", "🤖"),
        ("cave_explorer", "Spelunking Cave Drone Bot", "Explorer", "Hard", "Maps dark underground bat caves with radar!", "🤖"),
        ("mech_titan", "Giant Exoskeleton Titan Bot", "Heavy", "Hard", "Piloted from inside a high chest cockpit!", "🤖"),
        ("ai_assistant_orb", "Floating AI Assistant Orb", "Future", "Easy", "Floats alongside you answering questions!", "🔮"),
        ("time_travel_bot", "Chrono Clockwork Navigator", "Fantasy", "Hard", "Tracks seconds, minutes, hours and centuries!", "⏳")
    ]
    items = []
    for idx, (rid, title, cat, diff, fact, icon) in enumerate(robots, 1):
        # Square head
        head = make_rect_points(0.35, 0.22, 0.3, 0.2)
        # Rectangular body
        body = make_rect_points(0.3, 0.44, 0.4, 0.3)
        # Antenna
        antenna = [(0.5, 0.22), (0.5, 0.12)]
        ball = make_circle_points(cx=0.5, cy=0.1, r=0.03, n=8)
        # Legs / treads
        leg1 = [(0.38, 0.74), (0.38, 0.88)]
        leg2 = [(0.62, 0.74), (0.62, 0.88)]

        items.append({
            "id": f"robot_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": head, "instruction": f"Trace the square robot head of {title}"},
                {"id": 2, "points": body, "instruction": "Trace the rectangular metal chassis"},
                {"id": 3, "points": antenna, "instruction": "Trace the communication antenna"},
                {"id": 4, "points": leg1, "instruction": "Trace the left sturdy leg"},
                {"id": 5, "points": leg2, "instruction": "Trace the right sturdy leg"}
            ]
        })
    return items

def get_75_superhero_items():
    # Original, creative superheroes (no copyrighted characters)
    heroes = [
        ("falcon_guardian", "Falcon Guardian Wing", "Aero", "Medium", "Soars high above the city watching over everyone!", "🦅"),
        ("solar_knight", "Solar Knight Shield", "Solar", "Easy", "Absorbs golden sunlight to cast protective energy!", "🛡️"),
        ("thunder_hero", "Thunder Hero Hammer", "Lightning", "Medium", "Commands gentle lightning to power city lights!", "⚡"),
        ("aqua_champion", "Aqua Champion Trident", "Ocean", "Medium", "Breathes underwater and talks to friendly whales!", "🔱"),
        ("wind_runner", "Wind Runner Speed Boots", "Speed", "Easy", "Runs so fast that friendly breezes cool the streets!", "👟"),
        ("shadow_defender", "Shadow Defender Mask", "Mask", "Easy", "Blends into midnight shadows to stop mischief!", "🎭"),
        ("crystal_sentinel", "Crystal Sentinel Armor", "Crystal", "Hard", "Body reflects light beams like solid diamond!", "💎"),
        ("flame_striker", "Flame Striker Gauntlet", "Fire", "Medium", "Fires harmless warm light to guide lost hikers!", "🔥"),
        ("star_voyager", "Star Voyager Helmet", "Space", "Hard", "Flies through asteroid belts between distant stars!", "🚀"),
        ("iron_titan", "Iron Titan Exosuit", "Armor", "Hard", "Lifts falling bridges to keep school buses safe!", "🦾"),
        ("forest_ranger", "Forest Ranger Bow", "Nature", "Medium", "Protects ancient woodland trees and wild deer!", "🏹"),
        ("mystic_sorcerer", "Mystic Sorcerer Orb", "Magic", "Hard", "Creates magical glowing portals between rooms!", "🔮"),
        ("cyber_ninja", "Cyber Ninja Katana", "Stealth", "Hard", "Hops across skyscraper rooftops completely silent!", "🥷"),
        ("sonic_wave", "Sonic Wave Visor", "Sound", "Easy", "Can hear a crying kitten five miles away!", "🎧"),
        ("golden_eagle", "Golden Eagle Cape", "Flight", "Medium", "Golden silk cape allows gliding across mountain passes!", "🦅"),
        ("glacier_frost", "Glacier Frost Wand", "Ice", "Medium", "Creates smooth ice slides for kids to play on!", "❄️"),
        ("quantum_leap", "Quantum Leap Belt", "Tech", "Hard", "Can teleport five steps forward in the blink of an eye!", "⚡"),
        ("echo_pulse", "Echo Pulse Tuning Fork", "Sound", "Medium", "Uses echolocation just like friendly bats do!", "🦇"),
        ("magnetic_force", "Magnetic Force Bracers", "Magnetic", "Medium", "Attracts runaway metal carts before they bump!", "🧲"),
        ("nova_spark", "Nova Spark Star Emits", "Energy", "Easy", "Glows in the dark so nobody is scared of shadows!", "✨"),
        ("arrow_scout", "Arrow Scout Quiver", "Scout", "Easy", "Arrows have soft suction cups that turn on light switches!", "🏹"),
        ("emerald_guardian", "Emerald Guardian Staff", "Life", "Medium", "Causes wilted flower gardens to instantly bloom!", "🌱"),
        ("turbo_racer", "Turbo Racer Helmet", "Vehicle", "Hard", "Drives a custom rocket car that flies over traffic!", "🏎️"),
        ("apex_warrior", "Apex Warrior Crest", "Honor", "Hard", "Stands for honesty, kindness, courage and truth!", "🛡️"),
        ("celestial_archer", "Celestial Archer Star Bow", "Cosmic", "Hard", "Shoots falling stars across the night sky for wishes!", "⭐"),
        ("vortex_spinner", "Vortex Wind Spinner", "Wind", "Medium", "Spins around to create mini whirlwinds of autumn leaves!", "🌀"),
        ("prism_weaver", "Prism Rainbow Weaver", "Light", "Easy", "Weaves broken light rays back into bright rainbows!", "🌈"),
        ("aegis_defender", "Aegis Diamond Crest", "Defense", "Hard", "Creates forcefields that shield baby birds from rain!", "🛡️"),
        ("skyward_ace", "Skyward Jetpack Ace", "Flight", "Medium", "Straps on twin mini jet turbines to zoom up high!", "🚀"),
        ("omega_sentinel", "Omega Cosmic Sentinel", "Guardian", "Hard", "Guards our entire beautiful blue planet Earth!", "🌍")
    ]
    items = []
    for idx, (hid, title, cat, diff, fact, icon) in enumerate(heroes, 1):
        if "Shield" in title or "Crest" in title:
            crest = [(0.25, 0.3), (0.75, 0.3), (0.75, 0.58), (0.5, 0.82), (0.25, 0.58), (0.25, 0.3)]
            star = make_star_points(points_count=5, cx=0.5, cy=0.5, r_outer=0.15, r_inner=0.07)
            strokes = [
                {"id": 1, "points": crest, "instruction": f"Trace the protective superhero shield of {title}"},
                {"id": 2, "points": star, "instruction": "Trace the hero emblem star"}
            ]
        elif "Mask" in title or "Visor" in title or "Helmet" in title:
            mask = [(0.2, 0.45), (0.4, 0.55), (0.5, 0.45), (0.6, 0.55), (0.8, 0.45), (0.75, 0.35), (0.5, 0.38), (0.25, 0.35), (0.2, 0.45)]
            strokes = [{"id": 1, "points": mask, "instruction": f"Trace the hero disguise mask of {title}"}]
        else:
            cape = [(0.38, 0.28), (0.62, 0.28), (0.78, 0.8), (0.5, 0.72), (0.22, 0.8), (0.38, 0.28)]
            emblem = make_circle_points(cx=0.5, cy=0.48, r=0.1, n=12)
            strokes = [
                {"id": 1, "points": cape, "instruction": f"Trace the billowing hero cape of {title}"},
                {"id": 2, "points": emblem, "instruction": "Trace the central power crest"}
            ]

        items.append({
            "id": f"hero_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": strokes
        })
    return items

def get_76_fairy_items():
    fairies = [
        ("blossom_fairy", "Pink Blossom Petal Fairy", "Flower", "Easy", "Helps closed flower buds unfurl in morning sun!", "🧚"),
        ("dewdrop_fairy", "Morning Dewdrop Sprite", "Water", "Easy", "Places tiny crystal water drops on spider webs!", "💧"),
        ("starlight_fairy", "Twinkling Starlight Pixie", "Light", "Medium", "Polishes distant stars so they sparkle clearly!", "✨"),
        ("moss_fairy", "Velvet Forest Moss Fairy", "Woodland", "Medium", "Sleeps on cool green velvety tree moss!", "🌿"),
        ("flutter_wings", "Iridescent Gossamer Wings", "Wings", "Easy", "Wings beat so fast they sound like bumblebee hums!", "🪽"),
        ("moon_fairy", "Silver Moonbeam Fairy", "Night", "Medium", "Rides on beams of moonshine through the forest!", "🌙"),
        ("sunbeam_fairy", "Warm Sunbeam Sprite", "Sun", "Easy", "Warms little caterpillars before they turn into butterflies!", "☀️"),
        ("autumn_fairy", "Golden Autumn Leaf Fairy", "Season", "Medium", "Paints green summer leaves into gold and scarlet!", "🍂"),
        ("winter_frost", "Frost Crystal Ice Pixie", "Winter", "Hard", "Paints delicate frost ferns on bedroom windows!", "❄️"),
        ("butterfly_fairy", "Swallowtail Butterfly Fairy", "Wings", "Medium", "Has wings identical to yellow tiger swallowtails!", "🦋"),
        ("river_fairy", "Babbling River Ripple Fairy", "Water", "Medium", "Swims alongside friendly silver minnow fish!", "🌊"),
        ("rainbow_sprite", "Rainbow Spectrum Sprite", "Rainbow", "Easy", "Carries pots of rainbow paint across the clouds!", "🌈"),
        ("firefly_fairy", "Glowing Firefly Lantern Fairy", "Night", "Easy", "Carries a glowing acorn lantern to guide mice!", "🏮"),
        ("bluebell_pixie", "Ringing Bluebell Pixie", "Flower", "Easy", "Rings bluebell flowers like tiny dinner bells!", "🪻"),
        ("crystal_fairy", "Amethyst Cave Fairy", "Crystal", "Hard", "Carves sparkling purple geodes deep in hills!", "💎"),
        ("rosebud_fairy", "Sweet Rosebud Princess", "Flower", "Medium", "Dresses in soft fragrant crimson rose petals!", "🌹"),
        ("cloud_dancer", "Sky Cloud Dancer Fairy", "Sky", "Medium", "Sculpts clouds into playful bunny rabbit shapes!", "☁️"),
        ("dream_weaver", "Sweet Dream Weaver Fairy", "Dream", "Hard", "Weaves pleasant dreams from moonbeams and honey!", "💤"),
        ("golden_wand", "Star Fairy Magic Wand", "Magic", "Easy", "Leaves a trail of gold sparkles in the twilight air!", "🪄"),
        ("wishing_star", "Falling Star Wish Fairy", "Cosmic", "Medium", "Catches children's wishes and carries them to sky!", "⭐"),
        ("honeybee_fairy", "Pollinating Honeybee Fairy", "Nature", "Medium", "Helps bees find the sweetest clover patches!", "🐝"),
        ("wildberry_sprite", "Juicy Wildberry Sprite", "Fruit", "Easy", "Picks sweet wild blackberries for woodland pies!", "🫐"),
        ("tree_guardian", "Ancient Oak Guardian Fairy", "Forest", "Hard", "Protects five-hundred-year-old hollow oak homes!", "🌳"),
        ("dandelion_fairy", "Dandelion Parachute Fairy", "Meadow", "Easy", "Floats on fluffy dandelion seeds across valleys!", "🌱"),
        ("melody_fairy", "Woodland Melody Bird Fairy", "Music", "Medium", "Teaches morning robins their sweetest songs!", "🎶"),
        ("twilight_fairy", "Purple Twilight Glade Fairy", "Twilight", "Medium", "Announces nightfall as the first stars appear!", "🌆"),
        ("ocean_breeze", "Salty Sea Breeze Fairy", "Ocean", "Easy", "Blows sailboat toy boats across calm park ponds!", "⛵"),
        ("spellbook_fairy", "Miniature Fairy Spellbook", "Magic", "Hard", "Tiny book bound with birch bark and gold thread!", "📖"),
        ("mushroom_ring", "Fairy Ring Dancing Toadstool", "Habitat", "Hard", "Circles of mushrooms where fairies dance in reels!", "🍄"),
        ("fairy_queen", "Queen Titania Diamond Crown", "Royal", "Hard", "Crown woven of silver spider silk and starlight!", "👑")
    ]
    items = []
    for idx, (fid, title, cat, diff, fact, icon) in enumerate(fairies, 1):
        if "Wing" in title or fid == "flutter_wings":
            w1 = make_arc_points(cx=0.35, cy=0.42, r=0.22, start_deg=-60, sweep_deg=140, n=12)
            w2 = make_arc_points(cx=0.65, cy=0.42, r=0.22, start_deg=100, sweep_deg=-140, n=12)
            w3 = make_arc_points(cx=0.38, cy=0.62, r=0.15, start_deg=-45, sweep_deg=120, n=10)
            w4 = make_arc_points(cx=0.62, cy=0.62, r=0.15, start_deg=85, sweep_deg=-120, n=10)
            strokes = [
                {"id": 1, "points": w1, "instruction": f"Trace top left fairy wing of {title}"},
                {"id": 2, "points": w2, "instruction": "Trace top right fairy wing"},
                {"id": 3, "points": w3, "instruction": "Trace bottom left fairy wing"},
                {"id": 4, "points": w4, "instruction": "Trace bottom right fairy wing"}
            ]
        else:
            head = make_circle_points(cx=0.5, cy=0.32, r=0.12, n=12)
            dress = [(0.5, 0.44), (0.35, 0.78), (0.65, 0.78), (0.5, 0.44)]
            wing_l = [(0.45, 0.46), (0.2, 0.38), (0.42, 0.58)]
            wing_r = [(0.55, 0.46), (0.8, 0.38), (0.58, 0.58)]
            strokes = [
                {"id": 1, "points": head, "instruction": f"Trace the gentle head of {title}"},
                {"id": 2, "points": dress, "instruction": "Trace the petal fairy gown"},
                {"id": 3, "points": wing_l, "instruction": "Trace the left fluttering wing"},
                {"id": 4, "points": wing_r, "instruction": "Trace the right fluttering wing"}
            ]

        items.append({
            "id": f"fairy_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": strokes
        })
    return items

def get_77_castle_items():
    castles = [
        ("grand_fortress", "Grand Royal Stone Fortress", "Fortress", "Hard", "Built with massive stone blocks to last centuries!", "🏰"),
        ("spire_tower", "Tall Fairytale Spire Tower", "Tower", "Medium", "Pointed cone roof touches the puffy white clouds!", "🏰"),
        ("drawbridge", "Wooden Chain Drawbridge", "Bridge", "Medium", "Lifts up at night over the deep water moat!", "🌉"),
        ("portcullis", "Heavy Iron Portcullis Gate", "Gate", "Medium", "Heavy iron spiked gate lowers to protect the entry!", "🚪"),
        ("castle_moat", "Deep Castle Water Moat", "Water", "Easy", "Surrounds castle walls where friendly ducks swim!", "🌊"),
        ("throne_room", "Grand Royal Throne Hall", "Palace", "Hard", "Tapestries and chandeliers light royal ceremonies!", "👑"),
        ("battlements", "Notched Stone Battlements", "Defense", "Medium", "Knights keep watch from notched stone parapets!", "🧱"),
        ("spiral_watchtower", "Spiral Staircase Watchtower", "Tower", "Hard", "Hundreds of spiraling stone steps climb to top!", "🏰"),
        ("stained_glass", "Castle Stained Glass Arch", "Window", "Hard", "Sunlight shines through creating rainbow floors!", "🪟"),
        ("golden_gate", "Ornate Gilded Palace Gate", "Gate", "Medium", "Twisted iron leaves painted in gleaming gold leaf!", "🚪"),
        ("courtyard", "Cobblestone Castle Courtyard", "Grounds", "Easy", "Pigeons coo and horses trot on smooth stones!", "⛲"),
        ("dungeon_vault", "Ancient Stone Vaulted Room", "Underground", "Hard", "Curved stone arches support the heavy castle floor!", "🗝️"),
        ("knights_armory", "Knights Polished Armor", "Armory", "Hard", "Suits of shiny steel plates standing at attention!", "🛡️"),
        ("royal_treasury", "Heavy Iron Bound Chest", "Treasure", "Medium", "Stores golden coins and royal ruby crowns!", "🪙"),
        ("great_banquet_hall", "Great Hall Fireplace", "Palace", "Hard", "Roaring log fires keep royal dinner guests warm!", "🔥"),
        ("castle_library", "Ancient Scroll Castle Library", "Library", "Hard", "Tall wooden ladders reach books of magic and lore!", "📚"),
        ("queen_balcony", "Carved Stone Balcony", "Palace", "Medium", "Queen waves to cheerful kingdom citizens below!", "🏰"),
        ("turret_lookout", "Corner Hanging Turret", "Tower", "Medium", "Cantilevered over high castle walls for lookout!", "🏰"),
        ("royal_banner_flag", "Flying Lion Royal Flag", "Flag", "Easy", "Snaps proudly in the breeze atop the highest tower!", "🚩"),
        ("banquet_table", "Long Oak Feast Table", "Dining", "Easy", "Loaded with pies, roast apples and sweet berry tarts!", "🥧"),
        ("castle_well", "Deep Stone Water Well", "Water", "Medium", "A wooden bucket lowers down into cold pure spring!", "🪣"),
        ("royal_stables", "Arched Stone Royal Stables", "Stables", "Medium", "Stalls filled with fresh golden straw for horses!", "🐴"),
        ("knight_shield", "Knight Heraldic Shield", "Defense", "Easy", "Painted with a noble lion holding a golden star!", "🛡️"),
        ("pennant_banner", "Triangular Castle Pennant", "Flag", "Easy", "Silk triangular pennants line castle bridges!", "🎏"),
        ("secret_passage", "Hidden Revolving Bookshelf", "Secret", "Hard", "Push the green book to reveal a secret stone room!", "🚪"),
        ("crown_chamber", "Glass Guarded Crown Chamber", "Royal", "Hard", "Thick glass protects the historic coronation crown!", "👑"),
        ("archery_slit", "Narrow Cross Archery Slit", "Defense", "Easy", "Narrow cross shape lets archers shoot arrows out!", "🏹"),
        ("central_keep", "Massive Square Castle Keep", "Fortress", "Hard", "The safest and strongest building inside the fortress!", "🏰"),
        ("gatehouse_towers", "Twin Gatehouse Towers", "Gate", "Hard", "Twin round towers flanking the main entrance arch!", "🏰"),
        ("sky_palace", "Clouds Floating Sky Palace", "Fantasy", "Hard", "Built on solid clouds where thunder birds nest!", "🏰")
    ]
    items = []
    for idx, (cid, title, cat, diff, fact, icon) in enumerate(castles, 1):
        # Base walls
        walls = [(0.25, 0.78), (0.25, 0.45), (0.35, 0.45), (0.35, 0.55), (0.65, 0.55), (0.65, 0.45), (0.75, 0.45), (0.75, 0.78), (0.25, 0.78)]
        # Center tower
        center_tower = [(0.42, 0.55), (0.42, 0.32), (0.58, 0.32), (0.58, 0.55)]
        # Tower roof cone
        roof = [(0.38, 0.32), (0.5, 0.16), (0.62, 0.32), (0.38, 0.32)]
        # Arched door
        door = [(0.45, 0.78), (0.45, 0.65), (0.55, 0.65), (0.55, 0.78)]

        items.append({
            "id": f"castle_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": walls, "instruction": f"Trace outer fortress walls of {title}"},
                {"id": 2, "points": center_tower, "instruction": "Trace the central keep tower"},
                {"id": 3, "points": roof, "instruction": "Trace the pointed spire cone roof"},
                {"id": 4, "points": door, "instruction": "Trace the arched entrance gate"}
            ]
        })
    return items

def get_78_dragon_items():
    dragons = [
        ("baby_dragon", "Friendly Baby Hatchling", "Baby", "Easy", "Tiny wings just learning how to flutter in air!", "🐉"),
        ("fire_dragon", "Soaring Red Fire Dragon", "Fire", "Hard", "Can toast a marshmallow with a tiny happy puff!", "🐉"),
        ("forest_dragon", "Green Leaf Forest Dragon", "Nature", "Medium", "Scales look like shiny leaves to hide in treetops!", "🐉"),
        ("sea_serpent", "Coiling Blue Sea Dragon", "Water", "Hard", "Glides through ocean waves like a giant playful eel!", "🐉"),
        ("mountain_dragon", "Rocky Ridge Mountain Dragon", "Earth", "Hard", "Nests high in snowy peaks where cold winds howl!", "🐉"),
        ("ice_dragon", "Frost Breath Ice Dragon", "Ice", "Hard", "Breathes chilly frost that turns puddles to glass!", "❄️"),
        ("gold_dragon", "Golden Treasure Dragon", "Gold", "Medium", "Loves sleeping on beds of shiny copper pennies!", "🪙"),
        ("cloud_dragon", "Wispy White Sky Dragon", "Sky", "Medium", "Swims through puffy white cumulus clouds unseen!", "☁️"),
        ("crystal_dragon", "Amethyst Gem Dragon", "Crystal", "Hard", "Gleams with purple gemstone spikes down its spine!", "💎"),
        ("cosmic_dragon", "Starlight Celestial Dragon", "Cosmic", "Hard", "Constellation dragon made of bright twinkling stars!", "🌌"),
        ("emerald_dragon", "Emerald Green River Dragon", "Nature", "Medium", "Swims in crystal clear jungle rivers with frogs!", "🐉"),
        ("shadow_dragon", "Midnight Shadow Dragon", "Night", "Hard", "Silently glides beneath starry midnight skies!", "🐉"),
        ("thunder_dragon", "Thunder Horn Storm Dragon", "Storm", "Hard", "Roars like rolling summer thunder in the valley!", "⚡"),
        ("sleeping_dragon", "Cozy Sleeping Dragon", "Baby", "Easy", "Tucks its tail over its snout like a puppy!", "💤"),
        ("dragon_egg", "Speckled Golden Dragon Egg", "Egg", "Easy", "Warm to the touch with ruby and gold speckles!", "🥚"),
        ("spiked_tail", "Armored Spiked Dragon Tail", "Tail", "Medium", "Heavy spiked club tail sways for balance!", "🐉"),
        ("fire_puff", "Playful Smoke Ring Dragon", "Fire", "Easy", "Blows perfect smoke donut rings into the air!", "💨"),
        ("twin_dragons", "Playful Twin Dragon Pups", "Duo", "Hard", "Two little dragon brothers chasing butterfly friends!", "🐉"),
        ("sun_dragon", "Solar Corona Sun Dragon", "Sun", "Hard", "Feeds on sunlight and warms chilly spring gardens!", "☀️"),
        ("wind_dragon", "Feather Winged Wind Dragon", "Wind", "Medium", "Has soft feathered wings like a giant royal eagle!", "🪽"),
        ("ruby_dragon", "Glittering Ruby Dragon", "Gem", "Medium", "Scales sparkle like thousands of polished rubies!", "💎"),
        ("obsidian_dragon", "Black Glass Obsidian Dragon", "Earth", "Hard", "Sleek and reflective as polished volcanic glass!", "🐉"),
        ("river_dragon", "Waterfall Gliding Dragon", "Water", "Medium", "Leaps up waterfalls like an enormous magical salmon!", "🌊"),
        ("rainbow_dragon", "Seven Colored Rainbow Dragon", "Rainbow", "Easy", "Scales shift colors when it flies in sunlight!", "🌈"),
        ("plant_dragon", "Mossy Vine Plant Dragon", "Flora", "Easy", "Flower blossoms sprout along its gentle wooden horns!", "🌱"),
        ("moon_dragon", "Silver Moon Crescent Dragon", "Moon", "Medium", "Has curved silver horns that look like crescent moons!", "🌙"),
        ("guardian_dragon", "Kingdom Gate Guardian Dragon", "Royal", "Hard", "Loyal friend to the king, queen and princess!", "🛡️"),
        ("sand_dragon", "Sahara Golden Sand Dragon", "Desert", "Medium", "Burrows under warm desert sand to stay cool!", "🏜️"),
        ("volcano_dragon", "Lava Lake Volcano Dragon", "Fire", "Hard", "Bathes in hot bubbling lava pools happily!", "🌋"),
        ("ancient_elder", "Wise Ancient Grandfather Dragon", "Elder", "Hard", "Knows every story ever told in all the kingdoms!", "🐉")
    ]
    items = []
    for idx, (did, title, cat, diff, fact, icon) in enumerate(dragons, 1):
        if did == "dragon_egg":
            egg = [(0.5, 0.8), (0.3, 0.55), (0.38, 0.25), (0.5, 0.2), (0.62, 0.25), (0.7, 0.55), (0.5, 0.8)]
            spots = make_circle_points(cx=0.5, cy=0.45, r=0.08, n=8)
            strokes = [
                {"id": 1, "points": egg, "instruction": f"Trace the oval egg shape of {title}"},
                {"id": 2, "points": spots, "instruction": "Trace the glowing dragon egg crest"}
            ]
        else:
            # Friendly dragon body
            body = [(0.35, 0.35), (0.5, 0.28), (0.6, 0.38), (0.52, 0.48), (0.4, 0.48), (0.42, 0.72), (0.65, 0.72)]
            wing = [(0.45, 0.45), (0.7, 0.22), (0.62, 0.52)]
            tail = [(0.42, 0.72), (0.28, 0.76), (0.2, 0.65)]
            strokes = [
                {"id": 1, "points": body, "instruction": f"Trace the friendly body curve of {title}"},
                {"id": 2, "points": wing, "instruction": "Trace the bat-like dragon wing"},
                {"id": 3, "points": tail, "instruction": "Trace the curling spiked tail"}
            ]

        items.append({
            "id": f"dragon_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": strokes
        })
    return items

def get_79_space_character_items():
    space_chars = [
        ("astronaut", "Spacewalking Happy Astronaut", "Human", "Medium", "Floats in zero gravity tethered to the space station!", "👨‍🚀"),
        ("cute_alien", "Three-Eyed Smiling Alien", "Alien", "Easy", "Waves all three hands and giggles in alien language!", "👽"),
        ("moon_rover", "Six-Wheeled Moon Buggy", "Rover", "Medium", "Rolls over powdery moon dust with wire mesh tires!", "🚙"),
        ("martian_scout", "Little Green Martian Scout", "Alien", "Easy", "Has two cute bobbing antennae with purple tips!", "👾"),
        ("space_bot", "Space Station Fixer Bot", "Robot", "Medium", "Tightens bolts on solar panels outside the station!", "🤖"),
        ("starhopper", "Bouncing Starhopper Alien", "Creature", "Easy", "Can jump from one small asteroid to another!", "👽"),
        ("space_jelly", "Cosmic Nebula Jellyfish", "Cosmic", "Hard", "Drifts through colorful nebula gas clouds in space!", "🪼"),
        ("astro_chimp", "Cosmonaut Space Chimp", "Animal", "Medium", "Loves peeling floating zero-gravity bananas!", "🐵"),
        ("saturn_glider", "Saturn Ring Ice Skater", "Alien", "Hard", "Skates on the trillion pieces of ice in Saturn's rings!", "🪐"),
        ("space_dog", "Laika Cosmic Space Dog", "Animal", "Easy", "Barks cheerfully from inside a cozy space helmet!", "🐕"),
        ("cadet_hero", "Junior Space Cadet Cadet", "Human", "Medium", "Learning to navigate by pointing at constellations!", "🧑‍🚀"),
        ("tentacle_buddy", "Friendly Purple Octo-Alien", "Alien", "Medium", "Can play four space video games all at the same time!", "🐙"),
        ("ufo_pilot", "Flying Saucer Alien Pilot", "Ship", "Easy", "Flies a glowing saucer that beams down light beams!", "🛸"),
        ("asteroid_miner", "Asteroid Diamond Miner", "Worker", "Hard", "Digs for rare sparkling crystals on drifting space rocks!", "⛏️"),
        ("lunar_scientist", "Moon Base Green Botanist", "Scientist", "Medium", "Grows fresh red tomatoes inside moon greenhouses!", "🌱"),
        ("space_monster", "Fuzzy Blue Space Monster", "Creature", "Easy", "Super soft fur keeps it warm in cold outer space!", "👾"),
        ("comet_rider", "Glowing Tail Comet Rider", "Cosmic", "Hard", "Surfs along the glowing dusty tail of Halley's Comet!", "☄️"),
        ("solar_phoenix", "Solar Flare Space Bird", "Cosmic", "Hard", "Feathers glow like the surface of the golden sun!", "🦅"),
        ("zero_g_acrobat", "Floating Zero-G Gymnast", "Acrobat", "Medium", "Does ten continuous mid-air flips without touching walls!", "🤸"),
        ("alien_sprout", "Glow-in-the-Dark Alien Sprout", "Flora", "Easy", "A friendly plant that sings when watered with starlight!", "🌱"),
        ("tour_guide", "Intergalactic Galaxy Tour Guide", "Guide", "Medium", "Knows the quickest shortcut across the Milky Way!", "🗺️"),
        ("shuttle_captain", "Rocket Shuttle Commander", "Captain", "Hard", "Presses big red buttons to ignite booster rockets!", "🚀"),
        ("gravity_walker", "Magnetic Boot Gravity Walker", "Human", "Medium", "Walks upside down on the metal ceiling of the ship!", "🥾"),
        ("booster_droid", "Rocket Booster Guidance Droid", "Robot", "Easy", "Counts down: 3... 2... 1... Blast Off!", "🤖"),
        ("space_cyborg", "Deep Cosmos Cyborg Pioneer", "Cyborg", "Hard", "Has telescope eye lenses that see distant black holes!", "🦾"),
        ("astro_cat", "Weightless Space Kitten", "Animal", "Easy", "Pounces on floating drops of floating space milk!", "🐱"),
        ("supernova_scout", "Supernova Telescope Scout", "Scientist", "Hard", "Watches giant stars celebrate with cosmic fireworks!", "🔭"),
        ("moon_rock_collector", "Geology Moon Rock Collector", "Science", "Medium", "Labels rare white anorthosite moon rocks with care!", "🪨"),
        ("station_commander", "Orbital Station Commander", "Leader", "Hard", "Looks out the cupola window at our beautiful blue home!", "🛰️"),
        ("cosmic_baby", "Starlight Cradle Cosmic Baby", "Baby", "Easy", "Snoozes peacefully wrapped in a comet tail blanket!", "⭐")
    ]
    items = []
    for idx, (sid, title, cat, diff, fact, icon) in enumerate(space_chars, 1):
        # Round helmet or alien head
        helmet = make_circle_points(cx=0.5, cy=0.38, r=0.22, n=16)
        visor = make_arc_points(cx=0.5, cy=0.38, r=0.14, start_deg=-60, sweep_deg=120, n=8)
        body = [(0.32, 0.6), (0.35, 0.82), (0.65, 0.82), (0.68, 0.6)]
        strokes = [
            {"id": 1, "points": helmet, "instruction": f"Trace the round space helmet of {title}"},
            {"id": 2, "points": visor, "instruction": "Trace the reflective visor glass"},
            {"id": 3, "points": body, "instruction": "Trace the insulated spacesuit body"}
        ]

        items.append({
            "id": f"space_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": strokes
        })
    return items

def get_80_cute_cartoon_items():
    cartoons = [
        ("teddy_bear", "Chubby Fluffy Teddy Bear", "Animal", "Easy", "Gives the warmest and softest cuddles before bedtime!", "🧸"),
        ("boba_tea", "Smiling Boba Milk Tea", "Food", "Easy", "Chewy sweet tapioca pearls smile at the bottom!", "🧋"),
        ("kitty_cat", "Winking Whiskered Kitty", "Animal", "Easy", "Purrs like a tiny motor when you scratch its chin!", "🐱"),
        ("bunny_rabbit", "Floppy Eared Baby Bunny", "Animal", "Easy", "Twitches its cute pink nose and hops over grass!", "🐰"),
        ("puppy_dog", "Playful Spotted Puppy Dog", "Animal", "Easy", "Wags its tail so fast its whole little body wiggles!", "🐶"),
        ("winking_star", "Winking Golden Night Star", "Celestial", "Easy", "Winks goodnight to children as they drift to sleep!", "⭐"),
        ("sunny_cloud", "Smiling Happy Cloud", "Weather", "Easy", "Loves blowing gentle breezes on hot summer afternoons!", "☁️"),
        ("cupcake", "Swirl Frosting Cupcake", "Food", "Easy", "Topped with rainbow sprinkles and a sweet red cherry!", "🧁"),
        ("panda_bear", "Hugging Bamboo Panda", "Animal", "Medium", "Eats delicious bamboo shoots while sitting on its tummy!", "🐼"),
        ("penguin_pal", "Waddling Emperor Penguin", "Animal", "Easy", "Slides down snowy ice hills right on its belly!", "🐧"),
        ("snail_leaf", "Friendly Snail on a Leaf", "Animal", "Easy", "Carries its spiral shell home everywhere it explores!", "🐌"),
        ("sleeping_fox", "Curled Up Cozy Red Fox", "Animal", "Medium", "Wraps its big fluffy white-tipped tail around its nose!", "🦊"),
        ("avocado_smile", "Smiling Little Avocado", "Food", "Easy", "Its round brown seed is a cute happy tummy!", "🥑"),
        ("toast_slice", "Warm Golden Toast Slice", "Food", "Easy", "Has a melting square of creamy yellow butter!", "🍞"),
        ("singing_birdie", "Singing Blue Little Birdie", "Animal", "Easy", "Chirps cheerful morning songs from tree branches!", "🐦"),
        ("sloth_branch", "Cozy Sloth on a Branch", "Animal", "Medium", "Takes life very slow and gives the slowest smiles!", "🦥"),
        ("baby_elephant", "Little Trunk Baby Elephant", "Animal", "Medium", "Sprays water from its trunk like a garden hose!", "🐘"),
        ("hamster_cheeks", "Chubby Cheeked Hamster", "Animal", "Easy", "Packs sunflower seeds into cheeks for later snacks!", "🐹"),
        ("baby_dino", "Friendly Little Green Dino", "Animal", "Medium", "Leaves cute three-toed dinosaur footprints in mud!", "🦖"),
        ("sprinkle_donut", "Pink Frosted Sprinkle Donut", "Food", "Easy", "Round donut with sweet pink glaze and sprinkles!", "🍩"),
        ("koala_hug", "Climbing Baby Koala", "Animal", "Medium", "Hugs tree branches tight with velvety paws!", "🐨"),
        ("baby_seal", "Fluffy White Baby Seal", "Animal", "Easy", "Claps its flippers happily on snowy arctic ice!", "🦭"),
        ("watermelon_slice", "Smiling Watermelon Wedge", "Food", "Easy", "Sweet red smile with little black seed freckles!", "🍉"),
        ("sleepy_owl", "Big Eyed Night Owl", "Animal", "Medium", "Says whoo-whoo while watching the midnight stars!", "🦉"),
        ("yellow_duckling", "Splashing Yellow Duckling", "Animal", "Easy", "Swims in pond puddles quacking cheerfully!", "🐥"),
        ("sea_turtle", "Gentle Little Sea Turtle", "Animal", "Medium", "Paddles through crystal ocean waves with flippers!", "🐢"),
        ("balloon_buddy", "Floating Heart Balloon", "Fun", "Easy", "Bobs gently in the breeze on a curvy string!", "🎈"),
        ("cuddle_piglet", "Mud Puddle Cuddle Piglet", "Animal", "Easy", "Oinks happily while splashing in cool clean mud!", "🐷"),
        ("ice_cream_cone", "Double Scoop Ice Cream Cone", "Food", "Easy", "Two big scoops of strawberry and vanilla ice cream!", "🍦"),
        ("rainbow_star", "Shining Magic Rainbow Star", "Magic", "Easy", "Glows with a warm rainbow heart full of joy!", "⭐")
    ]
    items = []
    for idx, (cid, title, cat, diff, fact, icon) in enumerate(cartoons, 1):
        body = make_circle_points(cx=0.5, cy=0.5, r=0.28, n=16)
        ear1 = make_circle_points(cx=0.32, cy=0.26, r=0.08, n=10)
        ear2 = make_circle_points(cx=0.68, cy=0.26, r=0.08, n=10)
        smile = make_arc_points(cx=0.5, cy=0.52, r=0.1, start_deg=20, sweep_deg=140, n=8)

        items.append({
            "id": f"cartoon_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": body, "instruction": f"Trace the round chubby face of {title}"},
                {"id": 2, "points": ear1, "instruction": "Trace the left cute ear"},
                {"id": 3, "points": ear2, "instruction": "Trace the right cute ear"},
                {"id": 4, "points": smile, "instruction": "Trace the happy sweet smile"}
            ]
        })
    return items

