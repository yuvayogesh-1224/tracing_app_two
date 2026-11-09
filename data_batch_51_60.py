# data_batch_51_60.py
import math
from data_helper import (
    make_line, make_circle_points, make_arc_points,
    make_rect_points, make_oval_points, make_star_points,
    make_wave_points, make_triangle_points
)

def get_batch_51_60(app_idx):
    if app_idx == 51:
        return get_51_car_items()
    elif app_idx == 52:
        return get_52_bus_items()
    elif app_idx == 53:
        return get_53_truck_items()
    elif app_idx == 54:
        return get_54_train_items()
    elif app_idx == 55:
        return get_55_airplane_items()
    elif app_idx == 56:
        return get_56_helicopter_items()
    elif app_idx == 57:
        return get_57_boat_items()
    elif app_idx == 58:
        return get_58_tractor_items()
    elif app_idx == 59:
        return get_59_construction_items()
    elif app_idx == 60:
        return get_60_racing_items()
    else:
        raise ValueError(f"Invalid app index for batch 51-60: {app_idx}")

def get_51_car_items():
    cars = [
        ("sedan", "Classic Sedan", "Sedan", "Easy", "Sedans are smooth family cars!", "🚗", 0.45, 0.3),
        ("suv", "Family SUV", "SUV", "Medium", "SUVs have tall wheels for camping!", "🚙", 0.5, 0.35),
        ("sports_car", "Speedy Sports Car", "Sports", "Hard", "Sports cars are built for swift speed!", "🏎️", 0.4, 0.25),
        ("hatchback", "City Hatchback", "Hatchback", "Easy", "Hatchbacks are cozy and easy to park!", "🚗", 0.45, 0.32),
        ("jeep", "Adventure Jeep", "Offroad", "Medium", "Jeeps love climbing rocky muddy paths!", "🚙", 0.52, 0.38),
        ("vintage_car", "Vintage Roadster", "Classic", "Hard", "Vintage cars have shiny silver grilles!", "🚘", 0.46, 0.28),
        ("racing_car", "Grand Prix Racer", "Racing", "Hard", "Racers zoom around curved race tracks!", "🏎️", 0.38, 0.22),
        ("convertible", "Sunny Convertible", "Sports", "Medium", "Open the roof and feel the breeze!", "🚗", 0.42, 0.26),
        ("limousine", "Long Limousine", "Luxury", "Hard", "Limousines have comfy leather sofas!", "🚘", 0.38, 0.26),
        ("taxi_cab", "Yellow City Taxi", "City", "Easy", "Yellow taxis honk beep beep in the city!", "🚕", 0.46, 0.32),
        ("police_car", "Police Patrol Car", "Service", "Medium", "Police cars flash blue and red lights!", "🚓", 0.48, 0.34),
        ("ambulance_car", "Emergency Car", "Service", "Medium", "Emergency cars rush fast to help people!", "🚑", 0.5, 0.35),
        ("compact_car", "Tiny Smart Car", "Hatchback", "Easy", "Tiny cars can fit in tight parking spots!", "🚗", 0.5, 0.35),
        ("muscle_car", "Roaring Muscle Car", "Classic", "Hard", "Muscle cars have powerful roaring engines!", "🏎️", 0.42, 0.28),
        ("electric_car", "Quiet Electric Car", "Modern", "Easy", "Electric cars charge up with green power!", "🚙", 0.45, 0.3),
        ("pickup_truck_car", "Utility Pickup Car", "Truck", "Medium", "Pickups carry tools in the open bed!", "🛻", 0.48, 0.34),
        ("coupe_car", "Sporty Coupe", "Sports", "Medium", "Coupe cars have two sleek aerodynamic doors!", "🚗", 0.44, 0.28),
        ("wagon_car", "Family Station Wagon", "Sedan", "Medium", "Wagons have lots of trunk space for bags!", "🚗", 0.46, 0.32),
        ("micro_car", "Bubble Micro Car", "City", "Easy", "Micro cars are round like tiny soap bubbles!", "🚘", 0.5, 0.35),
        ("hot_rod", "Flamin' Hot Rod", "Custom", "Hard", "Hot rods have giant chrome engines on top!", "🏎️", 0.42, 0.26),
        ("rally_car", "Muddy Rally Racer", "Racing", "Hard", "Rally cars drift across dirt and gravel!", "🏎️", 0.44, 0.3),
        ("concept_car", "Future Cyber Car", "Future", "Hard", "Futuristic cars drive with smart computers!", "🚘", 0.4, 0.25),
        ("solar_car", "Sun Powered Cruiser", "Modern", "Medium", "Solar panels soak up sunshine to drive!", "🚗", 0.42, 0.26),
        ("dragster_car", "Speedway Dragster", "Racing", "Hard", "Dragsters pop parachutes to slow down!", "🏎️", 0.35, 0.2),
        ("desert_buggy", "Dune Buggy Car", "Offroad", "Medium", "Dune buggies jump over golden sand dunes!", "🚙", 0.48, 0.32),
        ("classic_woody", "Vintage Wood Wagon", "Classic", "Medium", "Woody cars have polished wooden panels!", "🚗", 0.46, 0.32),
        ("town_car", "Executive Town Car", "Luxury", "Hard", "Chauffeurs drive town cars with great care!", "🚘", 0.44, 0.28),
        ("retro_mini", "Retro Mini Beetle", "Classic", "Easy", "Beetle cars have happy smiling headlights!", "🚗", 0.48, 0.34),
        ("neon_speedster", "Neon Night Speedster", "Sports", "Hard", "Glows under starry city streetlamps!", "🏎️", 0.42, 0.26),
        ("eco_hybrid", "Eco Hybrid Runner", "Modern", "Easy", "Hybrids use both gas and electric batteries!", "🚙", 0.46, 0.3)
    ]
    items = []
    for idx, (cid, title, cat, diff, fact, icon, roof_w, roof_h) in enumerate(cars, 1):
        # Generate recognizable car outline:
        # Stroke 1: Roof & upper cabin
        r_left = round(0.5 - roof_w / 2, 2)
        r_right = round(0.5 + roof_w / 2, 2)
        top_y = round(0.48 - roof_h, 2)
        stroke1 = [
            (round(r_left - 0.1, 2), 0.52),
            (r_left, top_y),
            (r_right, top_y),
            (round(r_right + 0.1, 2), 0.52)
        ]
        # Stroke 2: Body chassis
        stroke2 = [
            (0.12, 0.65),
            (0.12, 0.52),
            (round(r_left - 0.1, 2), 0.52),
            (round(r_right + 0.1, 2), 0.52),
            (0.88, 0.52),
            (0.88, 0.65),
            (0.78, 0.65)
        ]
        # Stroke 3: Front Wheel
        w1 = make_circle_points(cx=0.3, cy=0.68, r=0.08, n=12)
        # Stroke 4: Rear Wheel
        w2 = make_circle_points(cx=0.7, cy=0.68, r=0.08, n=12)

        items.append({
            "id": f"car_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": stroke1, "instruction": f"Trace the roof of the {title}"},
                {"id": 2, "points": stroke2, "instruction": "Trace the car body and bumpers"},
                {"id": 3, "points": w1, "instruction": "Draw the front wheel in a circle"},
                {"id": 4, "points": w2, "instruction": "Draw the rear wheel to get rolling"}
            ]
        })
    return items

