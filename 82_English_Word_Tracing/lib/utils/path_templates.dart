import '../models/tracing_item.dart';

class PathTemplates {
  static List<TracingItem> getItems() {
    return [
      TracingItem(
        id: 'word_01',
        title: 'Word: CAT',
        category: 'Animals',
        difficulty: 'Easy',
        funFact: 'Cats have soft paws and purr when happy!',
        iconSymbol: '🐱',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of CAT',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_02',
        title: 'Word: DOG',
        category: 'Animals',
        difficulty: 'Easy',
        funFact: 'Dogs love playing fetch with tennis balls!',
        iconSymbol: '🐶',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of DOG',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_03',
        title: 'Word: SUN',
        category: 'Nature',
        difficulty: 'Easy',
        funFact: 'The sun gives bright light and warm smiles!',
        iconSymbol: '☀️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of SUN',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_04',
        title: 'Word: BUS',
        category: 'Vehicles',
        difficulty: 'Easy',
        funFact: 'Buses take boys and girls to school safely!',
        iconSymbol: '🚌',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of BUS',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_05',
        title: 'Word: CUP',
        category: 'Objects',
        difficulty: 'Easy',
        funFact: 'Drink fresh orange juice from a colorful cup!',
        iconSymbol: '🥤',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of CUP',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_06',
        title: 'Word: HAT',
        category: 'Clothing',
        difficulty: 'Easy',
        funFact: 'A warm woolly hat keeps your ears toasty!',
        iconSymbol: '🧢',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of HAT',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_07',
        title: 'Word: CAR',
        category: 'Vehicles',
        difficulty: 'Easy',
        funFact: 'Cars roll on four wheels along the road!',
        iconSymbol: '🚗',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of CAR',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_08',
        title: 'Word: FOX',
        category: 'Animals',
        difficulty: 'Easy',
        funFact: 'Foxes have bushy tails and clever sharp eyes!',
        iconSymbol: '🦊',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of FOX',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_09',
        title: 'Word: BEE',
        category: 'Insects',
        difficulty: 'Easy',
        funFact: 'Bees buzz and make sweet golden honey!',
        iconSymbol: '🐝',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of BEE',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_10',
        title: 'Word: PIG',
        category: 'Animals',
        difficulty: 'Easy',
        funFact: 'Pigs say oink-oink and splash in cool mud!',
        iconSymbol: '🐷',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of PIG',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_11',
        title: 'Word: STAR',
        category: 'Sky',
        difficulty: 'Medium',
        funFact: 'Stars twinkle like diamonds in the night sky!',
        iconSymbol: '⭐',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of STAR',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_12',
        title: 'Word: TREE',
        category: 'Nature',
        difficulty: 'Medium',
        funFact: 'Trees have green leaves and strong brown trunks!',
        iconSymbol: '🌳',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of TREE',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_13',
        title: 'Word: BIRD',
        category: 'Animals',
        difficulty: 'Medium',
        funFact: 'Birds flap soft wings and sing cheerful songs!',
        iconSymbol: '🐦',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of BIRD',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_14',
        title: 'Word: FISH',
        category: 'Animals',
        difficulty: 'Medium',
        funFact: 'Fish breathe with gills and swim in water!',
        iconSymbol: '🐟',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of FISH',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_15',
        title: 'Word: MOON',
        category: 'Sky',
        difficulty: 'Medium',
        funFact: 'The moon shines like a silver night light!',
        iconSymbol: '🌙',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of MOON',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_16',
        title: 'Word: RAIN',
        category: 'Weather',
        difficulty: 'Medium',
        funFact: 'Rain makes mud puddles for splashing fun!',
        iconSymbol: '🌧️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of RAIN',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_17',
        title: 'Word: SHIP',
        category: 'Vehicles',
        difficulty: 'Medium',
        funFact: 'Big ships sail across wide blue oceans!',
        iconSymbol: '🚢',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of SHIP',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_18',
        title: 'Word: BOOK',
        category: 'Learning',
        difficulty: 'Medium',
        funFact: 'Books take you on magical story adventures!',
        iconSymbol: '📖',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of BOOK',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_19',
        title: 'Word: FROG',
        category: 'Animals',
        difficulty: 'Medium',
        funFact: 'Frogs leap high and say ribbit-ribbit!',
        iconSymbol: '🐸',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of FROG',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_20',
        title: 'Word: DUCK',
        category: 'Animals',
        difficulty: 'Medium',
        funFact: 'Ducks have yellow beaks and say quack-quack!',
        iconSymbol: '🦆',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of DUCK',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_21',
        title: 'Word: APPLE',
        category: 'Food',
        difficulty: 'Hard',
        funFact: 'Sweet and crunchy red apples grow on trees!',
        iconSymbol: '🍎',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of APPLE',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_22',
        title: 'Word: TRAIN',
        category: 'Vehicles',
        difficulty: 'Hard',
        funFact: 'Trains go choo-choo along shiny steel tracks!',
        iconSymbol: '🚂',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of TRAIN',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_23',
        title: 'Word: HOUSE',
        category: 'Places',
        difficulty: 'Hard',
        funFact: 'A cozy home with windows and a front door!',
        iconSymbol: '🏠',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of HOUSE',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_24',
        title: 'Word: SMILE',
        category: 'Feelings',
        difficulty: 'Hard',
        funFact: 'A happy smile brightens everyone\'s day!',
        iconSymbol: '😊',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of SMILE',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_25',
        title: 'Word: FLOWER',
        category: 'Nature',
        difficulty: 'Hard',
        funFact: 'Flowers smell sweet and have colorful petals!',
        iconSymbol: '🌸',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of FLOWER',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_26',
        title: 'Word: CLOUD',
        category: 'Weather',
        difficulty: 'Hard',
        funFact: 'Clouds float softly across the sunny blue sky!',
        iconSymbol: '☁️',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of CLOUD',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_27',
        title: 'Word: WATER',
        category: 'Nature',
        difficulty: 'Hard',
        funFact: 'Clean drinking water keeps our bodies healthy!',
        iconSymbol: '💧',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of WATER',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_28',
        title: 'Word: HORSE',
        category: 'Animals',
        difficulty: 'Hard',
        funFact: 'Horses gallop fast and neigh happily!',
        iconSymbol: '🐴',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of HORSE',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_29',
        title: 'Word: TIGER',
        category: 'Animals',
        difficulty: 'Hard',
        funFact: 'Tigers have orange fur with bold black stripes!',
        iconSymbol: '🐯',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of TIGER',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      ),
      TracingItem(
        id: 'word_30',
        title: 'Word: BREAD',
        category: 'Food',
        difficulty: 'Hard',
        funFact: 'Fresh baked bread smells delicious in morning!',
        iconSymbol: '🍞',
        strokes: [
          TracingStroke(
            id: 1,
            instruction: 'Trace the first letter of BREAD',
            points: [TracingPoint(0.15, 0.4), TracingPoint(0.15, 0.65), TracingPoint(0.35, 0.65)],
          ),
          TracingStroke(
            id: 2,
            instruction: 'Trace the middle letter carefully',
            points: [TracingPoint(0.4, 0.4), TracingPoint(0.55, 0.4), TracingPoint(0.55, 0.65), TracingPoint(0.4, 0.65), TracingPoint(0.4, 0.4)],
          ),
          TracingStroke(
            id: 3,
            instruction: 'Trace the ending letter to spell it out',
            points: [TracingPoint(0.62, 0.4), TracingPoint(0.85, 0.4), TracingPoint(0.74, 0.4), TracingPoint(0.74, 0.65)],
          )
        ],
      )
    ];
  }
}
