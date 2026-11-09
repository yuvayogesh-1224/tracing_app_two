import '../models/tracing_item.dart';

class PathTemplates {
  static List<TracingItem> getItems() {
    return [
      TracingItem(
        id: 'robot_01',
        title: 'Vintage Clockwork Tin Bot',
        category: 'Retro',
        difficulty: 'Easy',
        funFact: 'Has a winding key in back that goes click-clack!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Vintage Clockwork Tin Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_02',
        title: 'Smiling Home Helper Bot',
        category: 'Domestic',
        difficulty: 'Easy',
        funFact: 'Cleans up toys and puts books on low shelves!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Smiling Home Helper Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_03',
        title: 'Mars Rover Android',
        category: 'Explorer',
        difficulty: 'Hard',
        funFact: 'Rolls across red martian dust finding ice!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Mars Rover Android',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_04',
        title: 'Self-Balancing Wheel Bot',
        category: 'Wheeled',
        difficulty: 'Easy',
        funFact: 'Balances on two rubber wheels like a segway!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Self-Balancing Wheel Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_05',
        title: 'Quad-Rotor Drone Bot',
        category: 'Aviation',
        difficulty: 'Medium',
        funFact: 'Spins four propellers to hover in mid-air!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Quad-Rotor Drone Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_06',
        title: 'Heavy Factory Robotic Arm',
        category: 'Factory',
        difficulty: 'Hard',
        funFact: 'Lifts heavy car engines with steel precision!',
        iconSymbol: '🦾',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Heavy Factory Robotic Arm',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_07',
        title: 'Microscopic Nano Explorer',
        category: 'Medical',
        difficulty: 'Hard',
        funFact: 'Smaller than a speck of dust to heal cells!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Microscopic Nano Explorer',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_08',
        title: 'Round Robotic Floor Cleaner',
        category: 'Domestic',
        difficulty: 'Easy',
        funFact: 'Scampers around the rug sucking up crumbs!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Round Robotic Floor Cleaner',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_09',
        title: 'Robotic Puppy Companion',
        category: 'Pet',
        difficulty: 'Medium',
        funFact: 'Wags its metal antenna tail when you pet it!',
        iconSymbol: '🐕',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Robotic Puppy Companion',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_10',
        title: 'Sun-Powered Solar Rover',
        category: 'Green',
        difficulty: 'Medium',
        funFact: 'Unfolds solar wings every morning at sunrise!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Sun-Powered Solar Rover',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_11',
        title: 'Deep Sea Trench Explorer',
        category: 'Marine',
        difficulty: 'Hard',
        funFact: 'Survives intense crushing deep ocean pressures!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Deep Sea Trench Explorer',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_12',
        title: 'Key-Wound Mechanical Walker',
        category: 'Retro',
        difficulty: 'Easy',
        funFact: 'Waddles forward with funny mechanical steps!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Key-Wound Mechanical Walker',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_13',
        title: 'Precision Laser Cutting Bot',
        category: 'Industrial',
        difficulty: 'Hard',
        funFact: 'Cuts steel sheets using beams of pure light!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Precision Laser Cutting Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_14',
        title: 'Pancake Flipping Chef Bot',
        category: 'Culinary',
        difficulty: 'Medium',
        funFact: 'Flips hot pancakes 3 feet into the air!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Pancake Flipping Chef Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_15',
        title: 'Weed Pulling Garden Bot',
        category: 'Agri',
        difficulty: 'Medium',
        funFact: 'Identifies weeds with camera eyes and pulls them!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Weed Pulling Garden Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_16',
        title: 'Security Patrol Sentry Bot',
        category: 'Security',
        difficulty: 'Medium',
        funFact: 'Patrols museum halls keeping paintings safe!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Security Patrol Sentry Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_17',
        title: 'Synthesizer Music Bot',
        category: 'Arts',
        difficulty: 'Hard',
        funFact: 'Plays electronic synth tunes with flashing LEDs!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Synthesizer Music Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_18',
        title: 'Brick Laying Mason Bot',
        category: 'Building',
        difficulty: 'Hard',
        funFact: 'Lays 1,000 bricks an hour with perfect cement!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Brick Laying Mason Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_19',
        title: 'Star Tracker Observatory Bot',
        category: 'Science',
        difficulty: 'Hard',
        funFact: 'Points giant telescopes at distant galaxies!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Star Tracker Observatory Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_20',
        title: 'Fireproof Emergency Bot',
        category: 'Rescue',
        difficulty: 'Hard',
        funFact: 'Crawls into smoky buildings to rescue puppies!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Fireproof Emergency Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_21',
        title: 'First Aid Hospital Bot',
        category: 'Medical',
        difficulty: 'Medium',
        funFact: 'Delivers medicine vials to doctor rooms quickly!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of First Aid Hospital Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_22',
        title: 'Sidewalk Parcel Delivery Bot',
        category: 'Delivery',
        difficulty: 'Easy',
        funFact: 'Drives safely on sidewalks delivering books!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Sidewalk Parcel Delivery Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_23',
        title: 'Two-Legged Sprinting Android',
        category: 'Biped',
        difficulty: 'Hard',
        funFact: 'Can do backflips and parkour over obstacles!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Two-Legged Sprinting Android',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_24',
        title: 'Antivirus Firewall Bot',
        category: 'Digital',
        difficulty: 'Medium',
        funFact: 'Guards computers from pesky digital bugs!',
        iconSymbol: '🛡️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Antivirus Firewall Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_25',
        title: 'Electromagnetic Scrap Lifter',
        category: 'Industrial',
        difficulty: 'Hard',
        funFact: 'Turns magnets on and off to pick up iron cars!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Electromagnetic Scrap Lifter',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_26',
        title: 'Friendly Math Teacher Bot',
        category: 'Education',
        difficulty: 'Easy',
        funFact: 'Helps kids practice fun math puzzles and art!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Friendly Math Teacher Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_27',
        title: 'Spelunking Cave Drone Bot',
        category: 'Explorer',
        difficulty: 'Hard',
        funFact: 'Maps dark underground bat caves with radar!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Spelunking Cave Drone Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_28',
        title: 'Giant Exoskeleton Titan Bot',
        category: 'Heavy',
        difficulty: 'Hard',
        funFact: 'Piloted from inside a high chest cockpit!',
        iconSymbol: '🤖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Giant Exoskeleton Titan Bot',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_29',
        title: 'Floating AI Assistant Orb',
        category: 'Future',
        difficulty: 'Easy',
        funFact: 'Floats alongside you answering questions!',
        iconSymbol: '🔮',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Floating AI Assistant Orb',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      ),
      TracingItem(
        id: 'robot_30',
        title: 'Chrono Clockwork Navigator',
        category: 'Fantasy',
        difficulty: 'Hard',
        funFact: 'Tracks seconds, minutes, hours and centuries!',
        iconSymbol: '⏳',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the square robot head of Chrono Clockwork Navigator',
            points: [TracingPoint(0.35, 0.22), TracingPoint(0.65, 0.22), TracingPoint(0.65, 0.42), TracingPoint(0.35, 0.42), TracingPoint(0.35, 0.22)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the rectangular metal chassis',
            points: [TracingPoint(0.3, 0.44), TracingPoint(0.7, 0.44), TracingPoint(0.7, 0.74), TracingPoint(0.3, 0.74), TracingPoint(0.3, 0.44)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the communication antenna',
            points: [TracingPoint(0.5, 0.22), TracingPoint(0.5, 0.12)],
          ),
          TracingStroke(
            id: 4,
            instruction: 'Trace the left sturdy leg',
            points: [TracingPoint(0.38, 0.74), TracingPoint(0.38, 0.88)],
          ),
          TracingStroke(
            id: 5,
            instruction: 'Trace the right sturdy leg',
            points: [TracingPoint(0.62, 0.74), TracingPoint(0.62, 0.88)],
          )
        ],
      )
    ];
  }
}