def get_52_bus_items():
    buses = [
        ("school_bus", "Yellow School Bus", "School", "Easy", "School buses take kids safely to school!", "🚌", 0.68, 0.35),
        ("city_bus", "City Transit Bus", "Transit", "Medium", "City buses stop at colorful bus shelters!", "🚍", 0.72, 0.34),
        ("double_decker", "Double Decker Bus", "City", "Hard", "You can sit up top to see the skyscrapers!", "🚍", 0.65, 0.45),
        ("mini_bus", "Cheerful Mini Bus", "Mini", "Easy", "Mini buses take small groups on fun trips!", "🚐", 0.55, 0.32),
        ("articulated_bus", "Bendy Accordion Bus", "Transit", "Hard", "Articulated buses bend smoothly in the middle!", "🚎", 0.8, 0.32),
        ("airport_shuttle", "Airport Shuttle Bus", "Airport", "Medium", "Takes travelers right to their airplane gates!", "🚌", 0.64, 0.32),
        ("tour_bus", "Scenic Tour Coach", "Tour", "Medium", "Tour buses have big tinted windows for viewing!", "🚌", 0.7, 0.35),
        ("electric_bus", "Clean Electric Bus", "Green", "Easy", "Quiet and clean with zero exhaust fumes!", "🚍", 0.68, 0.34),
        ("trolley_bus", "Overhead Trolley Bus", "Transit", "Hard", "Trolley buses connect to overhead electric wires!", "🚎", 0.68, 0.36),
        ("retro_bus", "Vintage Country Bus", "Classic", "Medium", "Old style buses have round chrome headlights!", "🚌", 0.66, 0.36),
        ("safari_bus", "Wild Safari Explorer", "Adventure", "Hard", "Has open bars to look at friendly giraffes!", "🚐", 0.64, 0.38),
        ("camper_bus", "Cozy Camper Bus", "Travel", "Medium", "Pack your sleeping bag and camp under stars!", "🚐", 0.62, 0.36),
        ("highway_coach", "Express Highway Coach", "Coach", "Hard", "Luxury seats with reclining backrests!", "🚌", 0.74, 0.34),
        ("open_top_bus", "Open Top Sightseer", "Tour", "Medium", "Feel the sunshine on the windy upper deck!", "🚍", 0.68, 0.42),
        ("party_bus", "Celebration Party Bus", "Fun", "Hard", "Plays cheerful tunes and has disco lights!", "🚌", 0.7, 0.36),
        ("village_shuttle", "Village Commuter", "Local", "Easy", "Connects farm villages to the lively town market!", "🚐", 0.56, 0.32),
        ("intercity_bus", "Intercity Express", "Coach", "Medium", "Connects big cities across long highways!", "🚌", 0.72, 0.34),
        ("mountain_bus", "Mountain Pass Climber", "Travel", "Hard", "Has powerful brakes to climb steep alpine roads!", "🚌", 0.66, 0.36),
        ("night_owl_bus", "Night Owl Transit", "Night", "Medium", "Keeps riding through the quiet city night!", "🚍", 0.7, 0.35),
        ("terminal_bus", "Jetport Terminal Bus", "Airport", "Easy", "Wide doors for quick hop-on and hop-off!", "🚌", 0.68, 0.32),
        ("solar_transit", "Solar Powered Coach", "Green", "Medium", "Solar roofs produce clean natural battery charge!", "🚍", 0.7, 0.35),
        ("hotel_shuttle", "Grand Hotel Shuttle", "Hotel", "Easy", "Welcomes visitors with friendly warm drivers!", "🚐", 0.6, 0.34),
        ("biodiesel_bus", "Eco Biodiesel Bus", "Green", "Easy", "Runs on recycled plant vegetable oils!", "🚌", 0.68, 0.35),
        ("cable_trolley", "San Fran Cable Bus", "Classic", "Hard", "Climbs steep historic hills with ringing bells!", "🚎", 0.65, 0.38),
        ("metro_feeder", "Metro Line Feeder", "Transit", "Medium", "Brings passengers straight to train stations!", "🚍", 0.66, 0.34),
        ("suburban_bus", "Suburban Line Bus", "Transit", "Medium", "Travels gently along green suburban avenues!", "🚌", 0.68, 0.35),
        ("river_bridge_bus", "Skyway Bridge Bus", "Transit", "Hard", "Crosses wide blue rivers on suspension bridges!", "🚍", 0.7, 0.35),
        ("ski_resort_bus", "Snow Peak Ski Bus", "Winter", "Hard", "Has heated snow chains for icy winter roads!", "🚌", 0.66, 0.38),
        ("low_floor_bus", "Easy Access Bus", "Transit", "Easy", "Ramps fold out for strollers and wheelchairs!", "🚍", 0.7, 0.33),
        ("futuristic_bus", "Smart Autonomous Bus", "Future", "Hard", "Navigates by sensors without any steering wheel!", "🚍", 0.68, 0.34)
    ]
    items = []
    for idx, (bid, title, cat, diff, fact, icon, bw, bh) in enumerate(buses, 1):
        x1 = round(0.5 - bw / 2, 2)
        x2 = round(0.5 + bw / 2, 2)
        y1 = round(0.58 - bh, 2)
        y2 = 0.58
        box_pts = [(x1, y2), (x1, y1), (x2, y1), (x2, y2), (x1, y2)]
        win_y = round(y1 + 0.08, 2)
        windows = [(round(x1 + 0.05, 2), win_y), (round(x2 - 0.05, 2), win_y)]
        w1 = make_circle_points(cx=round(x1 + bw * 0.25, 2), cy=0.66, r=0.07, n=12)
        w2 = make_circle_points(cx=round(x2 - bw * 0.25, 2), cy=0.66, r=0.07, n=12)

        items.append({
            "id": f"bus_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": box_pts, "instruction": f"Trace the rectangular body of the {title}"},
                {"id": 2, "points": windows, "instruction": "Trace the wide passenger window line"},
                {"id": 3, "points": w1, "instruction": "Trace the front heavy bus wheel"},
                {"id": 4, "points": w2, "instruction": "Trace the rear wheel to complete the ride"}
            ]
        })
    return items

