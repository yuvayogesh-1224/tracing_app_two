import '../models/tracing_item.dart';

class PathTemplates {
  static List<TracingItem> getItems() {
    return [
      TracingItem(
        id: 'train_01',
        title: 'Shinkansen Bullet Train',
        category: 'High Speed',
        difficulty: 'Medium',
        funFact: 'Bullet trains slice air like aerodynamic arrows!',
        iconSymbol: '🚅',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Shinkansen Bullet Train',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_02',
        title: 'Classic Puffer Steam Train',
        category: 'Vintage',
        difficulty: 'Hard',
        funFact: 'Puffs white steam clouds and goes choo-choo!',
        iconSymbol: '🚂',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Classic Puffer Steam Train',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_03',
        title: 'Underground Subway Metro',
        category: 'Transit',
        difficulty: 'Easy',
        funFact: 'Speedily zooms through underground city tunnels!',
        iconSymbol: '🚇',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Underground Subway Metro',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_04',
        title: 'Trans-Express Train',
        category: 'Express',
        difficulty: 'Medium',
        funFact: 'Passengers sip cocoa while viewing snowy peaks!',
        iconSymbol: '🚆',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Trans-Express Train',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_05',
        title: 'Heavy Coal Freight Train',
        category: 'Cargo',
        difficulty: 'Hard',
        funFact: 'Mile-long freight trains carry tons of coal!',
        iconSymbol: '🚋',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Heavy Coal Freight Train',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_06',
        title: 'Sky Straddle Monorail',
        category: 'Modern',
        difficulty: 'Easy',
        funFact: 'Glides smoothly along a single elevated beam!',
        iconSymbol: '🚝',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Sky Straddle Monorail',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_07',
        title: 'Sunny City Tram',
        category: 'Tram',
        difficulty: 'Easy',
        funFact: 'Trams share city streets with yellow bicycles!',
        iconSymbol: '🚊',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Sunny City Tram',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_08',
        title: 'Little Red Caboose',
        category: 'Vintage',
        difficulty: 'Easy',
        funFact: 'The friendly red caboose rides at the very tail!',
        iconSymbol: '🚋',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Little Red Caboose',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_09',
        title: 'Mountain Cable Funicular',
        category: 'Alpine',
        difficulty: 'Hard',
        funFact: 'Climbs steep snowy cliffs using strong steel cables!',
        iconSymbol: '🚠',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Mountain Cable Funicular',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_10',
        title: 'Floating Maglev Train',
        category: 'Future',
        difficulty: 'Hard',
        funFact: 'Magnets lift the train so it floats above tracks!',
        iconSymbol: '🚅',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Floating Maglev Train',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_11',
        title: 'Yellow Diesel Locomotive',
        category: 'Locomotive',
        difficulty: 'Medium',
        funFact: 'Switches train cars in busy sorting yards!',
        iconSymbol: '🚂',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Yellow Diesel Locomotive',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_12',
        title: 'Double Decker Passenger',
        category: 'Transit',
        difficulty: 'Hard',
        funFact: 'Two levels of windows for twice as many riders!',
        iconSymbol: '🚆',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Double Decker Passenger',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_13',
        title: 'Art Deco Streamliner',
        category: 'Vintage',
        difficulty: 'Hard',
        funFact: 'Sleek silver trains from the golden age of rail!',
        iconSymbol: '🚆',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Art Deco Streamliner',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_14',
        title: 'Alpine Cog Railway',
        category: 'Alpine',
        difficulty: 'Hard',
        funFact: 'Toothed cog gears grip steep mountain rails!',
        iconSymbol: '🚂',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Alpine Cog Railway',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_15',
        title: 'Colorful Circus Train',
        category: 'Fantasy',
        difficulty: 'Medium',
        funFact: 'Carries striped big-top tents and acrobats!',
        iconSymbol: '🚂',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Colorful Circus Train',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_16',
        title: 'Quiet Electric Commuter',
        category: 'Transit',
        difficulty: 'Easy',
        funFact: 'Pantographs collect clean electric sparks!',
        iconSymbol: '🚆',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Quiet Electric Commuter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_17',
        title: 'Luxury Dining Carriage',
        category: 'Carriage',
        difficulty: 'Medium',
        funFact: 'Chefs prepare gourmet dinners on moving tracks!',
        iconSymbol: '🚋',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Luxury Dining Carriage',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_18',
        title: 'Starlight Sleeper Train',
        category: 'Night',
        difficulty: 'Medium',
        funFact: 'Kids fall asleep in cozy bunk beds on rails!',
        iconSymbol: '🚆',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Starlight Sleeper Train',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_19',
        title: 'Industrial Oil Tanker',
        category: 'Cargo',
        difficulty: 'Medium',
        funFact: 'Sturdy cylindrical cars transport clean fuel!',
        iconSymbol: '🚋',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Industrial Oil Tanker',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_20',
        title: 'Auto Carrier Train',
        category: 'Cargo',
        difficulty: 'Hard',
        funFact: 'Transports brand new shiny cars in multi tiers!',
        iconSymbol: '🚋',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Auto Carrier Train',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_21',
        title: 'Mine Quarry Hopper',
        category: 'Industrial',
        difficulty: 'Easy',
        funFact: 'Dumps sparkling minerals straight from the mine!',
        iconSymbol: '🚋',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Mine Quarry Hopper',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_22',
        title: 'Forest Timber Transporter',
        category: 'Cargo',
        difficulty: 'Medium',
        funFact: 'Carries giant pine logs to paper sawmills!',
        iconSymbol: '🚋',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Forest Timber Transporter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_23',
        title: 'Tilting Pendolino Train',
        category: 'High Speed',
        difficulty: 'Hard',
        funFact: 'Tilts into sharp curves without slowing down!',
        iconSymbol: '🚅',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Tilting Pendolino Train',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_24',
        title: 'Double Stack Flatcar',
        category: 'Cargo',
        difficulty: 'Hard',
        funFact: 'Stacks two ocean containers on top of each other!',
        iconSymbol: '🚋',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Double Stack Flatcar',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_25',
        title: 'Fast Railway Mail Car',
        category: 'Express',
        difficulty: 'Medium',
        funFact: 'Sorts letters while speeding across the country!',
        iconSymbol: '🚆',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Fast Railway Mail Car',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_26',
        title: 'Rotary Snowplow Train',
        category: 'Winter',
        difficulty: 'Hard',
        funFact: 'Huge spinning blades blast snowy drifts away!',
        iconSymbol: '🚂',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Rotary Snowplow Train',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_27',
        title: 'Canyon Open Air Tour',
        category: 'Tour',
        difficulty: 'Easy',
        funFact: 'Feel the refreshing canyon breeze in open wagons!',
        iconSymbol: '🚋',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Canyon Open Air Tour',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_28',
        title: 'Wooden Cable Trolley',
        category: 'Classic',
        difficulty: 'Medium',
        funFact: 'Rings its brass gong when stopping at the corner!',
        iconSymbol: '🚊',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Wooden Cable Trolley',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_29',
        title: 'Solar Track Glider',
        category: 'Future',
        difficulty: 'Medium',
        funFact: 'Solar roofs power silent cross-desert journeys!',
        iconSymbol: '🚆',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Solar Track Glider',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'train_30',
        title: 'Vacuum Tube Hyper Pod',
        category: 'Future',
        difficulty: 'Hard',
        funFact: 'Shoots through airless tubes at airplane speed!',
        iconSymbol: '🚅',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the locomotive outline of Vacuum Tube Hyper Pod',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.12, 0.42), TracingPoint(0.84, 0.42), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.62), TracingPoint(0.12, 0.62)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the straight steel train track',
            points: [TracingPoint(0.06, 0.74), TracingPoint(0.94, 0.74)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front steel train wheel',
            points: [TracingPoint(0.25, 0.6), TracingPoint(0.28, 0.608), TracingPoint(0.302, 0.63), TracingPoint(0.31, 0.66), TracingPoint(0.302, 0.69), TracingPoint(0.28, 0.712), TracingPoint(0.25, 0.72), TracingPoint(0.22, 0.712), TracingPoint(0.198, 0.69), TracingPoint(0.19, 0.66), TracingPoint(0.198, 0.63), TracingPoint(0.22, 0.608), TracingPoint(0.25, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the middle driving wheel',
            points: [TracingPoint(0.5, 0.6), TracingPoint(0.53, 0.608), TracingPoint(0.552, 0.63), TracingPoint(0.56, 0.66), TracingPoint(0.552, 0.69), TracingPoint(0.53, 0.712), TracingPoint(0.5, 0.72), TracingPoint(0.47, 0.712), TracingPoint(0.448, 0.69), TracingPoint(0.44, 0.66), TracingPoint(0.448, 0.63), TracingPoint(0.47, 0.608), TracingPoint(0.5, 0.6)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the rear trailing wheel',
            points: [TracingPoint(0.75, 0.6), TracingPoint(0.78, 0.608), TracingPoint(0.802, 0.63), TracingPoint(0.81, 0.66), TracingPoint(0.802, 0.69), TracingPoint(0.78, 0.712), TracingPoint(0.75, 0.72), TracingPoint(0.72, 0.712), TracingPoint(0.698, 0.69), TracingPoint(0.69, 0.66), TracingPoint(0.698, 0.63), TracingPoint(0.72, 0.608), TracingPoint(0.75, 0.6)],
          )
        ],
      )
    ];
  }
}
