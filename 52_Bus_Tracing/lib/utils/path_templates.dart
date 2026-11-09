import '../models/tracing_item.dart';

class PathTemplates {
  static List<TracingItem> getItems() {
    return [
      TracingItem(
        id: 'bus_01',
        title: 'Yellow School Bus',
        category: 'School',
        difficulty: 'Easy',
        funFact: 'School buses take kids safely to school!',
        iconSymbol: '🚌',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Yellow School Bus',
            points: [TracingPoint(0.16, 0.58), TracingPoint(0.16, 0.23), TracingPoint(0.84, 0.23), TracingPoint(0.84, 0.58), TracingPoint(0.16, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.21, 0.31), TracingPoint(0.79, 0.31)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.33, 0.59), TracingPoint(0.365, 0.599), TracingPoint(0.391, 0.625), TracingPoint(0.4, 0.66), TracingPoint(0.391, 0.695), TracingPoint(0.365, 0.721), TracingPoint(0.33, 0.73), TracingPoint(0.295, 0.721), TracingPoint(0.269, 0.695), TracingPoint(0.26, 0.66), TracingPoint(0.269, 0.625), TracingPoint(0.295, 0.599), TracingPoint(0.33, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.67, 0.59), TracingPoint(0.705, 0.599), TracingPoint(0.731, 0.625), TracingPoint(0.74, 0.66), TracingPoint(0.731, 0.695), TracingPoint(0.705, 0.721), TracingPoint(0.67, 0.73), TracingPoint(0.635, 0.721), TracingPoint(0.609, 0.695), TracingPoint(0.6, 0.66), TracingPoint(0.609, 0.625), TracingPoint(0.635, 0.599), TracingPoint(0.67, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_02',
        title: 'City Transit Bus',
        category: 'Transit',
        difficulty: 'Medium',
        funFact: 'City buses stop at colorful bus shelters!',
        iconSymbol: '🚍',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the City Transit Bus',
            points: [TracingPoint(0.14, 0.58), TracingPoint(0.14, 0.24), TracingPoint(0.86, 0.24), TracingPoint(0.86, 0.58), TracingPoint(0.14, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.19, 0.32), TracingPoint(0.81, 0.32)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.32, 0.59), TracingPoint(0.355, 0.599), TracingPoint(0.381, 0.625), TracingPoint(0.39, 0.66), TracingPoint(0.381, 0.695), TracingPoint(0.355, 0.721), TracingPoint(0.32, 0.73), TracingPoint(0.285, 0.721), TracingPoint(0.259, 0.695), TracingPoint(0.25, 0.66), TracingPoint(0.259, 0.625), TracingPoint(0.285, 0.599), TracingPoint(0.32, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.68, 0.59), TracingPoint(0.715, 0.599), TracingPoint(0.741, 0.625), TracingPoint(0.75, 0.66), TracingPoint(0.741, 0.695), TracingPoint(0.715, 0.721), TracingPoint(0.68, 0.73), TracingPoint(0.645, 0.721), TracingPoint(0.619, 0.695), TracingPoint(0.61, 0.66), TracingPoint(0.619, 0.625), TracingPoint(0.645, 0.599), TracingPoint(0.68, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_03',
        title: 'Double Decker Bus',
        category: 'City',
        difficulty: 'Hard',
        funFact: 'You can sit up top to see the skyscrapers!',
        iconSymbol: '🚍',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Double Decker Bus',
            points: [TracingPoint(0.17, 0.58), TracingPoint(0.17, 0.13), TracingPoint(0.82, 0.13), TracingPoint(0.82, 0.58), TracingPoint(0.17, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.22, 0.21), TracingPoint(0.77, 0.21)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.33, 0.59), TracingPoint(0.365, 0.599), TracingPoint(0.391, 0.625), TracingPoint(0.4, 0.66), TracingPoint(0.391, 0.695), TracingPoint(0.365, 0.721), TracingPoint(0.33, 0.73), TracingPoint(0.295, 0.721), TracingPoint(0.269, 0.695), TracingPoint(0.26, 0.66), TracingPoint(0.269, 0.625), TracingPoint(0.295, 0.599), TracingPoint(0.33, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.66, 0.59), TracingPoint(0.695, 0.599), TracingPoint(0.721, 0.625), TracingPoint(0.73, 0.66), TracingPoint(0.721, 0.695), TracingPoint(0.695, 0.721), TracingPoint(0.66, 0.73), TracingPoint(0.625, 0.721), TracingPoint(0.599, 0.695), TracingPoint(0.59, 0.66), TracingPoint(0.599, 0.625), TracingPoint(0.625, 0.599), TracingPoint(0.66, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_04',
        title: 'Cheerful Mini Bus',
        category: 'Mini',
        difficulty: 'Easy',
        funFact: 'Mini buses take small groups on fun trips!',
        iconSymbol: '🚐',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Cheerful Mini Bus',
            points: [TracingPoint(0.22, 0.58), TracingPoint(0.22, 0.26), TracingPoint(0.78, 0.26), TracingPoint(0.78, 0.58), TracingPoint(0.22, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.27, 0.34), TracingPoint(0.73, 0.34)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.36, 0.59), TracingPoint(0.395, 0.599), TracingPoint(0.421, 0.625), TracingPoint(0.43, 0.66), TracingPoint(0.421, 0.695), TracingPoint(0.395, 0.721), TracingPoint(0.36, 0.73), TracingPoint(0.325, 0.721), TracingPoint(0.299, 0.695), TracingPoint(0.29, 0.66), TracingPoint(0.299, 0.625), TracingPoint(0.325, 0.599), TracingPoint(0.36, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.64, 0.59), TracingPoint(0.675, 0.599), TracingPoint(0.701, 0.625), TracingPoint(0.71, 0.66), TracingPoint(0.701, 0.695), TracingPoint(0.675, 0.721), TracingPoint(0.64, 0.73), TracingPoint(0.605, 0.721), TracingPoint(0.579, 0.695), TracingPoint(0.57, 0.66), TracingPoint(0.579, 0.625), TracingPoint(0.605, 0.599), TracingPoint(0.64, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_05',
        title: 'Bendy Accordion Bus',
        category: 'Transit',
        difficulty: 'Hard',
        funFact: 'Articulated buses bend smoothly in the middle!',
        iconSymbol: '🚎',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Bendy Accordion Bus',
            points: [TracingPoint(0.1, 0.58), TracingPoint(0.1, 0.26), TracingPoint(0.9, 0.26), TracingPoint(0.9, 0.58), TracingPoint(0.1, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.15, 0.34), TracingPoint(0.85, 0.34)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.3, 0.59), TracingPoint(0.335, 0.599), TracingPoint(0.361, 0.625), TracingPoint(0.37, 0.66), TracingPoint(0.361, 0.695), TracingPoint(0.335, 0.721), TracingPoint(0.3, 0.73), TracingPoint(0.265, 0.721), TracingPoint(0.239, 0.695), TracingPoint(0.23, 0.66), TracingPoint(0.239, 0.625), TracingPoint(0.265, 0.599), TracingPoint(0.3, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.7, 0.59), TracingPoint(0.735, 0.599), TracingPoint(0.761, 0.625), TracingPoint(0.77, 0.66), TracingPoint(0.761, 0.695), TracingPoint(0.735, 0.721), TracingPoint(0.7, 0.73), TracingPoint(0.665, 0.721), TracingPoint(0.639, 0.695), TracingPoint(0.63, 0.66), TracingPoint(0.639, 0.625), TracingPoint(0.665, 0.599), TracingPoint(0.7, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_06',
        title: 'Airport Shuttle Bus',
        category: 'Airport',
        difficulty: 'Medium',
        funFact: 'Takes travelers right to their airplane gates!',
        iconSymbol: '🚌',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Airport Shuttle Bus',
            points: [TracingPoint(0.18, 0.58), TracingPoint(0.18, 0.26), TracingPoint(0.82, 0.26), TracingPoint(0.82, 0.58), TracingPoint(0.18, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.23, 0.34), TracingPoint(0.77, 0.34)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.34, 0.59), TracingPoint(0.375, 0.599), TracingPoint(0.401, 0.625), TracingPoint(0.41, 0.66), TracingPoint(0.401, 0.695), TracingPoint(0.375, 0.721), TracingPoint(0.34, 0.73), TracingPoint(0.305, 0.721), TracingPoint(0.279, 0.695), TracingPoint(0.27, 0.66), TracingPoint(0.279, 0.625), TracingPoint(0.305, 0.599), TracingPoint(0.34, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.66, 0.59), TracingPoint(0.695, 0.599), TracingPoint(0.721, 0.625), TracingPoint(0.73, 0.66), TracingPoint(0.721, 0.695), TracingPoint(0.695, 0.721), TracingPoint(0.66, 0.73), TracingPoint(0.625, 0.721), TracingPoint(0.599, 0.695), TracingPoint(0.59, 0.66), TracingPoint(0.599, 0.625), TracingPoint(0.625, 0.599), TracingPoint(0.66, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_07',
        title: 'Scenic Tour Coach',
        category: 'Tour',
        difficulty: 'Medium',
        funFact: 'Tour buses have big tinted windows for viewing!',
        iconSymbol: '🚌',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Scenic Tour Coach',
            points: [TracingPoint(0.15, 0.58), TracingPoint(0.15, 0.23), TracingPoint(0.85, 0.23), TracingPoint(0.85, 0.58), TracingPoint(0.15, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.2, 0.31), TracingPoint(0.8, 0.31)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.32, 0.59), TracingPoint(0.355, 0.599), TracingPoint(0.381, 0.625), TracingPoint(0.39, 0.66), TracingPoint(0.381, 0.695), TracingPoint(0.355, 0.721), TracingPoint(0.32, 0.73), TracingPoint(0.285, 0.721), TracingPoint(0.259, 0.695), TracingPoint(0.25, 0.66), TracingPoint(0.259, 0.625), TracingPoint(0.285, 0.599), TracingPoint(0.32, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.68, 0.59), TracingPoint(0.715, 0.599), TracingPoint(0.741, 0.625), TracingPoint(0.75, 0.66), TracingPoint(0.741, 0.695), TracingPoint(0.715, 0.721), TracingPoint(0.68, 0.73), TracingPoint(0.645, 0.721), TracingPoint(0.619, 0.695), TracingPoint(0.61, 0.66), TracingPoint(0.619, 0.625), TracingPoint(0.645, 0.599), TracingPoint(0.68, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_08',
        title: 'Clean Electric Bus',
        category: 'Green',
        difficulty: 'Easy',
        funFact: 'Quiet and clean with zero exhaust fumes!',
        iconSymbol: '🚍',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Clean Electric Bus',
            points: [TracingPoint(0.16, 0.58), TracingPoint(0.16, 0.24), TracingPoint(0.84, 0.24), TracingPoint(0.84, 0.58), TracingPoint(0.16, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.21, 0.32), TracingPoint(0.79, 0.32)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.33, 0.59), TracingPoint(0.365, 0.599), TracingPoint(0.391, 0.625), TracingPoint(0.4, 0.66), TracingPoint(0.391, 0.695), TracingPoint(0.365, 0.721), TracingPoint(0.33, 0.73), TracingPoint(0.295, 0.721), TracingPoint(0.269, 0.695), TracingPoint(0.26, 0.66), TracingPoint(0.269, 0.625), TracingPoint(0.295, 0.599), TracingPoint(0.33, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.67, 0.59), TracingPoint(0.705, 0.599), TracingPoint(0.731, 0.625), TracingPoint(0.74, 0.66), TracingPoint(0.731, 0.695), TracingPoint(0.705, 0.721), TracingPoint(0.67, 0.73), TracingPoint(0.635, 0.721), TracingPoint(0.609, 0.695), TracingPoint(0.6, 0.66), TracingPoint(0.609, 0.625), TracingPoint(0.635, 0.599), TracingPoint(0.67, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_09',
        title: 'Overhead Trolley Bus',
        category: 'Transit',
        difficulty: 'Hard',
        funFact: 'Trolley buses connect to overhead electric wires!',
        iconSymbol: '🚎',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Overhead Trolley Bus',
            points: [TracingPoint(0.16, 0.58), TracingPoint(0.16, 0.22), TracingPoint(0.84, 0.22), TracingPoint(0.84, 0.58), TracingPoint(0.16, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.21, 0.3), TracingPoint(0.79, 0.3)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.33, 0.59), TracingPoint(0.365, 0.599), TracingPoint(0.391, 0.625), TracingPoint(0.4, 0.66), TracingPoint(0.391, 0.695), TracingPoint(0.365, 0.721), TracingPoint(0.33, 0.73), TracingPoint(0.295, 0.721), TracingPoint(0.269, 0.695), TracingPoint(0.26, 0.66), TracingPoint(0.269, 0.625), TracingPoint(0.295, 0.599), TracingPoint(0.33, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.67, 0.59), TracingPoint(0.705, 0.599), TracingPoint(0.731, 0.625), TracingPoint(0.74, 0.66), TracingPoint(0.731, 0.695), TracingPoint(0.705, 0.721), TracingPoint(0.67, 0.73), TracingPoint(0.635, 0.721), TracingPoint(0.609, 0.695), TracingPoint(0.6, 0.66), TracingPoint(0.609, 0.625), TracingPoint(0.635, 0.599), TracingPoint(0.67, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_10',
        title: 'Vintage Country Bus',
        category: 'Classic',
        difficulty: 'Medium',
        funFact: 'Old style buses have round chrome headlights!',
        iconSymbol: '🚌',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Vintage Country Bus',
            points: [TracingPoint(0.17, 0.58), TracingPoint(0.17, 0.22), TracingPoint(0.83, 0.22), TracingPoint(0.83, 0.58), TracingPoint(0.17, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.22, 0.3), TracingPoint(0.78, 0.3)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.34, 0.59), TracingPoint(0.375, 0.599), TracingPoint(0.401, 0.625), TracingPoint(0.41, 0.66), TracingPoint(0.401, 0.695), TracingPoint(0.375, 0.721), TracingPoint(0.34, 0.73), TracingPoint(0.305, 0.721), TracingPoint(0.279, 0.695), TracingPoint(0.27, 0.66), TracingPoint(0.279, 0.625), TracingPoint(0.305, 0.599), TracingPoint(0.34, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.66, 0.59), TracingPoint(0.695, 0.599), TracingPoint(0.721, 0.625), TracingPoint(0.73, 0.66), TracingPoint(0.721, 0.695), TracingPoint(0.695, 0.721), TracingPoint(0.66, 0.73), TracingPoint(0.625, 0.721), TracingPoint(0.599, 0.695), TracingPoint(0.59, 0.66), TracingPoint(0.599, 0.625), TracingPoint(0.625, 0.599), TracingPoint(0.66, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_11',
        title: 'Wild Safari Explorer',
        category: 'Adventure',
        difficulty: 'Hard',
        funFact: 'Has open bars to look at friendly giraffes!',
        iconSymbol: '🚐',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Wild Safari Explorer',
            points: [TracingPoint(0.18, 0.58), TracingPoint(0.18, 0.2), TracingPoint(0.82, 0.2), TracingPoint(0.82, 0.58), TracingPoint(0.18, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.23, 0.28), TracingPoint(0.77, 0.28)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.34, 0.59), TracingPoint(0.375, 0.599), TracingPoint(0.401, 0.625), TracingPoint(0.41, 0.66), TracingPoint(0.401, 0.695), TracingPoint(0.375, 0.721), TracingPoint(0.34, 0.73), TracingPoint(0.305, 0.721), TracingPoint(0.279, 0.695), TracingPoint(0.27, 0.66), TracingPoint(0.279, 0.625), TracingPoint(0.305, 0.599), TracingPoint(0.34, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.66, 0.59), TracingPoint(0.695, 0.599), TracingPoint(0.721, 0.625), TracingPoint(0.73, 0.66), TracingPoint(0.721, 0.695), TracingPoint(0.695, 0.721), TracingPoint(0.66, 0.73), TracingPoint(0.625, 0.721), TracingPoint(0.599, 0.695), TracingPoint(0.59, 0.66), TracingPoint(0.599, 0.625), TracingPoint(0.625, 0.599), TracingPoint(0.66, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_12',
        title: 'Cozy Camper Bus',
        category: 'Travel',
        difficulty: 'Medium',
        funFact: 'Pack your sleeping bag and camp under stars!',
        iconSymbol: '🚐',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Cozy Camper Bus',
            points: [TracingPoint(0.19, 0.58), TracingPoint(0.19, 0.22), TracingPoint(0.81, 0.22), TracingPoint(0.81, 0.58), TracingPoint(0.19, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.24, 0.3), TracingPoint(0.76, 0.3)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.34, 0.59), TracingPoint(0.375, 0.599), TracingPoint(0.401, 0.625), TracingPoint(0.41, 0.66), TracingPoint(0.401, 0.695), TracingPoint(0.375, 0.721), TracingPoint(0.34, 0.73), TracingPoint(0.305, 0.721), TracingPoint(0.279, 0.695), TracingPoint(0.27, 0.66), TracingPoint(0.279, 0.625), TracingPoint(0.305, 0.599), TracingPoint(0.34, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.66, 0.59), TracingPoint(0.695, 0.599), TracingPoint(0.721, 0.625), TracingPoint(0.73, 0.66), TracingPoint(0.721, 0.695), TracingPoint(0.695, 0.721), TracingPoint(0.66, 0.73), TracingPoint(0.625, 0.721), TracingPoint(0.599, 0.695), TracingPoint(0.59, 0.66), TracingPoint(0.599, 0.625), TracingPoint(0.625, 0.599), TracingPoint(0.66, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_13',
        title: 'Express Highway Coach',
        category: 'Coach',
        difficulty: 'Hard',
        funFact: 'Luxury seats with reclining backrests!',
        iconSymbol: '🚌',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Express Highway Coach',
            points: [TracingPoint(0.13, 0.58), TracingPoint(0.13, 0.24), TracingPoint(0.87, 0.24), TracingPoint(0.87, 0.58), TracingPoint(0.13, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.18, 0.32), TracingPoint(0.82, 0.32)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.32, 0.59), TracingPoint(0.355, 0.599), TracingPoint(0.381, 0.625), TracingPoint(0.39, 0.66), TracingPoint(0.381, 0.695), TracingPoint(0.355, 0.721), TracingPoint(0.32, 0.73), TracingPoint(0.285, 0.721), TracingPoint(0.259, 0.695), TracingPoint(0.25, 0.66), TracingPoint(0.259, 0.625), TracingPoint(0.285, 0.599), TracingPoint(0.32, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.69, 0.59), TracingPoint(0.725, 0.599), TracingPoint(0.751, 0.625), TracingPoint(0.76, 0.66), TracingPoint(0.751, 0.695), TracingPoint(0.725, 0.721), TracingPoint(0.69, 0.73), TracingPoint(0.655, 0.721), TracingPoint(0.629, 0.695), TracingPoint(0.62, 0.66), TracingPoint(0.629, 0.625), TracingPoint(0.655, 0.599), TracingPoint(0.69, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_14',
        title: 'Open Top Sightseer',
        category: 'Tour',
        difficulty: 'Medium',
        funFact: 'Feel the sunshine on the windy upper deck!',
        iconSymbol: '🚍',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Open Top Sightseer',
            points: [TracingPoint(0.16, 0.58), TracingPoint(0.16, 0.16), TracingPoint(0.84, 0.16), TracingPoint(0.84, 0.58), TracingPoint(0.16, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.21, 0.24), TracingPoint(0.79, 0.24)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.33, 0.59), TracingPoint(0.365, 0.599), TracingPoint(0.391, 0.625), TracingPoint(0.4, 0.66), TracingPoint(0.391, 0.695), TracingPoint(0.365, 0.721), TracingPoint(0.33, 0.73), TracingPoint(0.295, 0.721), TracingPoint(0.269, 0.695), TracingPoint(0.26, 0.66), TracingPoint(0.269, 0.625), TracingPoint(0.295, 0.599), TracingPoint(0.33, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.67, 0.59), TracingPoint(0.705, 0.599), TracingPoint(0.731, 0.625), TracingPoint(0.74, 0.66), TracingPoint(0.731, 0.695), TracingPoint(0.705, 0.721), TracingPoint(0.67, 0.73), TracingPoint(0.635, 0.721), TracingPoint(0.609, 0.695), TracingPoint(0.6, 0.66), TracingPoint(0.609, 0.625), TracingPoint(0.635, 0.599), TracingPoint(0.67, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_15',
        title: 'Celebration Party Bus',
        category: 'Fun',
        difficulty: 'Hard',
        funFact: 'Plays cheerful tunes and has disco lights!',
        iconSymbol: '🚌',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Celebration Party Bus',
            points: [TracingPoint(0.15, 0.58), TracingPoint(0.15, 0.22), TracingPoint(0.85, 0.22), TracingPoint(0.85, 0.58), TracingPoint(0.15, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.2, 0.3), TracingPoint(0.8, 0.3)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.32, 0.59), TracingPoint(0.355, 0.599), TracingPoint(0.381, 0.625), TracingPoint(0.39, 0.66), TracingPoint(0.381, 0.695), TracingPoint(0.355, 0.721), TracingPoint(0.32, 0.73), TracingPoint(0.285, 0.721), TracingPoint(0.259, 0.695), TracingPoint(0.25, 0.66), TracingPoint(0.259, 0.625), TracingPoint(0.285, 0.599), TracingPoint(0.32, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.68, 0.59), TracingPoint(0.715, 0.599), TracingPoint(0.741, 0.625), TracingPoint(0.75, 0.66), TracingPoint(0.741, 0.695), TracingPoint(0.715, 0.721), TracingPoint(0.68, 0.73), TracingPoint(0.645, 0.721), TracingPoint(0.619, 0.695), TracingPoint(0.61, 0.66), TracingPoint(0.619, 0.625), TracingPoint(0.645, 0.599), TracingPoint(0.68, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_16',
        title: 'Village Commuter',
        category: 'Local',
        difficulty: 'Easy',
        funFact: 'Connects farm villages to the lively town market!',
        iconSymbol: '🚐',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Village Commuter',
            points: [TracingPoint(0.22, 0.58), TracingPoint(0.22, 0.26), TracingPoint(0.78, 0.26), TracingPoint(0.78, 0.58), TracingPoint(0.22, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.27, 0.34), TracingPoint(0.73, 0.34)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.36, 0.59), TracingPoint(0.395, 0.599), TracingPoint(0.421, 0.625), TracingPoint(0.43, 0.66), TracingPoint(0.421, 0.695), TracingPoint(0.395, 0.721), TracingPoint(0.36, 0.73), TracingPoint(0.325, 0.721), TracingPoint(0.299, 0.695), TracingPoint(0.29, 0.66), TracingPoint(0.299, 0.625), TracingPoint(0.325, 0.599), TracingPoint(0.36, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.64, 0.59), TracingPoint(0.675, 0.599), TracingPoint(0.701, 0.625), TracingPoint(0.71, 0.66), TracingPoint(0.701, 0.695), TracingPoint(0.675, 0.721), TracingPoint(0.64, 0.73), TracingPoint(0.605, 0.721), TracingPoint(0.579, 0.695), TracingPoint(0.57, 0.66), TracingPoint(0.579, 0.625), TracingPoint(0.605, 0.599), TracingPoint(0.64, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_17',
        title: 'Intercity Express',
        category: 'Coach',
        difficulty: 'Medium',
        funFact: 'Connects big cities across long highways!',
        iconSymbol: '🚌',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Intercity Express',
            points: [TracingPoint(0.14, 0.58), TracingPoint(0.14, 0.24), TracingPoint(0.86, 0.24), TracingPoint(0.86, 0.58), TracingPoint(0.14, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.19, 0.32), TracingPoint(0.81, 0.32)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.32, 0.59), TracingPoint(0.355, 0.599), TracingPoint(0.381, 0.625), TracingPoint(0.39, 0.66), TracingPoint(0.381, 0.695), TracingPoint(0.355, 0.721), TracingPoint(0.32, 0.73), TracingPoint(0.285, 0.721), TracingPoint(0.259, 0.695), TracingPoint(0.25, 0.66), TracingPoint(0.259, 0.625), TracingPoint(0.285, 0.599), TracingPoint(0.32, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.68, 0.59), TracingPoint(0.715, 0.599), TracingPoint(0.741, 0.625), TracingPoint(0.75, 0.66), TracingPoint(0.741, 0.695), TracingPoint(0.715, 0.721), TracingPoint(0.68, 0.73), TracingPoint(0.645, 0.721), TracingPoint(0.619, 0.695), TracingPoint(0.61, 0.66), TracingPoint(0.619, 0.625), TracingPoint(0.645, 0.599), TracingPoint(0.68, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_18',
        title: 'Mountain Pass Climber',
        category: 'Travel',
        difficulty: 'Hard',
        funFact: 'Has powerful brakes to climb steep alpine roads!',
        iconSymbol: '🚌',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Mountain Pass Climber',
            points: [TracingPoint(0.17, 0.58), TracingPoint(0.17, 0.22), TracingPoint(0.83, 0.22), TracingPoint(0.83, 0.58), TracingPoint(0.17, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.22, 0.3), TracingPoint(0.78, 0.3)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.34, 0.59), TracingPoint(0.375, 0.599), TracingPoint(0.401, 0.625), TracingPoint(0.41, 0.66), TracingPoint(0.401, 0.695), TracingPoint(0.375, 0.721), TracingPoint(0.34, 0.73), TracingPoint(0.305, 0.721), TracingPoint(0.279, 0.695), TracingPoint(0.27, 0.66), TracingPoint(0.279, 0.625), TracingPoint(0.305, 0.599), TracingPoint(0.34, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.66, 0.59), TracingPoint(0.695, 0.599), TracingPoint(0.721, 0.625), TracingPoint(0.73, 0.66), TracingPoint(0.721, 0.695), TracingPoint(0.695, 0.721), TracingPoint(0.66, 0.73), TracingPoint(0.625, 0.721), TracingPoint(0.599, 0.695), TracingPoint(0.59, 0.66), TracingPoint(0.599, 0.625), TracingPoint(0.625, 0.599), TracingPoint(0.66, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_19',
        title: 'Night Owl Transit',
        category: 'Night',
        difficulty: 'Medium',
        funFact: 'Keeps riding through the quiet city night!',
        iconSymbol: '🚍',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Night Owl Transit',
            points: [TracingPoint(0.15, 0.58), TracingPoint(0.15, 0.23), TracingPoint(0.85, 0.23), TracingPoint(0.85, 0.58), TracingPoint(0.15, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.2, 0.31), TracingPoint(0.8, 0.31)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.32, 0.59), TracingPoint(0.355, 0.599), TracingPoint(0.381, 0.625), TracingPoint(0.39, 0.66), TracingPoint(0.381, 0.695), TracingPoint(0.355, 0.721), TracingPoint(0.32, 0.73), TracingPoint(0.285, 0.721), TracingPoint(0.259, 0.695), TracingPoint(0.25, 0.66), TracingPoint(0.259, 0.625), TracingPoint(0.285, 0.599), TracingPoint(0.32, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.68, 0.59), TracingPoint(0.715, 0.599), TracingPoint(0.741, 0.625), TracingPoint(0.75, 0.66), TracingPoint(0.741, 0.695), TracingPoint(0.715, 0.721), TracingPoint(0.68, 0.73), TracingPoint(0.645, 0.721), TracingPoint(0.619, 0.695), TracingPoint(0.61, 0.66), TracingPoint(0.619, 0.625), TracingPoint(0.645, 0.599), TracingPoint(0.68, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_20',
        title: 'Jetport Terminal Bus',
        category: 'Airport',
        difficulty: 'Easy',
        funFact: 'Wide doors for quick hop-on and hop-off!',
        iconSymbol: '🚌',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Jetport Terminal Bus',
            points: [TracingPoint(0.16, 0.58), TracingPoint(0.16, 0.26), TracingPoint(0.84, 0.26), TracingPoint(0.84, 0.58), TracingPoint(0.16, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.21, 0.34), TracingPoint(0.79, 0.34)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.33, 0.59), TracingPoint(0.365, 0.599), TracingPoint(0.391, 0.625), TracingPoint(0.4, 0.66), TracingPoint(0.391, 0.695), TracingPoint(0.365, 0.721), TracingPoint(0.33, 0.73), TracingPoint(0.295, 0.721), TracingPoint(0.269, 0.695), TracingPoint(0.26, 0.66), TracingPoint(0.269, 0.625), TracingPoint(0.295, 0.599), TracingPoint(0.33, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.67, 0.59), TracingPoint(0.705, 0.599), TracingPoint(0.731, 0.625), TracingPoint(0.74, 0.66), TracingPoint(0.731, 0.695), TracingPoint(0.705, 0.721), TracingPoint(0.67, 0.73), TracingPoint(0.635, 0.721), TracingPoint(0.609, 0.695), TracingPoint(0.6, 0.66), TracingPoint(0.609, 0.625), TracingPoint(0.635, 0.599), TracingPoint(0.67, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_21',
        title: 'Solar Powered Coach',
        category: 'Green',
        difficulty: 'Medium',
        funFact: 'Solar roofs produce clean natural battery charge!',
        iconSymbol: '🚍',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Solar Powered Coach',
            points: [TracingPoint(0.15, 0.58), TracingPoint(0.15, 0.23), TracingPoint(0.85, 0.23), TracingPoint(0.85, 0.58), TracingPoint(0.15, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.2, 0.31), TracingPoint(0.8, 0.31)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.32, 0.59), TracingPoint(0.355, 0.599), TracingPoint(0.381, 0.625), TracingPoint(0.39, 0.66), TracingPoint(0.381, 0.695), TracingPoint(0.355, 0.721), TracingPoint(0.32, 0.73), TracingPoint(0.285, 0.721), TracingPoint(0.259, 0.695), TracingPoint(0.25, 0.66), TracingPoint(0.259, 0.625), TracingPoint(0.285, 0.599), TracingPoint(0.32, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.68, 0.59), TracingPoint(0.715, 0.599), TracingPoint(0.741, 0.625), TracingPoint(0.75, 0.66), TracingPoint(0.741, 0.695), TracingPoint(0.715, 0.721), TracingPoint(0.68, 0.73), TracingPoint(0.645, 0.721), TracingPoint(0.619, 0.695), TracingPoint(0.61, 0.66), TracingPoint(0.619, 0.625), TracingPoint(0.645, 0.599), TracingPoint(0.68, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_22',
        title: 'Grand Hotel Shuttle',
        category: 'Hotel',
        difficulty: 'Easy',
        funFact: 'Welcomes visitors with friendly warm drivers!',
        iconSymbol: '🚐',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Grand Hotel Shuttle',
            points: [TracingPoint(0.2, 0.58), TracingPoint(0.2, 0.24), TracingPoint(0.8, 0.24), TracingPoint(0.8, 0.58), TracingPoint(0.2, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.25, 0.32), TracingPoint(0.75, 0.32)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.35, 0.59), TracingPoint(0.385, 0.599), TracingPoint(0.411, 0.625), TracingPoint(0.42, 0.66), TracingPoint(0.411, 0.695), TracingPoint(0.385, 0.721), TracingPoint(0.35, 0.73), TracingPoint(0.315, 0.721), TracingPoint(0.289, 0.695), TracingPoint(0.28, 0.66), TracingPoint(0.289, 0.625), TracingPoint(0.315, 0.599), TracingPoint(0.35, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.65, 0.59), TracingPoint(0.685, 0.599), TracingPoint(0.711, 0.625), TracingPoint(0.72, 0.66), TracingPoint(0.711, 0.695), TracingPoint(0.685, 0.721), TracingPoint(0.65, 0.73), TracingPoint(0.615, 0.721), TracingPoint(0.589, 0.695), TracingPoint(0.58, 0.66), TracingPoint(0.589, 0.625), TracingPoint(0.615, 0.599), TracingPoint(0.65, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_23',
        title: 'Eco Biodiesel Bus',
        category: 'Green',
        difficulty: 'Easy',
        funFact: 'Runs on recycled plant vegetable oils!',
        iconSymbol: '🚌',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Eco Biodiesel Bus',
            points: [TracingPoint(0.16, 0.58), TracingPoint(0.16, 0.23), TracingPoint(0.84, 0.23), TracingPoint(0.84, 0.58), TracingPoint(0.16, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.21, 0.31), TracingPoint(0.79, 0.31)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.33, 0.59), TracingPoint(0.365, 0.599), TracingPoint(0.391, 0.625), TracingPoint(0.4, 0.66), TracingPoint(0.391, 0.695), TracingPoint(0.365, 0.721), TracingPoint(0.33, 0.73), TracingPoint(0.295, 0.721), TracingPoint(0.269, 0.695), TracingPoint(0.26, 0.66), TracingPoint(0.269, 0.625), TracingPoint(0.295, 0.599), TracingPoint(0.33, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.67, 0.59), TracingPoint(0.705, 0.599), TracingPoint(0.731, 0.625), TracingPoint(0.74, 0.66), TracingPoint(0.731, 0.695), TracingPoint(0.705, 0.721), TracingPoint(0.67, 0.73), TracingPoint(0.635, 0.721), TracingPoint(0.609, 0.695), TracingPoint(0.6, 0.66), TracingPoint(0.609, 0.625), TracingPoint(0.635, 0.599), TracingPoint(0.67, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_24',
        title: 'San Fran Cable Bus',
        category: 'Classic',
        difficulty: 'Hard',
        funFact: 'Climbs steep historic hills with ringing bells!',
        iconSymbol: '🚎',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the San Fran Cable Bus',
            points: [TracingPoint(0.17, 0.58), TracingPoint(0.17, 0.2), TracingPoint(0.82, 0.2), TracingPoint(0.82, 0.58), TracingPoint(0.17, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.22, 0.28), TracingPoint(0.77, 0.28)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.33, 0.59), TracingPoint(0.365, 0.599), TracingPoint(0.391, 0.625), TracingPoint(0.4, 0.66), TracingPoint(0.391, 0.695), TracingPoint(0.365, 0.721), TracingPoint(0.33, 0.73), TracingPoint(0.295, 0.721), TracingPoint(0.269, 0.695), TracingPoint(0.26, 0.66), TracingPoint(0.269, 0.625), TracingPoint(0.295, 0.599), TracingPoint(0.33, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.66, 0.59), TracingPoint(0.695, 0.599), TracingPoint(0.721, 0.625), TracingPoint(0.73, 0.66), TracingPoint(0.721, 0.695), TracingPoint(0.695, 0.721), TracingPoint(0.66, 0.73), TracingPoint(0.625, 0.721), TracingPoint(0.599, 0.695), TracingPoint(0.59, 0.66), TracingPoint(0.599, 0.625), TracingPoint(0.625, 0.599), TracingPoint(0.66, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_25',
        title: 'Metro Line Feeder',
        category: 'Transit',
        difficulty: 'Medium',
        funFact: 'Brings passengers straight to train stations!',
        iconSymbol: '🚍',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Metro Line Feeder',
            points: [TracingPoint(0.17, 0.58), TracingPoint(0.17, 0.24), TracingPoint(0.83, 0.24), TracingPoint(0.83, 0.58), TracingPoint(0.17, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.22, 0.32), TracingPoint(0.78, 0.32)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.34, 0.59), TracingPoint(0.375, 0.599), TracingPoint(0.401, 0.625), TracingPoint(0.41, 0.66), TracingPoint(0.401, 0.695), TracingPoint(0.375, 0.721), TracingPoint(0.34, 0.73), TracingPoint(0.305, 0.721), TracingPoint(0.279, 0.695), TracingPoint(0.27, 0.66), TracingPoint(0.279, 0.625), TracingPoint(0.305, 0.599), TracingPoint(0.34, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.66, 0.59), TracingPoint(0.695, 0.599), TracingPoint(0.721, 0.625), TracingPoint(0.73, 0.66), TracingPoint(0.721, 0.695), TracingPoint(0.695, 0.721), TracingPoint(0.66, 0.73), TracingPoint(0.625, 0.721), TracingPoint(0.599, 0.695), TracingPoint(0.59, 0.66), TracingPoint(0.599, 0.625), TracingPoint(0.625, 0.599), TracingPoint(0.66, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_26',
        title: 'Suburban Line Bus',
        category: 'Transit',
        difficulty: 'Medium',
        funFact: 'Travels gently along green suburban avenues!',
        iconSymbol: '🚌',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Suburban Line Bus',
            points: [TracingPoint(0.16, 0.58), TracingPoint(0.16, 0.23), TracingPoint(0.84, 0.23), TracingPoint(0.84, 0.58), TracingPoint(0.16, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.21, 0.31), TracingPoint(0.79, 0.31)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.33, 0.59), TracingPoint(0.365, 0.599), TracingPoint(0.391, 0.625), TracingPoint(0.4, 0.66), TracingPoint(0.391, 0.695), TracingPoint(0.365, 0.721), TracingPoint(0.33, 0.73), TracingPoint(0.295, 0.721), TracingPoint(0.269, 0.695), TracingPoint(0.26, 0.66), TracingPoint(0.269, 0.625), TracingPoint(0.295, 0.599), TracingPoint(0.33, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.67, 0.59), TracingPoint(0.705, 0.599), TracingPoint(0.731, 0.625), TracingPoint(0.74, 0.66), TracingPoint(0.731, 0.695), TracingPoint(0.705, 0.721), TracingPoint(0.67, 0.73), TracingPoint(0.635, 0.721), TracingPoint(0.609, 0.695), TracingPoint(0.6, 0.66), TracingPoint(0.609, 0.625), TracingPoint(0.635, 0.599), TracingPoint(0.67, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_27',
        title: 'Skyway Bridge Bus',
        category: 'Transit',
        difficulty: 'Hard',
        funFact: 'Crosses wide blue rivers on suspension bridges!',
        iconSymbol: '🚍',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Skyway Bridge Bus',
            points: [TracingPoint(0.15, 0.58), TracingPoint(0.15, 0.23), TracingPoint(0.85, 0.23), TracingPoint(0.85, 0.58), TracingPoint(0.15, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.2, 0.31), TracingPoint(0.8, 0.31)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.32, 0.59), TracingPoint(0.355, 0.599), TracingPoint(0.381, 0.625), TracingPoint(0.39, 0.66), TracingPoint(0.381, 0.695), TracingPoint(0.355, 0.721), TracingPoint(0.32, 0.73), TracingPoint(0.285, 0.721), TracingPoint(0.259, 0.695), TracingPoint(0.25, 0.66), TracingPoint(0.259, 0.625), TracingPoint(0.285, 0.599), TracingPoint(0.32, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.68, 0.59), TracingPoint(0.715, 0.599), TracingPoint(0.741, 0.625), TracingPoint(0.75, 0.66), TracingPoint(0.741, 0.695), TracingPoint(0.715, 0.721), TracingPoint(0.68, 0.73), TracingPoint(0.645, 0.721), TracingPoint(0.619, 0.695), TracingPoint(0.61, 0.66), TracingPoint(0.619, 0.625), TracingPoint(0.645, 0.599), TracingPoint(0.68, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_28',
        title: 'Snow Peak Ski Bus',
        category: 'Winter',
        difficulty: 'Hard',
        funFact: 'Has heated snow chains for icy winter roads!',
        iconSymbol: '🚌',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Snow Peak Ski Bus',
            points: [TracingPoint(0.17, 0.58), TracingPoint(0.17, 0.2), TracingPoint(0.83, 0.2), TracingPoint(0.83, 0.58), TracingPoint(0.17, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.22, 0.28), TracingPoint(0.78, 0.28)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.34, 0.59), TracingPoint(0.375, 0.599), TracingPoint(0.401, 0.625), TracingPoint(0.41, 0.66), TracingPoint(0.401, 0.695), TracingPoint(0.375, 0.721), TracingPoint(0.34, 0.73), TracingPoint(0.305, 0.721), TracingPoint(0.279, 0.695), TracingPoint(0.27, 0.66), TracingPoint(0.279, 0.625), TracingPoint(0.305, 0.599), TracingPoint(0.34, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.66, 0.59), TracingPoint(0.695, 0.599), TracingPoint(0.721, 0.625), TracingPoint(0.73, 0.66), TracingPoint(0.721, 0.695), TracingPoint(0.695, 0.721), TracingPoint(0.66, 0.73), TracingPoint(0.625, 0.721), TracingPoint(0.599, 0.695), TracingPoint(0.59, 0.66), TracingPoint(0.599, 0.625), TracingPoint(0.625, 0.599), TracingPoint(0.66, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_29',
        title: 'Easy Access Bus',
        category: 'Transit',
        difficulty: 'Easy',
        funFact: 'Ramps fold out for strollers and wheelchairs!',
        iconSymbol: '🚍',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Easy Access Bus',
            points: [TracingPoint(0.15, 0.58), TracingPoint(0.15, 0.25), TracingPoint(0.85, 0.25), TracingPoint(0.85, 0.58), TracingPoint(0.15, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.2, 0.33), TracingPoint(0.8, 0.33)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.32, 0.59), TracingPoint(0.355, 0.599), TracingPoint(0.381, 0.625), TracingPoint(0.39, 0.66), TracingPoint(0.381, 0.695), TracingPoint(0.355, 0.721), TracingPoint(0.32, 0.73), TracingPoint(0.285, 0.721), TracingPoint(0.259, 0.695), TracingPoint(0.25, 0.66), TracingPoint(0.259, 0.625), TracingPoint(0.285, 0.599), TracingPoint(0.32, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.68, 0.59), TracingPoint(0.715, 0.599), TracingPoint(0.741, 0.625), TracingPoint(0.75, 0.66), TracingPoint(0.741, 0.695), TracingPoint(0.715, 0.721), TracingPoint(0.68, 0.73), TracingPoint(0.645, 0.721), TracingPoint(0.619, 0.695), TracingPoint(0.61, 0.66), TracingPoint(0.619, 0.625), TracingPoint(0.645, 0.599), TracingPoint(0.68, 0.59)],
          )
        ],
      ),
      TracingItem(
        id: 'bus_30',
        title: 'Smart Autonomous Bus',
        category: 'Future',
        difficulty: 'Hard',
        funFact: 'Navigates by sensors without any steering wheel!',
        iconSymbol: '🚍',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the rectangular body of the Smart Autonomous Bus',
            points: [TracingPoint(0.16, 0.58), TracingPoint(0.16, 0.24), TracingPoint(0.84, 0.24), TracingPoint(0.84, 0.58), TracingPoint(0.16, 0.58)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the wide passenger window line',
            points: [TracingPoint(0.21, 0.32), TracingPoint(0.79, 0.32)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the front heavy bus wheel',
            points: [TracingPoint(0.33, 0.59), TracingPoint(0.365, 0.599), TracingPoint(0.391, 0.625), TracingPoint(0.4, 0.66), TracingPoint(0.391, 0.695), TracingPoint(0.365, 0.721), TracingPoint(0.33, 0.73), TracingPoint(0.295, 0.721), TracingPoint(0.269, 0.695), TracingPoint(0.26, 0.66), TracingPoint(0.269, 0.625), TracingPoint(0.295, 0.599), TracingPoint(0.33, 0.59)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the rear wheel to complete the ride',
            points: [TracingPoint(0.67, 0.59), TracingPoint(0.705, 0.599), TracingPoint(0.731, 0.625), TracingPoint(0.74, 0.66), TracingPoint(0.731, 0.695), TracingPoint(0.705, 0.721), TracingPoint(0.67, 0.73), TracingPoint(0.635, 0.721), TracingPoint(0.609, 0.695), TracingPoint(0.6, 0.66), TracingPoint(0.609, 0.625), TracingPoint(0.635, 0.599), TracingPoint(0.67, 0.59)],
          )
        ],
      )
    ];
  }
}