def get_53_truck_items():
    trucks = [
        ("delivery_truck", "Parcel Delivery Van", "Delivery", "Easy", "Delivers packages right to your front door!", "🚚", "box"),
        ("dump_truck", "Giant Dump Truck", "Heavy", "Medium", "Tilts its giant yellow bed to pour rocks!", "🚛", "tipper"),
        ("cargo_truck", "Highway Cargo Truck", "Freight", "Medium", "Transports crates of apples across states!", "🚚", "box"),
        ("fire_truck", "Heroic Fire Truck", "Emergency", "Hard", "Carries long ladders and water hoses!", "🚒", "ladder"),
        ("tow_truck", "Sturdy Tow Truck", "Service", "Medium", "Hooks up broken cars to take them to garages!", "🛻", "boom"),
        ("garbage_truck", "Green Garbage Truck", "Sanitation", "Easy", "Lifts heavy trash bins to keep streets clean!", "🚛", "box"),
        ("logging_truck", "Heavy Logging Truck", "Timber", "Hard", "Transports tall timber logs from deep forests!", "🚛", "flat"),
        ("tanker_truck", "Liquid Tanker Truck", "Hauler", "Medium", "Cylindrical steel tank carries clean milk or juice!", "🚛", "tank"),
        ("monster_truck", "Bouncing Monster Truck", "Show", "Hard", "Giant bouncy tires taller than grown-up people!", "🛻", "monster"),
        ("flatbed_truck", "Open Flatbed Truck", "Freight", "Easy", "Carries large construction beams safely!", "🚛", "flat"),
        ("cement_truck", "Spinning Cement Truck", "Building", "Hard", "The drum keeps turning so wet cement doesn't dry!", "🚛", "drum"),
        ("ice_cream_truck", "Ice Cream Sweet Truck", "Food", "Easy", "Plays cheery melodies and gives out popsicles!", "🚚", "box"),
        ("box_truck", "Moving Box Truck", "Moving", "Medium", "Helps families pack sofas when moving homes!", "🚚", "box"),
        ("utility_truck", "Electric Utility Truck", "Service", "Medium", "Lifts electricians up to fix overhead wires!", "🛻", "boom"),
        ("refrigerated_truck", "Freezer Cargo Truck", "Food", "Medium", "Keeps frozen ice creams icy cold on sunny days!", "🚚", "box"),
        ("military_truck", "Desert Camo Truck", "Rugged", "Hard", "Tough 6x6 wheels roll through deep muddy swamps!", "🚛", "flat"),
        ("crane_truck", "Mobile Crane Truck", "Crane", "Hard", "Extends a long steel boom to lift steel pillars!", "🏗️", "boom"),
        ("mining_truck", "Colossal Mining Hauler", "Mining", "Hard", "The biggest trucks in the world carry 300 tons!", "🚛", "monster"),
        ("snowplow_truck", "Blizzard Snowplow", "Winter", "Medium", "Pushes thick snow off frozen highways!", "🚛", "tipper"),
        ("food_truck", "Tasty Taco Food Truck", "Food", "Easy", "Cooks delicious meals at sunny city parks!", "🚚", "box"),
        ("bucket_truck", "Tree Trimmer Bucket", "Service", "Medium", "Lifts garden workers to trim tall tree branches!", "🛻", "boom"),
        ("heavy_hauler", "Multi-Axle Super Hauler", "Heavy", "Hard", "Has 16 wheels to distribute massive cargo weights!", "🚛", "flat"),
        ("armored_truck", "Bank Armored Guard", "Security", "Hard", "Bulletproof steel walls protect gold coins!", "🚚", "box"),
        ("farm_grain_truck", "Farm Grain Truck", "Agriculture", "Easy", "Transports harvested golden wheat from combines!", "🚛", "tipper"),
        ("livestock_truck", "Cattle Farm Transporter", "Agriculture", "Medium", "Air vents keep farm animals cool and happy!", "🚛", "box"),
        ("breakdown_truck", "Rescue Flatbed Hauler", "Service", "Medium", "Winches disabled motorbikes onto the ramp!", "🛻", "flat"),
        ("container_truck", "Ocean Port Container", "Freight", "Hard", "Carries shipping containers loaded from ships!", "🚛", "box"),
        ("semi_trailer", "Big Rig 18-Wheeler", "Freight", "Hard", "Honks loud air horns when kids pump their arm!", "🚛", "box"),
        ("airport_fueler", "Jet A-1 Airport Tanker", "Airport", "Medium", "Pumps aviation fuel into jumbo passenger wings!", "🚛", "tank"),
        ("electric_semi", "Modern Cyber Hauler", "Future", "Medium", "Ultra-silent motors haul freight across country!", "🚛", "box")
    ]
    items = []
    for idx, (tid, title, cat, diff, fact, icon, style) in enumerate(trucks, 1):
        # Cab stroke
        cab = [(0.15, 0.65), (0.15, 0.45), (0.35, 0.45), (0.42, 0.52), (0.42, 0.65)]
        # Trailer stroke
        if style == "tank":
            trailer = make_oval_points(cx=0.65, cy=0.5, rx=0.22, ry=0.12, n=16)
        elif style == "tipper":
            trailer = [(0.44, 0.65), (0.44, 0.48), (0.86, 0.42), (0.86, 0.65), (0.44, 0.65)]
        elif style == "flat":
            trailer = [(0.42, 0.62), (0.88, 0.62), (0.88, 0.58), (0.42, 0.58)]
        else: # box / boom / default
            trailer = [(0.44, 0.65), (0.44, 0.42), (0.86, 0.42), (0.86, 0.65), (0.44, 0.65)]

        w1 = make_circle_points(cx=0.26, cy=0.68, r=0.08, n=12)
        w2 = make_circle_points(cx=0.72, cy=0.68, r=0.08, n=12)

        items.append({
            "id": f"truck_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": cab, "instruction": f"Trace the front cab of the {title}"},
                {"id": 2, "points": trailer, "instruction": f"Trace the rear cargo {style}"},
                {"id": 3, "points": w1, "instruction": "Draw the sturdy front cab tire"},
                {"id": 4, "points": w2, "instruction": "Draw the heavy-duty rear load wheel"}
            ]
        })
    return items

