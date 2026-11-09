import '../models/tracing_item.dart';

class PathTemplates {
  static List<TracingItem> getItems() {
    return [
      TracingItem(
        id: 'sentence_01',
        title: 'Sentence 1: "I see the sun."',
        category: 'Reading',
        difficulty: 'Easy',
        funFact: 'Reading sentences helps build great stories!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "I"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_02',
        title: 'Sentence 2: "The cat can run."',
        category: 'Reading',
        difficulty: 'Easy',
        funFact: 'Cats are agile runners and jumpers!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "The"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_03',
        title: 'Sentence 3: "I love my dog."',
        category: 'Family',
        difficulty: 'Easy',
        funFact: 'Dogs give the happiest wagging greetings!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "I"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_04',
        title: 'Sentence 4: "The sky is blue."',
        category: 'Nature',
        difficulty: 'Easy',
        funFact: 'Clear blue skies mean a sunny day!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "The"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_05',
        title: 'Sentence 5: "We can play here."',
        category: 'Play',
        difficulty: 'Easy',
        funFact: 'Playing outdoors is healthy and fun!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "We"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_06',
        title: 'Sentence 6: "Look at the star."',
        category: 'Sky',
        difficulty: 'Medium',
        funFact: 'Stars glow from light years away!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "Look"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_07',
        title: 'Sentence 7: "The bus is red."',
        category: 'Vehicles',
        difficulty: 'Easy',
        funFact: 'Buses are bright so everyone sees them!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "The"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_08',
        title: 'Sentence 8: "I have a book."',
        category: 'Learning',
        difficulty: 'Medium',
        funFact: 'Books are doorways to amazing adventures!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "I"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_09',
        title: 'Sentence 9: "The bird can fly."',
        category: 'Animals',
        difficulty: 'Easy',
        funFact: 'Feathers give birds lift in the air!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "The"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_10',
        title: 'Sentence 10: "She has a ball."',
        category: 'Play',
        difficulty: 'Easy',
        funFact: 'Bouncing balls is great coordination!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "She"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_11',
        title: 'Sentence 11: "We like to read."',
        category: 'Learning',
        difficulty: 'Medium',
        funFact: 'Reading five minutes a day builds vocabulary!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "We"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_12',
        title: 'Sentence 12: "The fish can swim."',
        category: 'Animals',
        difficulty: 'Easy',
        funFact: 'Gills let fish breathe under water!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "The"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_13',
        title: 'Sentence 13: "I eat an apple."',
        category: 'Health',
        difficulty: 'Medium',
        funFact: 'Crisp apples give good vitamins!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "I"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_14',
        title: 'Sentence 14: "The car goes fast."',
        category: 'Vehicles',
        difficulty: 'Easy',
        funFact: 'Engines turn wheels along highways!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "The"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_15',
        title: 'Sentence 15: "He has a pet."',
        category: 'Family',
        difficulty: 'Easy',
        funFact: 'Taking care of pets teaches kindness!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "He"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_16',
        title: 'Sentence 16: "The tree is tall."',
        category: 'Nature',
        difficulty: 'Medium',
        funFact: 'Roots drink water deep beneath the soil!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "The"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_17',
        title: 'Sentence 17: "I drink cold milk."',
        category: 'Health',
        difficulty: 'Easy',
        funFact: 'Calcium in milk builds strong bones!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "I"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_18',
        title: 'Sentence 18: "The duck quacks."',
        category: 'Animals',
        difficulty: 'Easy',
        funFact: 'Duck feathers are naturally waterproof!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "The"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_19',
        title: 'Sentence 19: "We go to school."',
        category: 'School',
        difficulty: 'Medium',
        funFact: 'School is where we meet wonderful friends!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "We"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_20',
        title: 'Sentence 20: "The moon is bright."',
        category: 'Sky',
        difficulty: 'Medium',
        funFact: 'The moon reflects golden sunlight!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "The"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_21',
        title: 'Sentence 21: "It is a sunny day."',
        category: 'Weather',
        difficulty: 'Medium',
        funFact: 'Warm sunshine helps flowers bloom!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "It"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_22',
        title: 'Sentence 22: "I see a green frog."',
        category: 'Nature',
        difficulty: 'Medium',
        funFact: 'Frogs catch bugs with long sticky tongues!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "I"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_23',
        title: 'Sentence 23: "The bear likes honey."',
        category: 'Animals',
        difficulty: 'Hard',
        funFact: 'Bears love sweet treats from bees!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "The"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_24',
        title: 'Sentence 24: "I can ride my bike."',
        category: 'Play',
        difficulty: 'Hard',
        funFact: 'Wearing a helmet keeps bike riders safe!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "I"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_25',
        title: 'Sentence 25: "My family loves me."',
        category: 'Love',
        difficulty: 'Medium',
        funFact: 'Family love is the greatest treasure!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "My"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_26',
        title: 'Sentence 26: "The flower is sweet."',
        category: 'Garden',
        difficulty: 'Medium',
        funFact: 'Nectar attracts dancing honeybees!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "The"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_27',
        title: 'Sentence 27: "We play in the park."',
        category: 'Play',
        difficulty: 'Hard',
        funFact: 'Slides and swings make parks magical!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "We"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_28',
        title: 'Sentence 28: "I can draw a house."',
        category: 'Art',
        difficulty: 'Hard',
        funFact: 'Drawing with colors sparks imagination!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "I"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_29',
        title: 'Sentence 29: "The stars shine."',
        category: 'Night',
        difficulty: 'Medium',
        funFact: 'Constellations make pictures in night sky!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "The"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      ),
      TracingItem(
        id: 'sentence_30',
        title: 'Sentence 30: "I did a great job!"',
        category: 'Celebration',
        difficulty: 'Hard',
        funFact: 'Be proud of your amazing writing work!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace first part: "I"',
            points: [TracingPoint(0.12, 0.42), TracingPoint(0.45, 0.42)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle words',
            points: [TracingPoint(0.5, 0.42), TracingPoint(0.88, 0.42)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace to the punctuation period',
            points: [TracingPoint(0.12, 0.62), TracingPoint(0.88, 0.62)],
          )
        ],
      )
    ];
  }
}
