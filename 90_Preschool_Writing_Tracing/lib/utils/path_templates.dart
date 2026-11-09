import '../models/tracing_item.dart';

class PathTemplates {
  static List<TracingItem> getItems() {
    return [
      TracingItem(
        id: 'preschool_01',
        title: 'Horizontal Line',
        category: 'Lines',
        difficulty: 'Easy',
        funFact: 'Straight line from left to right!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Horizontal Line',
            points: [TracingPoint(0.15, 0.5), TracingPoint(0.85, 0.5)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_02',
        title: 'Vertical Line',
        category: 'Lines',
        difficulty: 'Easy',
        funFact: 'Straight line sliding straight down!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Vertical Line',
            points: [TracingPoint(0.5, 0.15), TracingPoint(0.5, 0.85)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_03',
        title: 'Diagonal Slide Left',
        category: 'Diagonals',
        difficulty: 'Easy',
        funFact: 'Sliding down like a playground slide!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Diagonal Slide Left',
            points: [TracingPoint(0.2, 0.2), TracingPoint(0.8, 0.8)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_04',
        title: 'Diagonal Slide Right',
        category: 'Diagonals',
        difficulty: 'Easy',
        funFact: 'Climbing up like a ramp!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Diagonal Slide Right',
            points: [TracingPoint(0.2, 0.8), TracingPoint(0.8, 0.2)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_05',
        title: 'Cross Pattern',
        category: 'Patterns',
        difficulty: 'Easy',
        funFact: 'Crossing lines like a plus sign!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Cross Pattern',
            points: [TracingPoint(0.2, 0.5), TracingPoint(0.8, 0.5)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_06',
        title: 'Circle Shape',
        category: 'Shapes',
        difficulty: 'Easy',
        funFact: 'Round and round like a ball!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Circle Shape',
            points: [TracingPoint(0.5, 0.18), TracingPoint(0.622, 0.204), TracingPoint(0.726, 0.274), TracingPoint(0.796, 0.378), TracingPoint(0.82, 0.5), TracingPoint(0.796, 0.622), TracingPoint(0.726, 0.726), TracingPoint(0.622, 0.796), TracingPoint(0.5, 0.82), TracingPoint(0.378, 0.796), TracingPoint(0.274, 0.726), TracingPoint(0.204, 0.622), TracingPoint(0.18, 0.5), TracingPoint(0.204, 0.378), TracingPoint(0.274, 0.274), TracingPoint(0.378, 0.204), TracingPoint(0.5, 0.18)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_07',
        title: 'Square Shape',
        category: 'Shapes',
        difficulty: 'Medium',
        funFact: 'Four equal sides and four corners!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Square Shape',
            points: [TracingPoint(0.25, 0.25), TracingPoint(0.75, 0.25), TracingPoint(0.75, 0.75), TracingPoint(0.25, 0.75), TracingPoint(0.25, 0.25)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_08',
        title: 'Triangle Shape',
        category: 'Shapes',
        difficulty: 'Medium',
        funFact: 'Three sharp points reaching up!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Triangle Shape',
            points: [TracingPoint(0.5, 0.154), TracingPoint(0.8, 0.673), TracingPoint(0.2, 0.673), TracingPoint(0.5, 0.154)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_09',
        title: 'Semi Circle Arch',
        category: 'Curves',
        difficulty: 'Easy',
        funFact: 'Half a circle like a melon slice!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Semi Circle Arch',
            points: [TracingPoint(0.18, 0.6), TracingPoint(0.186, 0.538), TracingPoint(0.204, 0.478), TracingPoint(0.234, 0.422), TracingPoint(0.274, 0.374), TracingPoint(0.322, 0.334), TracingPoint(0.378, 0.304), TracingPoint(0.438, 0.286), TracingPoint(0.5, 0.28), TracingPoint(0.562, 0.286), TracingPoint(0.622, 0.304), TracingPoint(0.678, 0.334), TracingPoint(0.726, 0.374), TracingPoint(0.766, 0.422), TracingPoint(0.796, 0.478), TracingPoint(0.814, 0.538), TracingPoint(0.82, 0.6)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_10',
        title: 'Ocean Wave Line',
        category: 'Curves',
        difficulty: 'Medium',
        funFact: 'Rippling like gentle beach waves!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Ocean Wave Line',
            points: [TracingPoint(0.1, 0.5), TracingPoint(0.14, 0.571), TracingPoint(0.18, 0.614), TracingPoint(0.22, 0.614), TracingPoint(0.26, 0.571), TracingPoint(0.3, 0.5), TracingPoint(0.34, 0.429), TracingPoint(0.38, 0.386), TracingPoint(0.42, 0.386), TracingPoint(0.46, 0.429), TracingPoint(0.5, 0.5), TracingPoint(0.54, 0.571), TracingPoint(0.58, 0.614), TracingPoint(0.62, 0.614), TracingPoint(0.66, 0.571), TracingPoint(0.7, 0.5), TracingPoint(0.74, 0.429), TracingPoint(0.78, 0.386), TracingPoint(0.82, 0.386), TracingPoint(0.86, 0.429), TracingPoint(0.9, 0.5)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_11',
        title: 'Zigzag Mountains',
        category: 'Patterns',
        difficulty: 'Medium',
        funFact: 'Pointy zigzags up and down!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Zigzag Mountains',
            points: [TracingPoint(0.1, 0.65), TracingPoint(0.3, 0.35), TracingPoint(0.5, 0.65), TracingPoint(0.7, 0.35), TracingPoint(0.9, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_12',
        title: 'Valley Loops',
        category: 'Curves',
        difficulty: 'Medium',
        funFact: 'Looping down like telephone wires!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Valley Loops',
            points: [TracingPoint(0.1, 0.4), TracingPoint(0.3, 0.7), TracingPoint(0.5, 0.4), TracingPoint(0.7, 0.7), TracingPoint(0.9, 0.4)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_13',
        title: 'Castle Battlements',
        category: 'Patterns',
        difficulty: 'Hard',
        funFact: 'Up, over, down, across, up, over!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Castle Battlements',
            points: [TracingPoint(0.15, 0.65), TracingPoint(0.15, 0.35), TracingPoint(0.35, 0.35), TracingPoint(0.35, 0.65), TracingPoint(0.55, 0.65), TracingPoint(0.55, 0.35), TracingPoint(0.75, 0.35), TracingPoint(0.75, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_14',
        title: 'Rainbow Arc',
        category: 'Curves',
        difficulty: 'Easy',
        funFact: 'High curving arch over the sky!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Rainbow Arc',
            points: [TracingPoint(0.15, 0.7), TracingPoint(0.157, 0.632), TracingPoint(0.177, 0.566), TracingPoint(0.209, 0.506), TracingPoint(0.253, 0.453), TracingPoint(0.306, 0.409), TracingPoint(0.366, 0.377), TracingPoint(0.432, 0.357), TracingPoint(0.5, 0.35), TracingPoint(0.568, 0.357), TracingPoint(0.634, 0.377), TracingPoint(0.694, 0.409), TracingPoint(0.747, 0.453), TracingPoint(0.791, 0.506), TracingPoint(0.823, 0.566), TracingPoint(0.843, 0.632), TracingPoint(0.85, 0.7)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_15',
        title: 'Spiral Swirl',
        category: 'Patterns',
        difficulty: 'Hard',
        funFact: 'Spinning inwards like a snail shell!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Spiral Swirl',
            points: [TracingPoint(0.5, 0.5), TracingPoint(0.6, 0.5), TracingPoint(0.6, 0.4), TracingPoint(0.4, 0.4), TracingPoint(0.4, 0.6), TracingPoint(0.7, 0.6), TracingPoint(0.7, 0.3), TracingPoint(0.3, 0.3)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_16',
        title: 'Figure Eight',
        category: 'Shapes',
        difficulty: 'Hard',
        funFact: 'Two round loops touching in middle!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Figure Eight',
            points: [TracingPoint(0.5, 0.19), TracingPoint(0.58, 0.211), TracingPoint(0.639, 0.27), TracingPoint(0.66, 0.35), TracingPoint(0.639, 0.43), TracingPoint(0.58, 0.489), TracingPoint(0.5, 0.51), TracingPoint(0.42, 0.489), TracingPoint(0.361, 0.43), TracingPoint(0.34, 0.35), TracingPoint(0.361, 0.27), TracingPoint(0.42, 0.211), TracingPoint(0.5, 0.19)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_17',
        title: 'Loop-de-Loop',
        category: 'Curves',
        difficulty: 'Hard',
        funFact: 'Roller coaster looping curls!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Loop-de-Loop',
            points: [TracingPoint(0.15, 0.6), TracingPoint(0.35, 0.3), TracingPoint(0.3, 0.7), TracingPoint(0.55, 0.3), TracingPoint(0.5, 0.7), TracingPoint(0.8, 0.3)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_18',
        title: 'Cloud Scallops',
        category: 'Curves',
        difficulty: 'Medium',
        funFact: 'Bubbly scalloped puffy cloud bumps!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Cloud Scallops',
            points: [TracingPoint(0.15, 0.5), TracingPoint(0.35, 0.35), TracingPoint(0.55, 0.5), TracingPoint(0.75, 0.35), TracingPoint(0.9, 0.5)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_19',
        title: 'Sunbeam Radiance',
        category: 'Lines',
        difficulty: 'Easy',
        funFact: 'Sunbeams shining in all directions!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Sunbeam Radiance',
            points: [TracingPoint(0.5, 0.5), TracingPoint(0.5, 0.15)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_20',
        title: 'Staircase Steps',
        category: 'Patterns',
        difficulty: 'Medium',
        funFact: 'Stepping up one step at a time!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Staircase Steps',
            points: [TracingPoint(0.2, 0.7), TracingPoint(0.4, 0.7), TracingPoint(0.4, 0.5), TracingPoint(0.6, 0.5), TracingPoint(0.6, 0.3), TracingPoint(0.8, 0.3)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_21',
        title: 'Chevron Arrows',
        category: 'Patterns',
        difficulty: 'Easy',
        funFact: 'Pointing arrows towards adventure!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Chevron Arrows',
            points: [TracingPoint(0.25, 0.35), TracingPoint(0.5, 0.6), TracingPoint(0.75, 0.35)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_22',
        title: 'Crescent Moon Curve',
        category: 'Curves',
        difficulty: 'Easy',
        funFact: 'Curving like a sleepy night moon!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Crescent Moon Curve',
            points: [TracingPoint(0.556, 0.185), TracingPoint(0.609, 0.199), TracingPoint(0.66, 0.223), TracingPoint(0.706, 0.255), TracingPoint(0.745, 0.294), TracingPoint(0.777, 0.34), TracingPoint(0.801, 0.391), TracingPoint(0.815, 0.444), TracingPoint(0.82, 0.5), TracingPoint(0.815, 0.556), TracingPoint(0.801, 0.609), TracingPoint(0.777, 0.66), TracingPoint(0.745, 0.706), TracingPoint(0.706, 0.745), TracingPoint(0.66, 0.777), TracingPoint(0.609, 0.801), TracingPoint(0.556, 0.815)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_23',
        title: 'Letter L Corner',
        category: 'Letters',
        difficulty: 'Easy',
        funFact: 'Down and turn the corner!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Letter L Corner',
            points: [TracingPoint(0.3, 0.2), TracingPoint(0.3, 0.8), TracingPoint(0.75, 0.8)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_24',
        title: 'Letter T Cross',
        category: 'Letters',
        difficulty: 'Easy',
        funFact: 'Tall stick with a roof hat!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Letter T Cross',
            points: [TracingPoint(0.2, 0.25), TracingPoint(0.8, 0.25)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_25',
        title: 'Letter H Ladder',
        category: 'Letters',
        difficulty: 'Easy',
        funFact: 'Two tall poles and a middle rung!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Letter H Ladder',
            points: [TracingPoint(0.3, 0.2), TracingPoint(0.3, 0.8)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_26',
        title: 'Letter X Cross',
        category: 'Letters',
        difficulty: 'Easy',
        funFact: 'Cross from corner to corner!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Letter X Cross',
            points: [TracingPoint(0.25, 0.25), TracingPoint(0.75, 0.75)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_27',
        title: 'Letter O Oval',
        category: 'Letters',
        difficulty: 'Easy',
        funFact: 'Smooth oval like an ostrich egg!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Letter O Oval',
            points: [TracingPoint(0.5, 0.18), TracingPoint(0.596, 0.204), TracingPoint(0.677, 0.274), TracingPoint(0.731, 0.378), TracingPoint(0.75, 0.5), TracingPoint(0.731, 0.622), TracingPoint(0.677, 0.726), TracingPoint(0.596, 0.796), TracingPoint(0.5, 0.82), TracingPoint(0.404, 0.796), TracingPoint(0.323, 0.726), TracingPoint(0.269, 0.622), TracingPoint(0.25, 0.5), TracingPoint(0.269, 0.378), TracingPoint(0.323, 0.274), TracingPoint(0.404, 0.204), TracingPoint(0.5, 0.18)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_28',
        title: 'Letter V Valley',
        category: 'Letters',
        difficulty: 'Easy',
        funFact: 'Down into the valley and back up!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Letter V Valley',
            points: [TracingPoint(0.25, 0.25), TracingPoint(0.5, 0.78), TracingPoint(0.75, 0.25)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_29',
        title: 'Wiggle Worm Path',
        category: 'Curves',
        difficulty: 'Medium',
        funFact: 'Curvy path like a wiggling worm!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Wiggle Worm Path',
            points: [TracingPoint(0.15, 0.5), TracingPoint(0.179, 0.599), TracingPoint(0.208, 0.64), TracingPoint(0.237, 0.599), TracingPoint(0.267, 0.5), TracingPoint(0.296, 0.401), TracingPoint(0.325, 0.36), TracingPoint(0.354, 0.401), TracingPoint(0.383, 0.5), TracingPoint(0.412, 0.599), TracingPoint(0.442, 0.64), TracingPoint(0.471, 0.599), TracingPoint(0.5, 0.5), TracingPoint(0.529, 0.401), TracingPoint(0.558, 0.36), TracingPoint(0.588, 0.401), TracingPoint(0.617, 0.5), TracingPoint(0.646, 0.599), TracingPoint(0.675, 0.64), TracingPoint(0.704, 0.599), TracingPoint(0.733, 0.5), TracingPoint(0.762, 0.401), TracingPoint(0.792, 0.36), TracingPoint(0.821, 0.401), TracingPoint(0.85, 0.5)],
          )
        ],
      ),
      TracingItem(
        id: 'preschool_30',
        title: 'Star Twinkle',
        category: 'Shapes',
        difficulty: 'Hard',
        funFact: 'Five points shining bright!',
        iconSymbol: '✏️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace Star Twinkle',
            points: [TracingPoint(0.5, 0.15), TracingPoint(0.594, 0.371), TracingPoint(0.833, 0.392), TracingPoint(0.652, 0.549), TracingPoint(0.706, 0.783), TracingPoint(0.5, 0.66), TracingPoint(0.294, 0.783), TracingPoint(0.348, 0.549), TracingPoint(0.167, 0.392), TracingPoint(0.406, 0.371), TracingPoint(0.5, 0.15)],
          )
        ],
      )
    ];
  }
}