def get_54_train_items():
    trains = [
        ("bullet_train", "Shinkansen Bullet Train", "High Speed", "Medium", "Bullet trains slice air like aerodynamic arrows!", "🚅"),
        ("steam_locomotive", "Classic Puffer Steam Train", "Vintage", "Hard", "Puffs white steam clouds and goes choo-choo!", "🚂"),
        ("metro_train", "Underground Subway Metro", "Transit", "Easy", "Speedily zooms through underground city tunnels!", "🚇"),
        ("passenger_express", "Trans-Express Train", "Express", "Medium", "Passengers sip cocoa while viewing snowy peaks!", "🚆"),
        ("cargo_freight", "Heavy Coal Freight Train", "Cargo", "Hard", "Mile-long freight trains carry tons of coal!", "🚋"),
        ("monorail", "Sky Straddle Monorail", "Modern", "Easy", "Glides smoothly along a single elevated beam!", "🚝"),
        ("tram_car", "Sunny City Tram", "Tram", "Easy", "Trams share city streets with yellow bicycles!", "🚊"),
        ("caboose_car", "Little Red Caboose", "Vintage", "Easy", "The friendly red caboose rides at the very tail!", "🚋"),
        ("mountain_funicular", "Mountain Cable Funicular", "Alpine", "Hard", "Climbs steep snowy cliffs using strong steel cables!", "🚠"),
        ("high_speed_maglev", "Floating Maglev Train", "Future", "Hard", "Magnets lift the train so it floats above tracks!", "🚅"),
        ("diesel_switcher", "Yellow Diesel Locomotive", "Locomotive", "Medium", "Switches train cars in busy sorting yards!", "🚂"),
        ("double_decker_train", "Double Decker Passenger", "Transit", "Hard", "Two levels of windows for twice as many riders!", "🚆"),
        ("heritage_streamliner", "Art Deco Streamliner", "Vintage", "Hard", "Sleek silver trains from the golden age of rail!", "🚆"),
        ("alpine_cog_train", "Alpine Cog Railway", "Alpine", "Hard", "Toothed cog gears grip steep mountain rails!", "🚂"),
        ("circus_train", "Colorful Circus Train", "Fantasy", "Medium", "Carries striped big-top tents and acrobats!", "🚂"),
        ("electric_commuter", "Quiet Electric Commuter", "Transit", "Easy", "Pantographs collect clean electric sparks!", "🚆"),
        ("dining_car", "Luxury Dining Carriage", "Carriage", "Medium", "Chefs prepare gourmet dinners on moving tracks!", "🚋"),
        ("sleeper_car", "Starlight Sleeper Train", "Night", "Medium", "Kids fall asleep in cozy bunk beds on rails!", "🚆"),
        ("oil_tank_car", "Industrial Oil Tanker", "Cargo", "Medium", "Sturdy cylindrical cars transport clean fuel!", "🚋"),
        ("auto_rack_car", "Auto Carrier Train", "Cargo", "Hard", "Transports brand new shiny cars in multi tiers!", "🚋"),
        ("mining_minecart", "Mine Quarry Hopper", "Industrial", "Easy", "Dumps sparkling minerals straight from the mine!", "🚋"),
        ("timber_log_train", "Forest Timber Transporter", "Cargo", "Medium", "Carries giant pine logs to paper sawmills!", "🚋"),
        ("intercity_tilt", "Tilting Pendolino Train", "High Speed", "Hard", "Tilts into sharp curves without slowing down!", "🚅"),
        ("intermodal_stack", "Double Stack Flatcar", "Cargo", "Hard", "Stacks two ocean containers on top of each other!", "🚋"),
        ("postal_railcar", "Fast Railway Mail Car", "Express", "Medium", "Sorts letters while speeding across the country!", "🚆"),
        ("snow_blower_train", "Rotary Snowplow Train", "Winter", "Hard", "Huge spinning blades blast snowy drifts away!", "🚂"),
        ("open_air_scenic", "Canyon Open Air Tour", "Tour", "Easy", "Feel the refreshing canyon breeze in open wagons!", "🚋"),
        ("vintage_trolley", "Wooden Cable Trolley", "Classic", "Medium", "Rings its brass gong when stopping at the corner!", "🚊"),
        ("desert_solar_train", "Solar Track Glider", "Future", "Medium", "Solar roofs power silent cross-desert journeys!", "🚆"),
        ("hyperloop_pod", "Vacuum Tube Hyper Pod", "Future", "Hard", "Shoots through airless tubes at airplane speed!", "🚅")
    ]
    items = []
    for idx, (tid, title, cat, diff, fact, icon) in enumerate(trains, 1):
        body = [(0.12, 0.62), (0.12, 0.42), (0.84, 0.42), (0.88, 0.52), (0.88, 0.62), (0.12, 0.62)]
        rails = [(0.06, 0.74), (0.94, 0.74)]
        w1 = make_circle_points(cx=0.25, cy=0.66, r=0.06, n=12)
        w2 = make_circle_points(cx=0.5, cy=0.66, r=0.06, n=12)
        w3 = make_circle_points(cx=0.75, cy=0.66, r=0.06, n=12)

        items.append({
            "id": f"train_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": body, "instruction": f"Trace the locomotive outline of {title}"},
                {"id": 2, "points": rails, "instruction": "Trace the straight steel train track"},
                {"id": 3, "points": w1, "instruction": "Trace the front steel train wheel"},
                {"id": 4, "points": w2, "instruction": "Trace the middle driving wheel"},
                {"id": 5, "points": w3, "instruction": "Trace the rear trailing wheel"}
            ]
        })
    return items

def get_55_airplane_items():
    planes = [
        ("passenger_jet", "Commercial Jetliner", "Commercial", "Medium", "Carries hundreds of vacationers across oceans!", "✈️"),
        ("cargo_airplane", "Jumbo Cargo Freighter", "Cargo", "Hard", "Nose door opens upward to swallow giant crates!", "🛫"),
        ("biplane", "Vintage Double Wing Biplane", "Vintage", "Medium", "Has two pairs of wooden wings stacked together!", "🛩️"),
        ("seaplane", "Lake Floating Seaplane", "Seaplane", "Medium", "Twin pontoons allow landing on calm blue lakes!", "🛩️"),
        ("supersonic_jet", "Supersonic Concorde Jet", "Supersonic", "Hard", "Flies faster than the speed of loud sound!", "✈️"),
        ("glider_aircraft", "Silent Wind Glider", "Glider", "Easy", "Soars on rising warm thermals without an engine!", "🛩️"),
        ("bush_plane", "Alaskan Tundra Bush Plane", "Utility", "Medium", "Giant soft tires land on gravel riverbeds!", "🛩️"),
        ("stunt_aerobatic", "Aerobatic Smoke Plane", "Sport", "Hard", "Does loop-the-loops and writes smoke smiles!", "🛩️"),
        ("stealth_jet", "Stealth Flying Wing", "Military", "Hard", "Radar waves bounce off its angular sharp wings!", "✈️"),
        ("private_jet", "Luxury Executive Jet", "Private", "Medium", "Leather seats and big windows for business VIPs!", "🛩️"),
        ("propeller_trainer", "Single Prop Trainer", "Trainer", "Easy", "Every pilot flies this small plane on lesson 1!", "🛩️"),
        ("solar_plane", "Sun Solar Impulser", "Green", "Hard", "17,000 solar cells fly day and night without fuel!", "✈️"),
        ("triplane_red", "Classic Triple Wing Baron", "Vintage", "Hard", "Three bright red wings give super quick agility!", "🛩️"),
        ("water_bomber", "Forest Fire Water Bomber", "Rescue", "Hard", "Scoops 6,000 liters of lake water in 12 seconds!", "🛩️"),
        ("skydiving_plane", "Skydiving Drop Plane", "Sport", "Medium", "Parachutists jump out with colorful parachutes!", "🛩️"),
        ("air_ambulance", "Flying Medical Lifesaver", "Rescue", "Medium", "Transports doctors and medicine to remote islands!", "🛩️"),
        ("mail_plane", "Pioneer Airmail Courier", "Vintage", "Easy", "Carried love letters across snowy mountains!", "🛩️"),
        ("twin_turboprop", "Twin Turboprop Regional", "Regional", "Medium", "Spins two sturdy propellers on short runways!", "🛩️"),
        ("racing_plane", "Air Race Pylon Racer", "Racing", "Hard", "Banks 90 degrees around inflatable race pylons!", "🛩️"),
        ("spaceplane", "Suborbital Space Plane", "Space", "Hard", "Reaches the edge of space where the sky turns black!", "🚀"),
        ("drone_transport", "Autonomous Cargo Drone", "Future", "Medium", "Delivers packages autonomously from high above!", "🛩️"),
        ("hypersonic_cruiser", "Mach 5 Hypersonic Jet", "Future", "Hard", "Travels from New York to Tokyo in two hours!", "✈️"),
        ("paper_style_plane", "Dart Folded Paper Plane", "Fun", "Easy", "The classic paper craft that everyone loves to throw!", "✈️"),
        ("observation_plane", "Glass Nose Survey Plane", "Survey", "Easy", "Glass floor lets scientists map lush rain forests!", "🛩️"),
        ("crop_duster", "Farmland Crop Duster", "Agri", "Medium", "Skims low across wheat fields sprinkling droplets!", "🛩️"),
        ("heavy_transporter", "Galaxy Heavy Transporter", "Cargo", "Hard", "Can carry fire trucks inside its cavernous belly!", "🛫"),
        ("retro_monoplane", "Golden Age Monoplane", "Classic", "Medium", "Shiny polished aluminum wings glisten in sun!", "🛩️"),
        ("antarctic_skis", "Polar Ski Exploration", "Polar", "Hard", "Skis attached to wheels land smoothly on pure ice!", "🛩️"),
        ("flying_car_plane", "Road & Sky Flying Car", "Future", "Medium", "Folds wings to drive on streets after landing!", "🛩️"),
        ("balloon_assist", "High Altitude Sky Scout", "Modern", "Easy", "Rides edge of space with whisper quiet motors!", "✈️")
    ]
    items = []
    for idx, (pid, title, cat, diff, fact, icon) in enumerate(planes, 1):
        # Fuselage
        fuse = [(0.1, 0.5), (0.35, 0.46), (0.7, 0.47), (0.88, 0.44), (0.9, 0.5), (0.7, 0.53), (0.35, 0.54), (0.1, 0.5)]
        # Main Wings
        wings = [(0.42, 0.18), (0.5, 0.48), (0.58, 0.48), (0.5, 0.82)]
        # Tail fin
        tail = [(0.82, 0.46), (0.86, 0.3), (0.9, 0.3), (0.88, 0.46)]

        items.append({
            "id": f"plane_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": fuse, "instruction": f"Trace the aerodynamic fuselage of {title}"},
                {"id": 2, "points": wings, "instruction": "Trace the wide wings from tip to tip"},
                {"id": 3, "points": tail, "instruction": "Trace the vertical rudder tail fin"}
            ]
        })
    return items

