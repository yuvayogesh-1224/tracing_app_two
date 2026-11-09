import '../models/tracing_item.dart';

class PathTemplates {
  static List<TracingItem> getItems() {
    return [
      TracingItem(
        id: 'truck_01',
        title: 'Parcel Delivery Van',
        category: 'Delivery',
        difficulty: 'Easy',
        funFact: 'Delivers packages right to your front door!',
        iconSymbol: '🚚',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Parcel Delivery Van',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo box',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_02',
        title: 'Giant Dump Truck',
        category: 'Heavy',
        difficulty: 'Medium',
        funFact: 'Tilts its giant yellow bed to pour rocks!',
        iconSymbol: '🚛',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Giant Dump Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo tipper',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.48), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_03',
        title: 'Highway Cargo Truck',
        category: 'Freight',
        difficulty: 'Medium',
        funFact: 'Transports crates of apples across states!',
        iconSymbol: '🚚',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Highway Cargo Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo box',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_04',
        title: 'Heroic Fire Truck',
        category: 'Emergency',
        difficulty: 'Hard',
        funFact: 'Carries long ladders and water hoses!',
        iconSymbol: '🚒',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Heroic Fire Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo ladder',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_05',
        title: 'Sturdy Tow Truck',
        category: 'Service',
        difficulty: 'Medium',
        funFact: 'Hooks up broken cars to take them to garages!',
        iconSymbol: '🛻',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Sturdy Tow Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo boom',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_06',
        title: 'Green Garbage Truck',
        category: 'Sanitation',
        difficulty: 'Easy',
        funFact: 'Lifts heavy trash bins to keep streets clean!',
        iconSymbol: '🚛',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Green Garbage Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo box',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_07',
        title: 'Heavy Logging Truck',
        category: 'Timber',
        difficulty: 'Hard',
        funFact: 'Transports tall timber logs from deep forests!',
        iconSymbol: '🚛',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Heavy Logging Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo flat',
            points: [TracingPoint(0.42, 0.62), TracingPoint(0.88, 0.62), TracingPoint(0.88, 0.58), TracingPoint(0.42, 0.58)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_08',
        title: 'Liquid Tanker Truck',
        category: 'Hauler',
        difficulty: 'Medium',
        funFact: 'Cylindrical steel tank carries clean milk or juice!',
        iconSymbol: '🚛',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Liquid Tanker Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo tank',
            points: [TracingPoint(0.65, 0.38), TracingPoint(0.734, 0.389), TracingPoint(0.806, 0.415), TracingPoint(0.853, 0.454), TracingPoint(0.87, 0.5), TracingPoint(0.853, 0.546), TracingPoint(0.806, 0.585), TracingPoint(0.734, 0.611), TracingPoint(0.65, 0.62), TracingPoint(0.566, 0.611), TracingPoint(0.494, 0.585), TracingPoint(0.447, 0.546), TracingPoint(0.43, 0.5), TracingPoint(0.447, 0.454), TracingPoint(0.494, 0.415), TracingPoint(0.566, 0.389), TracingPoint(0.65, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_09',
        title: 'Bouncing Monster Truck',
        category: 'Show',
        difficulty: 'Hard',
        funFact: 'Giant bouncy tires taller than grown-up people!',
        iconSymbol: '🛻',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Bouncing Monster Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo monster',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_10',
        title: 'Open Flatbed Truck',
        category: 'Freight',
        difficulty: 'Easy',
        funFact: 'Carries large construction beams safely!',
        iconSymbol: '🚛',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Open Flatbed Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo flat',
            points: [TracingPoint(0.42, 0.62), TracingPoint(0.88, 0.62), TracingPoint(0.88, 0.58), TracingPoint(0.42, 0.58)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_11',
        title: 'Spinning Cement Truck',
        category: 'Building',
        difficulty: 'Hard',
        funFact: 'The drum keeps turning so wet cement doesn\'t dry!',
        iconSymbol: '🚛',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Spinning Cement Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo drum',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_12',
        title: 'Ice Cream Sweet Truck',
        category: 'Food',
        difficulty: 'Easy',
        funFact: 'Plays cheery melodies and gives out popsicles!',
        iconSymbol: '🚚',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Ice Cream Sweet Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo box',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_13',
        title: 'Moving Box Truck',
        category: 'Moving',
        difficulty: 'Medium',
        funFact: 'Helps families pack sofas when moving homes!',
        iconSymbol: '🚚',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Moving Box Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo box',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_14',
        title: 'Electric Utility Truck',
        category: 'Service',
        difficulty: 'Medium',
        funFact: 'Lifts electricians up to fix overhead wires!',
        iconSymbol: '🛻',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Electric Utility Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo boom',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_15',
        title: 'Freezer Cargo Truck',
        category: 'Food',
        difficulty: 'Medium',
        funFact: 'Keeps frozen ice creams icy cold on sunny days!',
        iconSymbol: '🚚',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Freezer Cargo Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo box',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_16',
        title: 'Desert Camo Truck',
        category: 'Rugged',
        difficulty: 'Hard',
        funFact: 'Tough 6x6 wheels roll through deep muddy swamps!',
        iconSymbol: '🚛',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Desert Camo Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo flat',
            points: [TracingPoint(0.42, 0.62), TracingPoint(0.88, 0.62), TracingPoint(0.88, 0.58), TracingPoint(0.42, 0.58)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_17',
        title: 'Mobile Crane Truck',
        category: 'Crane',
        difficulty: 'Hard',
        funFact: 'Extends a long steel boom to lift steel pillars!',
        iconSymbol: '🏗️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Mobile Crane Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo boom',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_18',
        title: 'Colossal Mining Hauler',
        category: 'Mining',
        difficulty: 'Hard',
        funFact: 'The biggest trucks in the world carry 300 tons!',
        iconSymbol: '🚛',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Colossal Mining Hauler',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo monster',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_19',
        title: 'Blizzard Snowplow',
        category: 'Winter',
        difficulty: 'Medium',
        funFact: 'Pushes thick snow off frozen highways!',
        iconSymbol: '🚛',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Blizzard Snowplow',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo tipper',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.48), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_20',
        title: 'Tasty Taco Food Truck',
        category: 'Food',
        difficulty: 'Easy',
        funFact: 'Cooks delicious meals at sunny city parks!',
        iconSymbol: '🚚',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Tasty Taco Food Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo box',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_21',
        title: 'Tree Trimmer Bucket',
        category: 'Service',
        difficulty: 'Medium',
        funFact: 'Lifts garden workers to trim tall tree branches!',
        iconSymbol: '🛻',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Tree Trimmer Bucket',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo boom',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_22',
        title: 'Multi-Axle Super Hauler',
        category: 'Heavy',
        difficulty: 'Hard',
        funFact: 'Has 16 wheels to distribute massive cargo weights!',
        iconSymbol: '🚛',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Multi-Axle Super Hauler',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo flat',
            points: [TracingPoint(0.42, 0.62), TracingPoint(0.88, 0.62), TracingPoint(0.88, 0.58), TracingPoint(0.42, 0.58)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_23',
        title: 'Bank Armored Guard',
        category: 'Security',
        difficulty: 'Hard',
        funFact: 'Bulletproof steel walls protect gold coins!',
        iconSymbol: '🚚',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Bank Armored Guard',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo box',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_24',
        title: 'Farm Grain Truck',
        category: 'Agriculture',
        difficulty: 'Easy',
        funFact: 'Transports harvested golden wheat from combines!',
        iconSymbol: '🚛',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Farm Grain Truck',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo tipper',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.48), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_25',
        title: 'Cattle Farm Transporter',
        category: 'Agriculture',
        difficulty: 'Medium',
        funFact: 'Air vents keep farm animals cool and happy!',
        iconSymbol: '🚛',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Cattle Farm Transporter',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo box',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_26',
        title: 'Rescue Flatbed Hauler',
        category: 'Service',
        difficulty: 'Medium',
        funFact: 'Winches disabled motorbikes onto the ramp!',
        iconSymbol: '🛻',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Rescue Flatbed Hauler',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo flat',
            points: [TracingPoint(0.42, 0.62), TracingPoint(0.88, 0.62), TracingPoint(0.88, 0.58), TracingPoint(0.42, 0.58)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_27',
        title: 'Ocean Port Container',
        category: 'Freight',
        difficulty: 'Hard',
        funFact: 'Carries shipping containers loaded from ships!',
        iconSymbol: '🚛',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Ocean Port Container',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo box',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_28',
        title: 'Big Rig 18-Wheeler',
        category: 'Freight',
        difficulty: 'Hard',
        funFact: 'Honks loud air horns when kids pump their arm!',
        iconSymbol: '🚛',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Big Rig 18-Wheeler',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo box',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_29',
        title: 'Jet A-1 Airport Tanker',
        category: 'Airport',
        difficulty: 'Medium',
        funFact: 'Pumps aviation fuel into jumbo passenger wings!',
        iconSymbol: '🚛',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Jet A-1 Airport Tanker',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo tank',
            points: [TracingPoint(0.65, 0.38), TracingPoint(0.734, 0.389), TracingPoint(0.806, 0.415), TracingPoint(0.853, 0.454), TracingPoint(0.87, 0.5), TracingPoint(0.853, 0.546), TracingPoint(0.806, 0.585), TracingPoint(0.734, 0.611), TracingPoint(0.65, 0.62), TracingPoint(0.566, 0.611), TracingPoint(0.494, 0.585), TracingPoint(0.447, 0.546), TracingPoint(0.43, 0.5), TracingPoint(0.447, 0.454), TracingPoint(0.494, 0.415), TracingPoint(0.566, 0.389), TracingPoint(0.65, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'truck_30',
        title: 'Modern Cyber Hauler',
        category: 'Future',
        difficulty: 'Medium',
        funFact: 'Ultra-silent motors haul freight across country!',
        iconSymbol: '🚛',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the front cab of the Modern Cyber Hauler',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.45), TracingPoint(0.35, 0.45), TracingPoint(0.42, 0.52), TracingPoint(0.42, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rear cargo box',
            points: [TracingPoint(0.44, 0.65), TracingPoint(0.44, 0.42), TracingPoint(0.86, 0.42), TracingPoint(0.86, 0.65), TracingPoint(0.44, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the sturdy front cab tire',
            points: [TracingPoint(0.26, 0.6), TracingPoint(0.3, 0.611), TracingPoint(0.329, 0.64), TracingPoint(0.34, 0.68), TracingPoint(0.329, 0.72), TracingPoint(0.3, 0.749), TracingPoint(0.26, 0.76), TracingPoint(0.22, 0.749), TracingPoint(0.191, 0.72), TracingPoint(0.18, 0.68), TracingPoint(0.191, 0.64), TracingPoint(0.22, 0.611), TracingPoint(0.26, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the heavy-duty rear load wheel',
            points: [TracingPoint(0.72, 0.6), TracingPoint(0.76, 0.611), TracingPoint(0.789, 0.64), TracingPoint(0.8, 0.68), TracingPoint(0.789, 0.72), TracingPoint(0.76, 0.749), TracingPoint(0.72, 0.76), TracingPoint(0.68, 0.749), TracingPoint(0.651, 0.72), TracingPoint(0.64, 0.68), TracingPoint(0.651, 0.64), TracingPoint(0.68, 0.611), TracingPoint(0.72, 0.6)],
          )
        ],
      )
    ];
  }
}
