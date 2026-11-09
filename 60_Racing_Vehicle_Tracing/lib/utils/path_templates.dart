import '../models/tracing_item.dart';

class PathTemplates {
  static List<TracingItem> getItems() {
    return [
      TracingItem(
        id: 'racing_01',
        title: 'Formula Grand Prix Car',
        category: 'Open Wheel',
        difficulty: 'Hard',
        funFact: 'Aerodynamic wings press it to the race track!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Formula Grand Prix Car',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_02',
        title: 'World Championship Rally Car',
        category: 'Rally',
        difficulty: 'Hard',
        funFact: 'Drifts around hairpin corners on snowy gravel!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of World Championship Rally Car',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_03',
        title: 'Zippy Junior Go-Kart',
        category: 'Kart',
        difficulty: 'Easy',
        funFact: 'Low to the ground for thrilling racing fun!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Zippy Junior Go-Kart',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_04',
        title: '1000cc Superbike Racer',
        category: 'Bike',
        difficulty: 'Hard',
        funFact: 'Riders lean their knees right onto the asphalt!',
        iconSymbol: '🏍️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of 1000cc Superbike Racer',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_05',
        title: 'Top Fuel Nitro Dragster',
        category: 'Drag',
        difficulty: 'Hard',
        funFact: 'Accelerates to 330 mph in less than 4 seconds!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Top Fuel Nitro Dragster',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_06',
        title: 'Super Speedway Stock Car',
        category: 'Stock',
        difficulty: 'Medium',
        funFact: 'Races bumper-to-bumper on high banked ovals!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Super Speedway Stock Car',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_07',
        title: '24-Hour Endurance Prototype',
        category: 'Endurance',
        difficulty: 'Hard',
        funFact: 'Races through the dark rainy night at Le Mans!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of 24-Hour Endurance Prototype',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_08',
        title: 'Baja 1000 Desert Trophy Truck',
        category: 'Off-Road',
        difficulty: 'Hard',
        funFact: 'Massive shocks soak up 5-foot desert whoops!',
        iconSymbol: '🛻',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Baja 1000 Desert Trophy Truck',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_09',
        title: 'Smoke Sliding Drift Car',
        category: 'Drift',
        difficulty: 'Hard',
        funFact: 'Slides sideways sending up clouds of tire smoke!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Smoke Sliding Drift Car',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_10',
        title: 'Flying Motocross Dirt Bike',
        category: 'Dirt',
        difficulty: 'Medium',
        funFact: 'Jumps high over double dirt table-top jumps!',
        iconSymbol: '🏍️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Flying Motocross Dirt Bike',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_11',
        title: 'Super Touring Sedan',
        category: 'Touring',
        difficulty: 'Medium',
        funFact: 'Modified everyday family cars racing fast!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Super Touring Sedan',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_12',
        title: 'Sand Dune Jumping Buggy',
        category: 'Off-Road',
        difficulty: 'Medium',
        funFact: 'Tubular roll cage keeps drivers totally safe!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Sand Dune Jumping Buggy',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_13',
        title: 'Gen3 Electric Formula Racer',
        category: 'Formula',
        difficulty: 'Hard',
        funFact: 'High-tech electric motors with zero emissions!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Gen3 Electric Formula Racer',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_14',
        title: 'Winged Dirt Oval Sprint Car',
        category: 'Sprint',
        difficulty: 'Hard',
        funFact: 'Giant top wing provides downforce on clay tracks!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Winged Dirt Oval Sprint Car',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_15',
        title: 'Two-Person Sidecar Racer',
        category: 'Bike',
        difficulty: 'Hard',
        funFact: 'Passenger leans out like an acrobat on corners!',
        iconSymbol: '🏍️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Two-Person Sidecar Racer',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_16',
        title: '250cc Superkart Twin',
        category: 'Kart',
        difficulty: 'Hard',
        funFact: 'Small kart that can reach 150 miles per hour!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of 250cc Superkart Twin',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_17',
        title: 'Pikes Peak Winged Monster',
        category: 'Hillclimb',
        difficulty: 'Hard',
        funFact: 'Giant wings climb 14,000 feet into thin air!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Pikes Peak Winged Monster',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_18',
        title: 'Aero Demon Time Attack',
        category: 'Aero',
        difficulty: 'Hard',
        funFact: 'Enormous carbon front splitter hugs the tarmac!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Aero Demon Time Attack',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_19',
        title: '1930s Silver Arrow',
        category: 'Vintage',
        difficulty: 'Medium',
        funFact: 'Narrow tires and shiny cigar-shaped bodies!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of 1930s Silver Arrow',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_20',
        title: 'Rocket Land Streamliner',
        category: 'Record',
        difficulty: 'Hard',
        funFact: 'Fitted with jet engines on Bonneville salt flats!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Rocket Land Streamliner',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_21',
        title: 'Stadium Super Jumping Truck',
        category: 'Truck',
        difficulty: 'Medium',
        funFact: 'Jumps over metal ramps inside sports stadiums!',
        iconSymbol: '🛻',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Stadium Super Jumping Truck',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_22',
        title: 'Arena Monster Truck Racer',
        category: 'Monster',
        difficulty: 'Medium',
        funFact: 'Crushes old scrap cars under 66-inch tires!',
        iconSymbol: '🛻',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Arena Monster Truck Racer',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_23',
        title: 'Clay Late Model Wedge',
        category: 'Dirt',
        difficulty: 'Hard',
        funFact: 'Wedge-shaped body slices air on slippery dirt!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Clay Late Model Wedge',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_24',
        title: 'Miniature Pocket Racer',
        category: 'Bike',
        difficulty: 'Easy',
        funFact: 'Tiny knee-high motorbikes for kid champions!',
        iconSymbol: '🏍️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Miniature Pocket Racer',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_25',
        title: 'Racing Quad ATV',
        category: 'Off-Road',
        difficulty: 'Medium',
        funFact: 'Four knobby tires powerslide through sandy turns!',
        iconSymbol: '🏍️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Racing Quad ATV',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_26',
        title: 'Track-Only Hypercar GTR',
        category: 'Hypercar',
        difficulty: 'Hard',
        funFact: 'V12 engine roars with thrilling race echoes!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Track-Only Hypercar GTR',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_27',
        title: 'Supermoto Pavement & Dirt',
        category: 'Bike',
        difficulty: 'Medium',
        funFact: 'Races across both asphalt and muddy jumps!',
        iconSymbol: '🏍️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Supermoto Pavement & Dirt',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_28',
        title: 'Snocross Snowmobile Racer',
        category: 'Winter',
        difficulty: 'Medium',
        funFact: 'Rubber tracks launch across snowy race bumps!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Snocross Snowmobile Racer',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_29',
        title: 'Futuristic Anti-Grav Pod',
        category: 'Future',
        difficulty: 'Hard',
        funFact: 'Floats on magnetic tracks at sonic velocity!',
        iconSymbol: '🚀',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of Futuristic Anti-Grav Pod',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      ),
      TracingItem(
        id: 'racing_30',
        title: 'World Solar Challenge Wing',
        category: 'Solar',
        difficulty: 'Medium',
        funFact: 'Slices across the Australian outback on sunlight!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the low aerodynamic body of World Solar Challenge Wing',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.25, 0.58), TracingPoint(0.45, 0.48), TracingPoint(0.7, 0.48), TracingPoint(0.85, 0.54), TracingPoint(0.88, 0.6), TracingPoint(0.15, 0.6)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the high-downforce rear racing wing',
            points: [TracingPoint(0.75, 0.48), TracingPoint(0.75, 0.38), TracingPoint(0.88, 0.38)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ground-hugging front splitter',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.24, 0.62)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the racing slick front tire',
            points: [TracingPoint(0.3, 0.57), TracingPoint(0.335, 0.579), TracingPoint(0.361, 0.605), TracingPoint(0.37, 0.64), TracingPoint(0.361, 0.675), TracingPoint(0.335, 0.701), TracingPoint(0.3, 0.71), TracingPoint(0.265, 0.701), TracingPoint(0.239, 0.675), TracingPoint(0.23, 0.64), TracingPoint(0.239, 0.605), TracingPoint(0.265, 0.579), TracingPoint(0.3, 0.57)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Draw the wide rear driving tire',
            points: [TracingPoint(0.72, 0.57), TracingPoint(0.755, 0.579), TracingPoint(0.781, 0.605), TracingPoint(0.79, 0.64), TracingPoint(0.781, 0.675), TracingPoint(0.755, 0.701), TracingPoint(0.72, 0.71), TracingPoint(0.685, 0.701), TracingPoint(0.659, 0.675), TracingPoint(0.65, 0.64), TracingPoint(0.659, 0.605), TracingPoint(0.685, 0.579), TracingPoint(0.72, 0.57)],
          )
        ],
      )
    ];
  }
}