def get_56_helicopter_items():
    choppers = [
        ("rescue_chopper", "Mountain Rescue Chopper", "Rescue", "Medium", "Winches hikers to safety with long cables!", "🚁"),
        ("police_chopper", "Police Eye-in-the-Sky", "Service", "Easy", "Shines searchlights through midnight streets!", "🚁"),
        ("air_ambulance_heli", "Life-Flight Heli", "Rescue", "Medium", "Flies right to hospital rooftop helipads!", "🚁"),
        ("safari_chopper", "Savannah Safari Chopper", "Tour", "Easy", "Flies gently above zebra herds running wild!", "🚁"),
        ("skycrane_heli", "Aircrane Heavy Lifter", "Heavy", "Hard", "Lifts heavy air conditioning units onto roofs!", "🚁"),
        ("coast_guard_heli", "Coast Guard Sea Rescue", "Rescue", "Hard", "Hovers steadily over stormy ocean waves!", "🚁"),
        ("fire_chopper", "Helitack Fire Dropper", "Service", "Hard", "Carries a huge Bambi bucket of water below!", "🚁"),
        ("tandem_rotor", "Twin Rotor Transport", "Heavy", "Hard", "Two giant spinning rotors lift massive weights!", "🚁"),
        ("news_chopper", "Sky News Helicopter", "Media", "Easy", "Broadcasts traffic news with HD cameras!", "🚁"),
        ("executive_heli", "VIP Corporate Helicopter", "Executive", "Medium", "Whisper quiet blades for calm business rides!", "🚁"),
        ("training_chopper", "Dual Control Trainer", "Trainer", "Easy", "Helps new pilots learn how to hover in place!", "🚁"),
        ("gyrocopter", "Little Open Gyrocopter", "Sport", "Easy", "Unpowered overhead rotor spins with the wind!", "🚁"),
        ("attack_chopper", "Armored Defender Chopper", "Military", "Hard", "Has high-tech helmet sensors that aim cameras!", "🚁"),
        ("offshore_rig_heli", "Oil Rig Commuter Heli", "Utility", "Hard", "Lands on floating steel helidecks in the sea!", "🚁"),
        ("arctic_skis_heli", "Polar Explorer Chopper", "Polar", "Medium", "Bright orange paint makes it easy to spot on snow!", "🚁"),
        ("mini_scout_heli", "Compact Personal Chopper", "Sport", "Easy", "Small enough to land in a garden driveway!", "🚁"),
        ("coaxial_rotor", "Coaxial Dual Rotor", "Modern", "Hard", "Two stacked rotors spin in opposite directions!", "🚁"),
        ("sightseeing_chopper", "Grand Canyon Heli Tour", "Tour", "Easy", "Large bubble canopy gives 360 degree views!", "🚁"),
        ("high_altitude_heli", "Everest Peak Surveyor", "Alpine", "Hard", "Landed on the snowy summit of Mount Everest!", "🚁"),
        ("pipeline_patrol", "Pipeline Inspector Heli", "Utility", "Medium", "Inspects remote pipelines across deserts!", "🚁"),
        ("aerobatic_chopper", "Red Bull Flip Chopper", "Sport", "Hard", "Special titanium rotor can do full backflips!", "🚁"),
        ("unmanned_heli", "Autonomous Sky Drone Heli", "Future", "Medium", "Flies missions without needing any pilot inside!", "🚁"),
        ("hospital_transfer", "Neonatal Express Heli", "Medical", "Easy", "Equipped with mini incubators for tiny babies!", "🚁"),
        ("compound_hybrid", "Compound Speed Helicopter", "Future", "Hard", "Has extra push props to fly over 250 mph!", "🚁"),
        ("vintage_whirlybird", "Vintage Bubble Bell 47", "Classic", "Medium", "Famous round glass bubble from 1950s!", "🚁"),
        ("forest_surveyor", "Rainforest Canopy Chopper", "Nature", "Easy", "Hovering gently to count colorful macaws!", "🚁"),
        ("harbor_pilot_heli", "Harbor Vessel Delivery", "Marine", "Medium", "Drops ship captains right onto container decks!", "🚁"),
        ("solar_electric_heli", "Solar Electric Rotor", "Green", "Hard", "Zero emissions and whisper-quiet hovering!", "🚁"),
        ("desert_dune_heli", "Sahara Sand Patrol", "Adventure", "Medium", "Special sand filters keep engines super clean!", "🚁"),
        ("stealth_silent_heli", "Silent Night Rotor", "Future", "Hard", "Specially curved blades make almost zero noise!", "🚁")
    ]
    items = []
    for idx, (cid, title, cat, diff, fact, icon) in enumerate(choppers, 1):
        # Cabin body
        cabin = [(0.25, 0.55), (0.22, 0.48), (0.35, 0.42), (0.55, 0.42), (0.6, 0.52), (0.55, 0.6), (0.3, 0.6), (0.25, 0.55)]
        # Tail boom
        boom = [(0.6, 0.5), (0.85, 0.46), (0.85, 0.4), (0.88, 0.46)]
        # Main rotor
        rotor = [(0.15, 0.35), (0.75, 0.35)]
        # Landing skids
        skid = [(0.26, 0.68), (0.58, 0.68)]

        items.append({
            "id": f"heli_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": cabin, "instruction": f"Trace the bubble cabin of {title}"},
                {"id": 2, "points": boom, "instruction": "Trace the slender tail boom and tail rotor"},
                {"id": 3, "points": rotor, "instruction": "Trace the wide overhead spinning rotor blades"},
                {"id": 4, "points": skid, "instruction": "Trace the landing skids below"}
            ]
        })
    return items

