import '../models/tracing_item.dart';

class PathTemplates {
  static List<TracingItem> getItems() {
    return [
      TracingItem(
        id: 'car_01',
        title: 'Classic Sedan',
        category: 'Sedan',
        difficulty: 'Easy',
        funFact: 'Sedans are smooth family cars!',
        iconSymbol: '🚗',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Classic Sedan',
            points: [TracingPoint(0.18, 0.52), TracingPoint(0.28, 0.18), TracingPoint(0.72, 0.18), TracingPoint(0.82, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.18, 0.52), TracingPoint(0.82, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_02',
        title: 'Family SUV',
        category: 'SUV',
        difficulty: 'Medium',
        funFact: 'SUVs have tall wheels for camping!',
        iconSymbol: '🚙',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Family SUV',
            points: [TracingPoint(0.15, 0.52), TracingPoint(0.25, 0.13), TracingPoint(0.75, 0.13), TracingPoint(0.85, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.15, 0.52), TracingPoint(0.85, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_03',
        title: 'Speedy Sports Car',
        category: 'Sports',
        difficulty: 'Hard',
        funFact: 'Sports cars are built for swift speed!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Speedy Sports Car',
            points: [TracingPoint(0.2, 0.52), TracingPoint(0.3, 0.23), TracingPoint(0.7, 0.23), TracingPoint(0.8, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.2, 0.52), TracingPoint(0.8, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_04',
        title: 'City Hatchback',
        category: 'Hatchback',
        difficulty: 'Easy',
        funFact: 'Hatchbacks are cozy and easy to park!',
        iconSymbol: '🚗',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the City Hatchback',
            points: [TracingPoint(0.18, 0.52), TracingPoint(0.28, 0.16), TracingPoint(0.72, 0.16), TracingPoint(0.82, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.18, 0.52), TracingPoint(0.82, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_05',
        title: 'Adventure Jeep',
        category: 'Offroad',
        difficulty: 'Medium',
        funFact: 'Jeeps love climbing rocky muddy paths!',
        iconSymbol: '🚙',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Adventure Jeep',
            points: [TracingPoint(0.14, 0.52), TracingPoint(0.24, 0.1), TracingPoint(0.76, 0.1), TracingPoint(0.86, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.14, 0.52), TracingPoint(0.86, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_06',
        title: 'Vintage Roadster',
        category: 'Classic',
        difficulty: 'Hard',
        funFact: 'Vintage cars have shiny silver grilles!',
        iconSymbol: '🚘',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Vintage Roadster',
            points: [TracingPoint(0.17, 0.52), TracingPoint(0.27, 0.2), TracingPoint(0.73, 0.2), TracingPoint(0.83, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.17, 0.52), TracingPoint(0.83, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_07',
        title: 'Grand Prix Racer',
        category: 'Racing',
        difficulty: 'Hard',
        funFact: 'Racers zoom around curved race tracks!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Grand Prix Racer',
            points: [TracingPoint(0.21, 0.52), TracingPoint(0.31, 0.26), TracingPoint(0.69, 0.26), TracingPoint(0.79, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.21, 0.52), TracingPoint(0.79, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_08',
        title: 'Sunny Convertible',
        category: 'Sports',
        difficulty: 'Medium',
        funFact: 'Open the roof and feel the breeze!',
        iconSymbol: '🚗',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Sunny Convertible',
            points: [TracingPoint(0.19, 0.52), TracingPoint(0.29, 0.22), TracingPoint(0.71, 0.22), TracingPoint(0.81, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.19, 0.52), TracingPoint(0.81, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_09',
        title: 'Long Limousine',
        category: 'Luxury',
        difficulty: 'Hard',
        funFact: 'Limousines have comfy leather sofas!',
        iconSymbol: '🚘',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Long Limousine',
            points: [TracingPoint(0.21, 0.52), TracingPoint(0.31, 0.22), TracingPoint(0.69, 0.22), TracingPoint(0.79, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.21, 0.52), TracingPoint(0.79, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_10',
        title: 'Yellow City Taxi',
        category: 'City',
        difficulty: 'Easy',
        funFact: 'Yellow taxis honk beep beep in the city!',
        iconSymbol: '🚕',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Yellow City Taxi',
            points: [TracingPoint(0.17, 0.52), TracingPoint(0.27, 0.16), TracingPoint(0.73, 0.16), TracingPoint(0.83, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.17, 0.52), TracingPoint(0.83, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_11',
        title: 'Police Patrol Car',
        category: 'Service',
        difficulty: 'Medium',
        funFact: 'Police cars flash blue and red lights!',
        iconSymbol: '🚓',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Police Patrol Car',
            points: [TracingPoint(0.16, 0.52), TracingPoint(0.26, 0.14), TracingPoint(0.74, 0.14), TracingPoint(0.84, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.16, 0.52), TracingPoint(0.84, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_12',
        title: 'Emergency Car',
        category: 'Service',
        difficulty: 'Medium',
        funFact: 'Emergency cars rush fast to help people!',
        iconSymbol: '🚑',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Emergency Car',
            points: [TracingPoint(0.15, 0.52), TracingPoint(0.25, 0.13), TracingPoint(0.75, 0.13), TracingPoint(0.85, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.15, 0.52), TracingPoint(0.85, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_13',
        title: 'Tiny Smart Car',
        category: 'Hatchback',
        difficulty: 'Easy',
        funFact: 'Tiny cars can fit in tight parking spots!',
        iconSymbol: '🚗',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Tiny Smart Car',
            points: [TracingPoint(0.15, 0.52), TracingPoint(0.25, 0.13), TracingPoint(0.75, 0.13), TracingPoint(0.85, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.15, 0.52), TracingPoint(0.85, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_14',
        title: 'Roaring Muscle Car',
        category: 'Classic',
        difficulty: 'Hard',
        funFact: 'Muscle cars have powerful roaring engines!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Roaring Muscle Car',
            points: [TracingPoint(0.19, 0.52), TracingPoint(0.29, 0.2), TracingPoint(0.71, 0.2), TracingPoint(0.81, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.19, 0.52), TracingPoint(0.81, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_15',
        title: 'Quiet Electric Car',
        category: 'Modern',
        difficulty: 'Easy',
        funFact: 'Electric cars charge up with green power!',
        iconSymbol: '🚙',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Quiet Electric Car',
            points: [TracingPoint(0.18, 0.52), TracingPoint(0.28, 0.18), TracingPoint(0.72, 0.18), TracingPoint(0.82, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.18, 0.52), TracingPoint(0.82, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_16',
        title: 'Utility Pickup Car',
        category: 'Truck',
        difficulty: 'Medium',
        funFact: 'Pickups carry tools in the open bed!',
        iconSymbol: '🛻',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Utility Pickup Car',
            points: [TracingPoint(0.16, 0.52), TracingPoint(0.26, 0.14), TracingPoint(0.74, 0.14), TracingPoint(0.84, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.16, 0.52), TracingPoint(0.84, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_17',
        title: 'Sporty Coupe',
        category: 'Sports',
        difficulty: 'Medium',
        funFact: 'Coupe cars have two sleek aerodynamic doors!',
        iconSymbol: '🚗',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Sporty Coupe',
            points: [TracingPoint(0.18, 0.52), TracingPoint(0.28, 0.2), TracingPoint(0.72, 0.2), TracingPoint(0.82, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.18, 0.52), TracingPoint(0.82, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_18',
        title: 'Family Station Wagon',
        category: 'Sedan',
        difficulty: 'Medium',
        funFact: 'Wagons have lots of trunk space for bags!',
        iconSymbol: '🚗',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Family Station Wagon',
            points: [TracingPoint(0.17, 0.52), TracingPoint(0.27, 0.16), TracingPoint(0.73, 0.16), TracingPoint(0.83, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.17, 0.52), TracingPoint(0.83, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_19',
        title: 'Bubble Micro Car',
        category: 'City',
        difficulty: 'Easy',
        funFact: 'Micro cars are round like tiny soap bubbles!',
        iconSymbol: '🚘',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Bubble Micro Car',
            points: [TracingPoint(0.15, 0.52), TracingPoint(0.25, 0.13), TracingPoint(0.75, 0.13), TracingPoint(0.85, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.15, 0.52), TracingPoint(0.85, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_20',
        title: 'Flamin\' Hot Rod',
        category: 'Custom',
        difficulty: 'Hard',
        funFact: 'Hot rods have giant chrome engines on top!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Flamin\' Hot Rod',
            points: [TracingPoint(0.19, 0.52), TracingPoint(0.29, 0.22), TracingPoint(0.71, 0.22), TracingPoint(0.81, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.19, 0.52), TracingPoint(0.81, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_21',
        title: 'Muddy Rally Racer',
        category: 'Racing',
        difficulty: 'Hard',
        funFact: 'Rally cars drift across dirt and gravel!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Muddy Rally Racer',
            points: [TracingPoint(0.18, 0.52), TracingPoint(0.28, 0.18), TracingPoint(0.72, 0.18), TracingPoint(0.82, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.18, 0.52), TracingPoint(0.82, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_22',
        title: 'Future Cyber Car',
        category: 'Future',
        difficulty: 'Hard',
        funFact: 'Futuristic cars drive with smart computers!',
        iconSymbol: '🚘',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Future Cyber Car',
            points: [TracingPoint(0.2, 0.52), TracingPoint(0.3, 0.23), TracingPoint(0.7, 0.23), TracingPoint(0.8, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.2, 0.52), TracingPoint(0.8, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_23',
        title: 'Sun Powered Cruiser',
        category: 'Modern',
        difficulty: 'Medium',
        funFact: 'Solar panels soak up sunshine to drive!',
        iconSymbol: '🚗',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Sun Powered Cruiser',
            points: [TracingPoint(0.19, 0.52), TracingPoint(0.29, 0.22), TracingPoint(0.71, 0.22), TracingPoint(0.81, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.19, 0.52), TracingPoint(0.81, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_24',
        title: 'Speedway Dragster',
        category: 'Racing',
        difficulty: 'Hard',
        funFact: 'Dragsters pop parachutes to slow down!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Speedway Dragster',
            points: [TracingPoint(0.23, 0.52), TracingPoint(0.33, 0.28), TracingPoint(0.68, 0.28), TracingPoint(0.78, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.23, 0.52), TracingPoint(0.78, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_25',
        title: 'Dune Buggy Car',
        category: 'Offroad',
        difficulty: 'Medium',
        funFact: 'Dune buggies jump over golden sand dunes!',
        iconSymbol: '🚙',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Dune Buggy Car',
            points: [TracingPoint(0.16, 0.52), TracingPoint(0.26, 0.16), TracingPoint(0.74, 0.16), TracingPoint(0.84, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.16, 0.52), TracingPoint(0.84, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_26',
        title: 'Vintage Wood Wagon',
        category: 'Classic',
        difficulty: 'Medium',
        funFact: 'Woody cars have polished wooden panels!',
        iconSymbol: '🚗',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Vintage Wood Wagon',
            points: [TracingPoint(0.17, 0.52), TracingPoint(0.27, 0.16), TracingPoint(0.73, 0.16), TracingPoint(0.83, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.17, 0.52), TracingPoint(0.83, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_27',
        title: 'Executive Town Car',
        category: 'Luxury',
        difficulty: 'Hard',
        funFact: 'Chauffeurs drive town cars with great care!',
        iconSymbol: '🚘',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Executive Town Car',
            points: [TracingPoint(0.18, 0.52), TracingPoint(0.28, 0.2), TracingPoint(0.72, 0.2), TracingPoint(0.82, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.18, 0.52), TracingPoint(0.82, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_28',
        title: 'Retro Mini Beetle',
        category: 'Classic',
        difficulty: 'Easy',
        funFact: 'Beetle cars have happy smiling headlights!',
        iconSymbol: '🚗',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Retro Mini Beetle',
            points: [TracingPoint(0.16, 0.52), TracingPoint(0.26, 0.14), TracingPoint(0.74, 0.14), TracingPoint(0.84, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.16, 0.52), TracingPoint(0.84, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_29',
        title: 'Neon Night Speedster',
        category: 'Sports',
        difficulty: 'Hard',
        funFact: 'Glows under starry city streetlamps!',
        iconSymbol: '🏎️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Neon Night Speedster',
            points: [TracingPoint(0.19, 0.52), TracingPoint(0.29, 0.22), TracingPoint(0.71, 0.22), TracingPoint(0.81, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.19, 0.52), TracingPoint(0.81, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'car_30',
        title: 'Eco Hybrid Runner',
        category: 'Modern',
        difficulty: 'Easy',
        funFact: 'Hybrids use both gas and electric batteries!',
        iconSymbol: '🚙',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the roof of the Eco Hybrid Runner',
            points: [TracingPoint(0.17, 0.52), TracingPoint(0.27, 0.18), TracingPoint(0.73, 0.18), TracingPoint(0.83, 0.52)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the car body and bumpers',
            points: [TracingPoint(0.12, 0.65), TracingPoint(0.12, 0.52), TracingPoint(0.17, 0.52), TracingPoint(0.83, 0.52), TracingPoint(0.88, 0.52), TracingPoint(0.88, 0.65), TracingPoint(0.78, 0.65)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Draw the front wheel in a circle',
            points: [TracingPoint(0.3, 0.6), TracingPoint(0.34, 0.611), TracingPoint(0.369, 0.64), TracingPoint(0.38, 0.68), TracingPoint(0.369, 0.72), TracingPoint(0.34, 0.749), TracingPoint(0.3, 0.76), TracingPoint(0.26, 0.749), TracingPoint(0.231, 0.72), TracingPoint(0.22, 0.68), TracingPoint(0.231, 0.64), TracingPoint(0.26, 0.611), TracingPoint(0.3, 0.6)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Draw the rear wheel to get rolling',
            points: [TracingPoint(0.7, 0.6), TracingPoint(0.74, 0.611), TracingPoint(0.769, 0.64), TracingPoint(0.78, 0.68), TracingPoint(0.769, 0.72), TracingPoint(0.74, 0.749), TracingPoint(0.7, 0.76), TracingPoint(0.66, 0.749), TracingPoint(0.631, 0.72), TracingPoint(0.62, 0.68), TracingPoint(0.631, 0.64), TracingPoint(0.66, 0.611), TracingPoint(0.7, 0.6)],
          )
        ],
      )
    ];
  }
}