def get_57_boat_items():
    boats = [
        ("sailboat", "White Canvas Sailboat", "Sailing", "Easy", "Wind pushes white cloth sails across waves!", "⛵"),
        ("speedboat", "Twin Jet Speedboat", "Sport", "Medium", "Skims across the lake making giant white splashes!", "🚤"),
        ("fishing_boat", "Ocean Trawler Fisher", "Fisher", "Medium", "Nets scoop up delicious fish for the seafood market!", "🚢"),
        ("cruise_ship", "Colossal Cruise Liner", "Ship", "Hard", "Has waterslides, swimming pools and theaters on board!", "🛳️"),
        ("tugboat", "Mighty Harbor Tugboat", "Harbor", "Easy", "Small but super strong to push giant ships into dock!", "🚢"),
        ("canoe", "Wooden Forest Canoe", "Paddle", "Easy", "Glide with double wooden paddles through quiet rivers!", "🛶"),
        ("kayak", "Whitewater Rapid Kayak", "Paddle", "Medium", "Paddlers roll through bubbly mountain river rapids!", "🛶"),
        ("ferry_boat", "Island Car Ferry", "Transit", "Medium", "Drives hundreds of family cars across the bay!", "⛴️"),
        ("catamaran", "Twin Hull Catamaran", "Sailing", "Hard", "Two sleek hulls give amazing balance and speed!", "⛵"),
        ("submarine", "Deep Ocean Submarine", "Underwater", "Hard", "Dives thousands of feet deep where strange fish glow!", "🚢"),
        ("luxury_yacht", "Mega Luxury Yacht", "Luxury", "Hard", "Has helicopter landing pads and sunbathing decks!", "🛥️"),
        ("pirate_ship", "Jolly Roger Galleon", "Vintage", "Hard", "Tall masts and billowing black pirate flags!", "🏴‍☠️"),
        ("river_barge", "Heavy River Freight Barge", "Cargo", "Medium", "Pushed gently along wide calm river waterways!", "🚢"),
        ("hydrofoil", "Sky Gliding Hydrofoil", "Fast", "Hard", "Underwater wings lift the entire hull out of water!", "🚤"),
        ("jet_ski", "Wave Running Jet Ski", "Sport", "Easy", "Handlebars let you steer like an aquatic motorbike!", "🚤"),
        ("rowing_skiff", "Olympic Racing Scull", "Sport", "Medium", "Athletes row in perfect sync backwards!", "🛶"),
        ("bamboo_raft", "Tropical River Bamboo Raft", "Adventure", "Easy", "Tied green bamboo canes float gently down river!", "🛶"),
        ("hovercraft", "Amphibious Air Hovercraft", "Modern", "Hard", "Rides on a giant air cushion over water and sand!", "🚤"),
        ("patrol_boat", "Coast Guard Interceptor", "Service", "Medium", "Fast response boats keep sea shores safe!", "🚤"),
        ("container_vessel", "Giant Container Ship", "Freight", "Hard", "Carries 24,000 colorful steel boxes!", "🚢"),
        ("paddle_steamer", "Mississippi River Steamer", "Vintage", "Hard", "Giant red paddle wheel splashes behind the deck!", "🚢"),
        ("tall_clipper_ship", "Four Mast Clipper Ship", "Vintage", "Hard", "Raced across tea trade routes around Cape Horn!", "⛵"),
        ("dinghy_boat", "Inflatable Rubber Dinghy", "Small", "Easy", "Safe bouncy rubber sides explore shallow coves!", "🛶"),
        ("research_vessel", "Polar Science Explorer", "Science", "Medium", "Scientists study friendly whales and cold icebergs!", "🚢"),
        ("floating_houseboat", "Canal Living Houseboat", "Home", "Medium", "People live inside with flower pots on the roof!", "🚢"),
        ("gondola_venice", "Venetian Black Gondola", "Classic", "Medium", "Gondoliers sing Italian songs under stone bridges!", "🛶"),
        ("icebreaker_ship", "Arctic Heavy Icebreaker", "Polar", "Hard", "Heavy steel bow crushes through thick pack ice!", "🚢"),
        ("dragon_boat", "Festive Dragon Boat", "Festival", "Medium", "Drums beat rhythmically for twenty smiling paddlers!", "🛶"),
        ("solar_electric_boat", "Silent Solar Cruiser", "Green", "Easy", "Whisper quiet motors protect sleeping fish!", "🚤"),
        ("viking_longship", "Ancient Viking Dragonship", "History", "Hard", "Carved dragon heads protected sea voyagers!", "⛵")
    ]
    items = []
    for idx, (bid, title, cat, diff, fact, icon) in enumerate(boats, 1):
        # Hull
        hull = [(0.15, 0.58), (0.25, 0.72), (0.75, 0.72), (0.88, 0.58), (0.15, 0.58)]
        # Water waves
        water = make_wave_points(x1=0.1, y=0.76, x2=0.9, amp=0.03, cycles=3, n=16)
        # Mast or cabin
        mast = [(0.5, 0.58), (0.5, 0.28)]
        sail = [(0.5, 0.3), (0.75, 0.54), (0.5, 0.54), (0.5, 0.3)]

        items.append({
            "id": f"boat_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": hull, "instruction": f"Trace the floating hull of {title}"},
                {"id": 2, "points": mast, "instruction": "Trace the tall vertical mast pole"},
                {"id": 3, "points": sail, "instruction": "Trace the billowing sail triangle"},
                {"id": 4, "points": water, "instruction": "Draw the rippling water waves below"}
            ]
        })
    return items

def get_58_tractor_items():
    tractors = [
        ("farm_tractor", "Classic Farm Tractor", "Classic", "Easy", "Green tractors plow fertile garden soil!", "🚜"),
        ("front_loader", "Tractor Front Loader", "Loader", "Medium", "Giant scoop lifts mounds of farm compost!", "🚜"),
        ("plow_tractor", "Furrow Plow Tractor", "Plow", "Hard", "Steel blades turn rich brown soil for planting seeds!", "🚜"),
        ("mower_tractor", "Field Grass Mower", "Mower", "Medium", "Cuts tall green grass to feed happy cows!", "🚜"),
        ("vintage_tractor", "Old Iron Steamer Tractor", "Vintage", "Hard", "Has big iron wheels and a tall smoke chimney!", "🚜"),
        ("vineyard_tractor", "Narrow Vineyard Crawler", "Vineyard", "Medium", "Super slim to squeeze between grape vines!", "🚜"),
        ("tracked_tractor", "Quad Track Heavy Puller", "Tracks", "Hard", "Rubber tracks never slip in muddy farm fields!", "🚜"),
        ("garden_tractor", "Backyard Lawn Tractor", "Garden", "Easy", "Keeps neighborhood green lawns neat and trim!", "🚜"),
        ("seed_drill", "Precision Seed Drill", "Seeder", "Hard", "Plants golden corn seeds at exact equal depths!", "🚜"),
        ("trailer_hauler", "Hay Bale Wagon Hauler", "Hauler", "Medium", "Hauls giant golden hay bales to the red barn!", "🚜"),
        ("round_baler", "Round Hay Baler Machine", "Baler", "Hard", "Rolls sweet grass into huge round marshmallow bales!", "🚜"),
        ("crop_sprayer", "Wide Boom Farm Sprayer", "Sprayer", "Hard", "Extends 30-meter wings to protect baby plants!", "🚜"),
        ("disc_harrow", "Rotary Disc Harrow", "Harrow", "Medium", "Spinning steel discs break up hard mud clods!", "🚜"),
        ("orchard_tractor", "Low Profile Orchard Cruiser", "Orchard", "Easy", "Low roof slips smoothly under juicy apple branches!", "🚜"),
        ("crawler_dozer", "Farm Bulldozer Tractor", "Heavy", "Hard", "Clears rocks and levels ground for vegetable gardens!", "🚜"),
        ("rotary_tiller", "Power Rotary Tiller", "Tiller", "Medium", "Churns soft fluffy soil ready for sweet carrots!", "🚜"),
        ("combine_companion", "Grain Cart Chaser", "Harvest", "Hard", "Drives alongside combines to catch golden wheat!", "🚜"),
        ("high_crop_tractor", "Tall Straddle Tractor", "Tall", "Medium", "Tall legs stride over tall cotton plants!", "🚜"),
        ("manure_spreader", "Organic Nutrient Spreader", "Farm", "Easy", "Recycles farm nutrients onto green pastures!", "🚜"),
        ("silage_harvester", "Corn Silage Chopper", "Harvest", "Hard", "Chops crunchy corn stalks into winter cattle feed!", "🚜"),
        ("electric_agri", "Quiet Electric Tractor", "Green", "Easy", "Charges up with farm rooftop solar panels!", "🚜"),
        ("log_skidder", "Woodland Log Skidder", "Forest", "Hard", "Pulls fallen logs safely along forest trails!", "🚜"),
        ("subsoiler_heavy", "Deep Earth Subsoiler", "Heavy", "Hard", "Rips deep through compacted hardpan clay!", "🚜"),
        ("ditcher_tractor", "Water Ditch Excavator", "Water", "Medium", "Digs clean irrigation channels for thirsty rice!", "🚜"),
        ("cultivator_rig", "Spring Tine Cultivator", "Cultivator", "Medium", "Loosens weed roots without harming baby crops!", "🚜"),
        ("backhoe_tractor", "Utility Farm Backhoe", "Utility", "Hard", "Front bucket loads and rear scoop digs deep trenches!", "🚜"),
        ("post_driver", "Fence Post Driver", "Fencing", "Easy", "Pounds wooden fence posts to keep horses safe!", "🚜"),
        ("snow_blower_agri", "Farm Lane Snow Blower", "Winter", "Medium", "Clears deep snow so milk tankers can reach cows!", "🚜"),
        ("autonomous_agri", "GPS Auto Farm Robot", "Future", "Hard", "Drives centimeter-perfect lines using satellites!", "🚜"),
        ("heritage_two_cylinder", "Two-Cylinder Johnny Popper", "Classic", "Medium", "Pops rhythmically: chug-chug-pop-pop!", "🚜")
    ]
    items = []
    for idx, (tid, title, cat, diff, fact, icon) in enumerate(tractors, 1):
        # Engine hood & cab
        body = [(0.2, 0.62), (0.2, 0.48), (0.5, 0.48), (0.5, 0.35), (0.72, 0.35), (0.72, 0.62)]
        # Giant rear wheel
        big_wheel = make_circle_points(cx=0.68, cy=0.65, r=0.14, n=16)
        # Small front wheel
        small_wheel = make_circle_points(cx=0.3, cy=0.7, r=0.08, n=12)
        # Chimney pipe
        pipe = [(0.42, 0.48), (0.42, 0.32)]

        items.append({
            "id": f"tractor_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": body, "instruction": f"Trace the engine hood and cab of {title}"},
                {"id": 2, "points": pipe, "instruction": "Trace the vertical exhaust pipe"},
                {"id": 3, "points": big_wheel, "instruction": "Draw the massive rear tractor wheel"},
                {"id": 4, "points": small_wheel, "instruction": "Draw the nimble front steering wheel"}
            ]
        })
    return items

def get_59_construction_items():
    vehicles = [
        ("excavator", "Mighty Hydraulic Excavator", "Digging", "Hard", "Steel bucket digs deep foundation basements!", "🚜"),
        ("bulldozer", "Heavy Blade Bulldozer", "Earthmoving", "Medium", "Giant steel blade pushes boulders and dirt!", "🚜"),
        ("tower_crane", "Skyline Tower Crane", "Lifting", "Hard", "Tall crane builds tallest glass skyscrapers!", "🏗️"),
        ("cement_mixer", "Concrete Drum Mixer", "Paving", "Medium", "Spins round and round to pour sidewalk concrete!", "🚛"),
        ("road_roller", "Heavy Drum Road Roller", "Compacting", "Easy", "Flattens fresh black asphalt totally smooth!", "🚜"),
        ("backhoe_loader", "Versatile Backhoe Loader", "Utility", "Medium", "Scoops in front and digs trenches in back!", "🚜"),
        ("skid_steer", "Bobcat Skid Steer", "Compact", "Easy", "Can spin in a complete 360 circle on the spot!", "🚜"),
        ("articulated_dump", "Off-Road Rock Dumper", "Hauling", "Hard", "Bends in the center to haul 40 tons of rubble!", "🚛"),
        ("motor_grader", "Long Blade Motor Grader", "Grading", "Hard", "Sharp belly blade angles to crown smooth roads!", "🚜"),
        ("telehandler", "Telescopic Boom Forklift", "Lifting", "Medium", "Extends pallets of bricks up to the 4th floor!", "🚜"),
        ("wheel_loader", "Giant Quarry Wheel Loader", "Loading", "Medium", "Huge scoop fills dump trucks in just three scoops!", "🚜"),
        ("pile_driver", "Hydraulic Pile Driver", "Foundation", "Hard", "Hammers steel pillars deep into solid bedrock!", "🏗️"),
        ("trench_digger", "Continuous Wheel Trencher", "Digging", "Hard", "Chains of teeth carve trenches for water pipes!", "🚜"),
        ("asphalt_paver", "Highway Asphalt Paver", "Paving", "Hard", "Spreads hot steaming asphalt like butter on toast!", "🚜"),
        ("cherry_picker", "Mobile Telescopic Boom Lift", "Access", "Easy", "Carries window cleaners safely to high floors!", "🚜"),
        ("crawler_crane", "Heavy Lattice Crawler Crane", "Lifting", "Hard", "Rolls on tracks lifting entire bridge sections!", "🏗️"),
        ("mini_excavator", "Rubber Track Mini Digger", "Compact", "Easy", "Fits through garden gates to plant lovely trees!", "🚜"),
        ("compactor_roller", "Sheepsfoot Soil Compactor", "Compacting", "Medium", "Knobby steel drum packs dam earth tight!", "🚜"),
        ("rock_drill_rig", "Pneumatic Rock Drill", "Drilling", "Hard", "Bores deep holes for highway mountain tunnels!", "🚜"),
        ("concrete_pump", "Boom Concrete Pump Truck", "Pouring", "Hard", "Pumps liquid stone up 50 floors through pipes!", "🚛"),
        ("demolition_shear", "Steel Demolition Shear", "Demolition", "Hard", "Monster hydraulic jaws snip through steel beams!", "🚜"),
        ("pipe_layer", "Sideboom Heavy Pipelayer", "Pipeline", "Hard", "Lowers massive water mains gently into trenches!", "🚜"),
        ("scissort_lift", "Electric Scissor Platform", "Access", "Easy", "Puff of air raises criss-crossing steel scissors!", "🚜"),
        ("suction_excavator", "Super Vacuum Truck", "Vacuum", "Medium", "Giant vacuum hose sucks mud from buried cables!", "🚛"),
        ("hydraulic_breaker", "Concrete Jackhammer Breaker", "Demolition", "Medium", "Pounds old cracked sidewalks into pebbles!", "🚜"),
        ("tunnel_boring", "Mega Tunnel Boring Machine", "Tunnel", "Hard", "Giant rotating cutter head digs metro tunnels!", "🚇"),
        ("reach_stacker", "Harbor Container Stacker", "Logistics", "Hard", "Clamps 40-foot shipping containers with ease!", "🚜"),
        ("dumper_buggy", "Site Swivel Buggy", "Site", "Easy", "Swivels bucket to dump gravel right into holes!", "🚜"),
        ("soil_stabilizer", "Soil Lime Mixer Rotor", "Paving", "Hard", "Mixes lime into soggy mud to turn it rock solid!", "🚜"),
        ("dragline_mining", "Giant Walking Dragline", "Mining", "Hard", "Bucket is as big as a family house!", "🏗️")
    ]
    items = []
    for idx, (vid, title, cat, diff, fact, icon) in enumerate(vehicles, 1):
        # Base machine
        cab = [(0.25, 0.65), (0.25, 0.45), (0.52, 0.45), (0.52, 0.65), (0.25, 0.65)]
        # Boom arm
        arm = [(0.5, 0.55), (0.7, 0.35), (0.85, 0.48)]
        # Tracks / wheels
        tracks = make_rect_points(0.2, 0.65, 0.38, 0.08)

        items.append({
            "id": f"const_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": cab, "instruction": f"Trace the strong operator cabin of {title}"},
                {"id": 2, "points": arm, "instruction": "Trace the mechanical boom arm"},
                {"id": 3, "points": tracks, "instruction": "Trace the heavy steel caterpillar tracks"}
            ]
        })
    return items

def get_60_racing_items():
    racers = [
        ("formula_car", "Formula Grand Prix Car", "Open Wheel", "Hard", "Aerodynamic wings press it to the race track!", "🏎️"),
        ("rally_racer", "World Championship Rally Car", "Rally", "Hard", "Drifts around hairpin corners on snowy gravel!", "🏎️"),
        ("go_kart", "Zippy Junior Go-Kart", "Kart", "Easy", "Low to the ground for thrilling racing fun!", "🏎️"),
        ("racing_superbike", "1000cc Superbike Racer", "Bike", "Hard", "Riders lean their knees right onto the asphalt!", "🏍️"),
        ("dragster_top_fuel", "Top Fuel Nitro Dragster", "Drag", "Hard", "Accelerates to 330 mph in less than 4 seconds!", "🏎️"),
        ("nascar_stock", "Super Speedway Stock Car", "Stock", "Medium", "Races bumper-to-bumper on high banked ovals!", "🏎️"),
        ("le_mans_proto", "24-Hour Endurance Prototype", "Endurance", "Hard", "Races through the dark rainy night at Le Mans!", "🏎️"),
        ("trophy_truck", "Baja 1000 Desert Trophy Truck", "Off-Road", "Hard", "Massive shocks soak up 5-foot desert whoops!", "🛻"),
        ("drift_car", "Smoke Sliding Drift Car", "Drift", "Hard", "Slides sideways sending up clouds of tire smoke!", "🏎️"),
        ("motocross_bike", "Flying Motocross Dirt Bike", "Dirt", "Medium", "Jumps high over double dirt table-top jumps!", "🏍️"),
        ("touring_car", "Super Touring Sedan", "Touring", "Medium", "Modified everyday family cars racing fast!", "🏎️"),
        ("dune_buggy_racer", "Sand Dune Jumping Buggy", "Off-Road", "Medium", "Tubular roll cage keeps drivers totally safe!", "🏎️"),
        ("electric_formula", "Gen3 Electric Formula Racer", "Formula", "Hard", "High-tech electric motors with zero emissions!", "🏎️"),
        ("sprint_car", "Winged Dirt Oval Sprint Car", "Sprint", "Hard", "Giant top wing provides downforce on clay tracks!", "🏎️"),
        ("sidecar_racer", "Two-Person Sidecar Racer", "Bike", "Hard", "Passenger leans out like an acrobat on corners!", "🏍️"),
        ("superkart", "250cc Superkart Twin", "Kart", "Hard", "Small kart that can reach 150 miles per hour!", "🏎️"),
        ("hillclimb_special", "Pikes Peak Winged Monster", "Hillclimb", "Hard", "Giant wings climb 14,000 feet into thin air!", "🏎️"),
        ("time_attack", "Aero Demon Time Attack", "Aero", "Hard", "Enormous carbon front splitter hugs the tarmac!", "🏎️"),
        ("vintage_grand_prix", "1930s Silver Arrow", "Vintage", "Medium", "Narrow tires and shiny cigar-shaped bodies!", "🏎️"),
        ("land_speed_streamliner", "Rocket Land Streamliner", "Record", "Hard", "Fitted with jet engines on Bonneville salt flats!", "🏎️"),
        ("stadium_truck", "Stadium Super Jumping Truck", "Truck", "Medium", "Jumps over metal ramps inside sports stadiums!", "🛻"),
        ("monster_racing_truck", "Arena Monster Truck Racer", "Monster", "Medium", "Crushes old scrap cars under 66-inch tires!", "🛻"),
        ("dirt_track_latemodel", "Clay Late Model Wedge", "Dirt", "Hard", "Wedge-shaped body slices air on slippery dirt!", "🏎️"),
        ("pocket_bike", "Miniature Pocket Racer", "Bike", "Easy", "Tiny knee-high motorbikes for kid champions!", "🏍️"),
        ("quad_racer", "Racing Quad ATV", "Off-Road", "Medium", "Four knobby tires powerslide through sandy turns!", "🏍️"),
        ("hypercar_gtr", "Track-Only Hypercar GTR", "Hypercar", "Hard", "V12 engine roars with thrilling race echoes!", "🏎️"),
        ("supermoto_hybrid", "Supermoto Pavement & Dirt", "Bike", "Medium", "Races across both asphalt and muddy jumps!", "🏍️"),
        ("snowmobile_racer", "Snocross Snowmobile Racer", "Winter", "Medium", "Rubber tracks launch across snowy race bumps!", "🏎️"),
        ("hover_pod_racer", "Futuristic Anti-Grav Pod", "Future", "Hard", "Floats on magnetic tracks at sonic velocity!", "🚀"),
        ("solar_challenge_car", "World Solar Challenge Wing", "Solar", "Medium", "Slices across the Australian outback on sunlight!", "🏎️")
    ]
    items = []
    for idx, (rid, title, cat, diff, fact, icon) in enumerate(racers, 1):
        # Sleek aerodynamic body
        body = [(0.15, 0.6), (0.25, 0.58), (0.45, 0.48), (0.7, 0.48), (0.85, 0.54), (0.88, 0.6), (0.15, 0.6)]
        # Rear spoiler
        spoiler = [(0.75, 0.48), (0.75, 0.38), (0.88, 0.38)]
        # Front wing
        front_wing = [(0.12, 0.62), (0.24, 0.62)]
        # Wheels
        w1 = make_circle_points(cx=0.3, cy=0.64, r=0.07, n=12)
        w2 = make_circle_points(cx=0.72, cy=0.64, r=0.07, n=12)

        items.append({
            "id": f"racing_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": body, "instruction": f"Trace the low aerodynamic body of {title}"},
                {"id": 2, "points": spoiler, "instruction": "Trace the high-downforce rear racing wing"},
                {"id": 3, "points": front_wing, "instruction": "Trace the ground-hugging front splitter"},
                {"id": 4, "points": w1, "instruction": "Draw the racing slick front tire"},
                {"id": 5, "points": w2, "instruction": "Draw the wide rear driving tire"}
            ]
        })
    return items

