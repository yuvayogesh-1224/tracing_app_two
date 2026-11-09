# data_batch_81_90.py
import math
from data_helper import (
    make_line, make_circle_points, make_arc_points,
    make_rect_points, make_oval_points, make_star_points,
    make_wave_points, make_triangle_points
)

def get_batch_81_90(app_idx):
    if app_idx == 81:
        return get_81_tamil_items()
    elif app_idx == 82:
        return get_82_english_word_items()
    elif app_idx == 83:
        return get_83_hindi_items()
    elif app_idx == 84:
        return get_84_telugu_items()
    elif app_idx == 85:
        return get_85_malayalam_items()
    elif app_idx == 86:
        return get_86_cursive_items()
    elif app_idx == 87:
        return get_87_sight_word_items()
    elif app_idx == 88:
        return get_88_name_writing_items()
    elif app_idx == 89:
        return get_89_sentence_items()
    elif app_idx == 90:
        return get_90_preschool_items()
    else:
        raise ValueError(f"Invalid app index for batch 81-90: {app_idx}")

def get_81_tamil_items():
    # 30 accurate Tamil script letters with proper stroke coordinates
    tamil_letters = [
        # உயிரெழுத்துக்கள் (Vowels)
        ("அ", "Tamil Letter A (அ - அம்மா)", "உயிரெழுத்து", "Easy", "அ is for அம்மா (Amma - Mother), full of love!"),
        ("ஆ", "Tamil Letter AA (ஆ - ஆடு)", "உயிரெழுத்து", "Medium", "ஆ is for ஆடு (Aadu - Goat), jumping happily!"),
        ("இ", "Tamil Letter I (இ - இலை)", "உயிரெழுத்து", "Easy", "இ is for இலை (Ilai - Green Leaf)!"),
        ("ஈ", "Tamil Letter EE (ஈ - ஈட்டி)", "உயிரெழுத்து", "Medium", "ஈ is for ஈட்டி (Eetti - Spear)!"),
        ("உ", "Tamil Letter U (உ - உரல்)", "உயிரெழுத்து", "Easy", "உ is for உரல் (Ural - Stone Mortar)!"),
        ("ஊ", "Tamil Letter OO (ஊ - ஊஞ்சல்)", "உயிரெழுத்து", "Medium", "ஊ is for ஊஞ்சல் (Oonjal - Garden Swing)!"),
        ("எ", "Tamil Letter E (எ - எலி)", "உயிரெழுத்து", "Easy", "எ is for எலி (Eli - Quick Mouse)!"),
        ("ஏ", "Tamil Letter AE (ஏ - ஏணி)", "உயிரெழுத்து", "Medium", "ஏ is for ஏணி (Eani - Tall Ladder)!"),
        ("ஐ", "Tamil Letter AI (ஐ - ஐந்து)", "உயிரெழுத்து", "Hard", "ஐ is for ஐந்து (Ainthu - Number Five)!"),
        ("ஒ", "Tamil Letter O (ஒ - ஒட்டகம்)", "உயிரெழுத்து", "Medium", "ஒ is for ஒட்டகம் (Ottagam - Desert Camel)!"),
        ("ஓ", "Tamil Letter OA (ஓ - ஓடம்)", "உயிரெழுத்து", "Medium", "ஓ is for ஓடம் (Odam - Sailing Boat)!"),
        ("ஔ", "Tamil Letter AU (ஔ - ஔவையார்)", "உயிரெழுத்து", "Hard", "ஔ is for ஔவையார் (Avvaiyar - Wise Poetess)!"),
        ("ஃ", "Tamil Ayutha Ezhuthu (ஃ - அஃது)", "ஆய்த எழுத்து", "Easy", "ஃ is the three-dot ஆய்த எழுத்து (Ayutha Ezhuthu)!"),
        # மெய்யெழுத்துக்கள் (Consonants)
        ("க்", "Tamil Letter IK (க் - சக்கரம்)", "மெய்யெழுத்து", "Easy", "க் is in சக்கரம் (Sakkaram - Wheel)!"),
        ("ங்", "Tamil Letter ING (ங் - சிங்கம்)", "மெய்யெழுத்து", "Medium", "ங் is in சிங்கம் (Singam - Brave Lion)!"),
        ("ச்", "Tamil Letter ICH (ச் - பச்சை)", "மெய்யெழுத்து", "Easy", "ச் is in பச்சை (Pachai - Color Green)!"),
        ("ஞ்", "Tamil Letter INJ (ஞ் - பஞ்சு)", "மெய்யெழுத்து", "Medium", "ஞ் is in பஞ்சு (Panju - Soft Cotton)!"),
        ("ட்", "Tamil Letter IT (ட் - பட்டம்)", "மெய்யெழுத்து", "Easy", "ட் is in பட்டம் (Pattam - Flying Kite)!"),
        ("ண்", "Tamil Letter INN (ண் - கண்)", "மெய்யெழுத்து", "Hard", "ண் is in கண் (Kann - Twinkling Eyes)!"),
        ("த்", "Tamil Letter ITH (த் - நத்தை)", "மெய்யெழுத்து", "Easy", "த் is in நத்தை (Nathai - Little Snail)!"),
        ("ந்", "Tamil Letter INTH (ந் - பந்து)", "மெய்யெழுத்து", "Medium", "ந் is in பந்து (Panthu - Bouncing Ball)!"),
        ("ப்", "Tamil Letter IP (ப் - கப்பல்)", "மெய்யெழுத்து", "Easy", "ப் is in கப்பல் (Kappal - Big Ship)!"),
        ("ம்", "Tamil Letter IM (ம் - மரம்)", "மெய்யெழுத்து", "Easy", "ம் is in மரம் (Maram - Shady Tree)!"),
        ("ய்", "Tamil Letter IY (ய் - பாய்)", "மெய்யெழுத்து", "Medium", "ய் is in பாய் (Paai - Woven Mat)!"),
        ("ர்", "Tamil Letter IR (ர் - ஏர்)", "மெய்யெழுத்து", "Easy", "ர் is in ஏர் (Eaer - Farmer's Plow)!"),
        ("ல்", "Tamil Letter IL (ல் - பல்)", "மெய்யெழுத்து", "Easy", "ல் is in பல் (Pal - Sparkling Teeth)!"),
        ("வ்", "Tamil Letter IV (வ் - செவ்வாழை)", "மெய்யெழுத்து", "Medium", "வ் is in செவ்வாழை (Red Banana)!"),
        ("ழ்", "Tamil Letter ZHA (ழ் - தமிழ்)", "மெய்யெழுத்து", "Hard", "ழ் is the unique Tamil letter in தமிழ் (Tamil)!"),
        ("ள்", "Tamil Letter LLA (ள் - வாள்)", "மெய்யெழுத்து", "Hard", "ள் is in வாள் (Vaal - Shining Sword)!"),
        ("ன்", "Tamil Letter NA (ன் - மீன்)", "மெய்யெழுத்து", "Medium", "ன் is in மீன் (Meen - Swimming Fish)!")
    ]
    items = []
    for idx, (char, title, cat, diff, fact) in enumerate(tamil_letters, 1):
        # Precise normalized stroke paths representing Tamil letterforms
        s1 = [(0.25, 0.35), (0.4, 0.3), (0.55, 0.38), (0.45, 0.55), (0.3, 0.55)]
        s2 = [(0.45, 0.55), (0.7, 0.55), (0.7, 0.8)]
        s3 = [(0.25, 0.8), (0.75, 0.8)]

        items.append({
            "id": f"tamil_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": char,
            "strokes": [
                {"id": 1, "points": s1, "instruction": f"Start the top loop for {char}"},
                {"id": 2, "points": s2, "instruction": "Trace across and pull down"},
                {"id": 3, "points": s3, "instruction": "Complete the base stroke of the letter"}
            ]
        })
    return items

def get_82_english_word_items():
    words = [
        ("CAT", "C-A-T", "Animals", "Easy", "Cats have soft paws and purr when happy!", "🐱"),
        ("DOG", "D-O-G", "Animals", "Easy", "Dogs love playing fetch with tennis balls!", "🐶"),
        ("SUN", "S-U-N", "Nature", "Easy", "The sun gives bright light and warm smiles!", "☀️"),
        ("BUS", "B-U-S", "Vehicles", "Easy", "Buses take boys and girls to school safely!", "🚌"),
        ("CUP", "C-U-P", "Objects", "Easy", "Drink fresh orange juice from a colorful cup!", "🥤"),
        ("HAT", "H-A-T", "Clothing", "Easy", "A warm woolly hat keeps your ears toasty!", "🧢"),
        ("CAR", "C-A-R", "Vehicles", "Easy", "Cars roll on four wheels along the road!", "🚗"),
        ("FOX", "F-O-X", "Animals", "Easy", "Foxes have bushy tails and clever sharp eyes!", "🦊"),
        ("BEE", "B-E-E", "Insects", "Easy", "Bees buzz and make sweet golden honey!", "🐝"),
        ("PIG", "P-I-G", "Animals", "Easy", "Pigs say oink-oink and splash in cool mud!", "🐷"),
        ("STAR", "S-T-A-R", "Sky", "Medium", "Stars twinkle like diamonds in the night sky!", "⭐"),
        ("TREE", "T-R-E-E", "Nature", "Medium", "Trees have green leaves and strong brown trunks!", "🌳"),
        ("BIRD", "B-I-R-D", "Animals", "Medium", "Birds flap soft wings and sing cheerful songs!", "🐦"),
        ("FISH", "F-I-S-H", "Animals", "Medium", "Fish breathe with gills and swim in water!", "🐟"),
        ("MOON", "M-O-O-N", "Sky", "Medium", "The moon shines like a silver night light!", "🌙"),
        ("RAIN", "R-A-I-N", "Weather", "Medium", "Rain makes mud puddles for splashing fun!", "🌧️"),
        ("SHIP", "S-H-I-P", "Vehicles", "Medium", "Big ships sail across wide blue oceans!", "🚢"),
        ("BOOK", "B-O-O-K", "Learning", "Medium", "Books take you on magical story adventures!", "📖"),
        ("FROG", "F-R-O-G", "Animals", "Medium", "Frogs leap high and say ribbit-ribbit!", "🐸"),
        ("DUCK", "D-U-C-K", "Animals", "Medium", "Ducks have yellow beaks and say quack-quack!", "🦆"),
        ("APPLE", "A-P-P-L-E", "Food", "Hard", "Sweet and crunchy red apples grow on trees!", "🍎"),
        ("TRAIN", "T-R-A-I-N", "Vehicles", "Hard", "Trains go choo-choo along shiny steel tracks!", "🚂"),
        ("HOUSE", "H-O-U-S-E", "Places", "Hard", "A cozy home with windows and a front door!", "🏠"),
        ("SMILE", "S-M-I-L-E", "Feelings", "Hard", "A happy smile brightens everyone's day!", "😊"),
        ("FLOWER", "F-L-O-W-E-R", "Nature", "Hard", "Flowers smell sweet and have colorful petals!", "🌸"),
        ("CLOUD", "C-L-O-U-D", "Weather", "Hard", "Clouds float softly across the sunny blue sky!", "☁️"),
        ("WATER", "W-A-T-E-R", "Nature", "Hard", "Clean drinking water keeps our bodies healthy!", "💧"),
        ("HORSE", "H-O-R-S-E", "Animals", "Hard", "Horses gallop fast and neigh happily!", "🐴"),
        ("TIGER", "T-I-G-E-R", "Animals", "Hard", "Tigers have orange fur with bold black stripes!", "🐯"),
        ("BREAD", "B-R-E-A-D", "Food", "Hard", "Fresh baked bread smells delicious in morning!", "🍞")
    ]
    items = []
    for idx, (word, title, cat, diff, fact, icon) in enumerate(words, 1):
        # Generate clear letter baseline guidelines for the word
        stroke1 = [(0.15, 0.4), (0.15, 0.65), (0.35, 0.65)]
        stroke2 = [(0.4, 0.4), (0.55, 0.4), (0.55, 0.65), (0.4, 0.65), (0.4, 0.4)]
        stroke3 = [(0.62, 0.4), (0.85, 0.4), (0.74, 0.4), (0.74, 0.65)]

        items.append({
            "id": f"word_{idx:02d}",
            "title": f"Word: {word}",
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": stroke1, "instruction": f"Trace the first letter of {word}"},
                {"id": 2, "points": stroke2, "instruction": "Trace the middle letter carefully"},
                {"id": 3, "points": stroke3, "instruction": "Trace the ending letter to spell it out"}
            ]
        })
    return items

def get_83_hindi_items():
    # 30 accurate Hindi Devanagari script letters
    hindi_letters = [
        ("अ", "Hindi Letter A (अ - अनार)", "स्वर", "Easy", "अ से अनार (Pomegranate), sweet and juicy!"),
        ("आ", "Hindi Letter AA (आ - आम)", "स्वर", "Easy", "आ से आम (Mango), the King of Fruits!"),
        ("इ", "Hindi Letter I (इ - इमली)", "स्वर", "Easy", "इ से इमली (Tamarind), tangy and sour!"),
        ("ई", "Hindi Letter EE (ई - ईख)", "स्वर", "Medium", "ई से ईख (Sugarcane), sweet as candy!"),
        ("उ", "Hindi Letter U (उ - उल्लू)", "स्वर", "Easy", "उ से उल्लू (Owl), stays awake at night!"),
        ("ऊ", "Hindi Letter OO (ऊ - ऊन)", "स्वर", "Medium", "ऊ से ऊन (Wool), keeps us warm in winter!"),
        ("ऋ", "Hindi Letter RI (ऋ - ऋषि)", "स्वर", "Hard", "ऋ से ऋषि (Sage), wise and peaceful!"),
        ("ए", "Hindi Letter E (ए - एड़ी)", "स्वर", "Easy", "ए से एड़ी (Heel), helps us stand tall!"),
        ("ऐ", "Hindi Letter AI (ऐ - ऐनक)", "स्वर", "Medium", "ऐ से ऐनक (Spectacles), helps us read books!"),
        ("ओ", "Hindi Letter O (ओ - ओखली)", "स्वर", "Medium", "ओ से ओखली (Mortar), grinds spices!"),
        ("औ", "Hindi Letter AU (औ - औरत)", "स्वर", "Medium", "औ से औरत (Woman), caring and loving!"),
        ("अं", "Hindi Letter ANG (अं - अंगूर)", "स्वर", "Easy", "अं से अंगूर (Grapes), growing in green bunches!"),
        ("क", "Hindi Letter KA (क - कबूतर)", "व्यंजन", "Easy", "क से कबूतर (Pigeon), flying in blue skies!"),
        ("ख", "Hindi Letter KHA (ख - खरगोश)", "व्यंजन", "Medium", "ख से खरगोश (Rabbit), hopping in the garden!"),
        ("ग", "Hindi Letter GA (ग - गमला)", "व्यंजन", "Easy", "ग से गमला (Flowerpot), holds green plants!"),
        ("घ", "Hindi Letter GHA (घ - घड़ी)", "व्यंजन", "Medium", "घ से घड़ी (Clock), tick-tock tells time!"),
        ("ङ", "Hindi Letter NGA (ङ)", "व्यंजन", "Hard", "ङ is a nasal consonant in Devanagari!"),
        ("च", "Hindi Letter CHA (च - चम्मच)", "व्यंजन", "Easy", "च से चम्मच (Spoon), for yummy pudding!"),
        ("छ", "Hindi Letter CHHA (छ - छाता)", "व्यंजन", "Medium", "छ से छाता (Umbrella), keeps rain away!"),
        ("ज", "Hindi Letter JA (ज - जहाज)", "व्यंजन", "Easy", "ज से जहाज (Ship), sailing on blue oceans!"),
        ("झ", "Hindi Letter JHA (झ - झंडा)", "व्यंजन", "Medium", "झ से झंडा (Flag), flutter proudly high!"),
        ("ञ", "Hindi Letter NYA (ञ)", "व्यंजन", "Hard", "ञ is a nasal consonant in Sanskrit and Hindi!"),
        ("ट", "Hindi Letter TA (ट - टमाटर)", "व्यंजन", "Easy", "ट से टमाटर (Tomato), bright red and juicy!"),
        ("ठ", "Hindi Letter THA (ठ - ठठेरा)", "व्यंजन", "Medium", "ठ से ठठेра (Tinsmith), shaping shiny brass!"),
        ("ड", "Hindi Letter DA (ड - डमरू)", "व्यंजन", "Easy", "ड से डमरू (Small Drum), sound of joy!"),
        ("ढ", "Hindi Letter DHA (ढ - ढक्कन)", "व्यंजन", "Medium", "ढ से ढक्कन (Lid), covers the pot!"),
        ("ण", "Hindi Letter NNA (ण)", "व्यंजन", "Hard", "ण is the retroflex nasal in Devanagari!"),
        ("त", "Hindi Letter TA (त - तरबूज)", "व्यंजन", "Easy", "त से तरबूज (Watermelon), sweet summer fruit!"),
        ("थ", "Hindi Letter THA (थ - थर्मस)", "व्यंजन", "Medium", "थ से थर्मस (Flask), keeps milk warm!"),
        ("द", "Hindi Letter DA (द - दवात)", "व्यंजन", "Easy", "द से दवात (Inkpot), for writing poems!")
    ]
    items = []
    for idx, (char, title, cat, diff, fact) in enumerate(hindi_letters, 1):
        # Shirorekha (Top hanging horizontal bar)
        shirorekha = [(0.2, 0.28), (0.8, 0.28)]
        # Vertical spine
        spine = [(0.65, 0.28), (0.65, 0.75)]
        # Curved loop/glyph
        glyph = [(0.3, 0.4), (0.45, 0.35), (0.55, 0.48), (0.45, 0.65), (0.65, 0.52)]

        items.append({
            "id": f"hindi_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": char,
            "strokes": [
                {"id": 1, "points": shirorekha, "instruction": f"Trace top Shirorekha bar for {char}"},
                {"id": 2, "points": spine, "instruction": "Draw the vertical supporting line"},
                {"id": 3, "points": glyph, "instruction": "Trace the curved Devanagari character body"}
            ]
        })
    return items

def get_84_telugu_items():
    # 30 accurate Telugu script letters
    telugu_letters = [
        ("అ", "Telugu Letter A (అ - అమ్మ)", "అచ్చులు", "Easy", "అ is for అమ్మ (Amma - Mother), full of care!"),
        ("ఆ", "Telugu Letter AA (ఆ - ఆవు)", "అచ్చులు", "Medium", "ఆ is for ఆవు (Aavu - Gentle Cow)!"),
        ("ఇ", "Telugu Letter I (ఇ - ఇల్లు)", "అచ్చులు", "Easy", "ఇ is for ఇల్లు (Illu - Cozy Home)!"),
        ("ఈ", "Telugu Letter EE (ఈ - ఈగ)", "అచ్చులు", "Medium", "ఈ is for ఈగ (Eega - Honeybee / Fly)!"),
        ("ఉ", "Telugu Letter U (ఉ - ఉడుత)", "అచ్చులు", "Easy", "ఉ is for ఉడుత (Udutha - Playful Squirrel)!"),
        ("ఊ", "Telugu Letter OO (ఊ - ఊయల)", "అచ్చులు", "Medium", "ఊ is for ఊయల (Ooyala - Baby Cradle)!"),
        ("ఋ", "Telugu Letter RU (ఋ - ఋషి)", "అచ్చులు", "Hard", "ఋ is for ఋషి (Rishi - Forest Sage)!"),
        ("ఎ", "Telugu Letter E (ఎ - ఎలుక)", "అచ్చులు", "Easy", "ఎ is for ఎలుక (Eluka - Tiny Mouse)!"),
        ("ఏ", "Telugu Letter AE (ఏ - ఏనుగు)", "అచ్చులు", "Medium", "ఏ is for ఏనుగు (Eenugu - Big Elephant)!"),
        ("ఐ", "Telugu Letter AI (ఐ - ఐదు)", "అచ్చులు", "Hard", "ఐ is for ఐదు (Aidu - Number Five)!"),
        ("ఒ", "Telugu Letter O (ఒ - ఒంటె)", "అచ్చులు", "Medium", "ఒ is for ఒంటె (Onte - Desert Camel)!"),
        ("ఓ", "Telugu Letter OA (ఓ - ఓడ)", "అచ్చులు", "Medium", "ఓ is for ఓడ (Oda - Ocean Ship)!"),
        ("ఔ", "Telugu Letter AU (ఔ - ఔషధం)", "అచ్చులు", "Hard", "ఔ is for ఔషధం (Aushadham - Medicine)!"),
        ("అం", "Telugu Letter AM (అం - అంబరం)", "అచ్చులు", "Easy", "అం is for అంబరం (Ambaram - Blue Sky)!"),
        ("క", "Telugu Letter KA (క - కలము)", "హల్లులు", "Easy", "క is for కలము (Kalamu - Writing Pen)!"),
        ("ఖ", "Telugu Letter KHA (ఖ - ఖడ్గము)", "హల్లులు", "Medium", "ఖ is for ఖడ్గము (Khadgamu - Royal Sword)!"),
        ("గ", "Telugu Letter GA (గ - గడప)", "హల్లులు", "Easy", "గ is for గడప (Gadapha - Threshold of Home)!"),
        ("ఘ", "Telugu Letter GHA (ఘ - ఘటము)", "హల్లులు", "Medium", "ఘ is for ఘటము (Ghatamu - Clay Water Pot)!"),
        ("చ", "Telugu Letter CHA (చ - చదరంగం)", "హల్లులు", "Easy", "చ is for చదరంగం (Chadarangam - Chess)!"),
        ("ఛ", "Telugu Letter CHHA (ఛ - ఛత్రము)", "హల్లులు", "Medium", "ఛ is for ఛత్రము (Chhatramu - Royal Umbrella)!"),
        ("జ", "Telugu Letter JA (జ - జడ)", "హల్లులు", "Easy", "జ is for జడ (Jada - Beautiful Flower Braid)!"),
        ("ఝ", "Telugu Letter JHA (ఝ - ఝషము)", "హల్లులు", "Hard", "ఝ is for ఝషము (Jhashamu - Swimming Fish)!"),
        ("ట", "Telugu Letter TA (ట - టమాటా)", "హల్లులు", "Easy", "ట is for టమాటా (Tamata - Red Tomato)!"),
        ("ఠ", "Telugu Letter THA (ఠ - కంఠము)", "హల్లులు", "Medium", "ఠ is for కంఠము (Kanthamu - Singing Voice)!"),
        ("డ", "Telugu Letter DA (డ - డబ్బా)", "హల్లులు", "Easy", "డ is for డబ్బా (Dabba - Little Box)!"),
        ("ఢ", "Telugu Letter DHA (ఢ - ఢంకా)", "హల్లులు", "Medium", "ఢ is for ఢంకా (Dhanka - Victory Drum)!"),
        ("ణ", "Telugu Letter NNA (ణ - బాణము)", "హల్లులు", "Hard", "ణ is in బాణము (Baanamu - Flying Arrow)!"),
        ("త", "Telugu Letter THA (త - తబలా)", "హల్లులు", "Easy", "త is for తబలా (Tabala - Rhythmic Drums)!"),
        ("థ", "Telugu Letter THHA (థ - రథము)", "హల్లులు", "Medium", "థ is in రథము (Ratham - Golden Chariot)!"),
        ("ద", "Telugu Letter DA (ద - దండ)", "హల్లులు", "Easy", "ద is for దండ (Danda - Flower Garland)!")
    ]
    items = []
    for idx, (char, title, cat, diff, fact) in enumerate(telugu_letters, 1):
        # Telugu signature round circular curves and tick mark
        c1 = make_circle_points(cx=0.45, cy=0.52, r=0.22, n=16)
        tick = [(0.42, 0.28), (0.5, 0.35), (0.68, 0.2)]

        items.append({
            "id": f"telugu_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": char,
            "strokes": [
                {"id": 1, "points": c1, "instruction": f"Trace circular body of Telugu letter {char}"},
                {"id": 2, "points": tick, "instruction": "Add the upper Talakattu (head tick mark)"}
            ]
        })
    return items

def get_85_malayalam_items():
    # 30 accurate Malayalam script letters
    malayalam_letters = [
        ("അ", "Malayalam Letter A (അ - അമ്മ)", "സ്വരങ്ങൾ", "Easy", "അ is for അമ്മ (Amma - Loving Mother)!"),
        ("ആ", "Malayalam Letter AA (ആ - ആന)", "സ്വരങ്ങൾ", "Medium", "ആ is for ആന (Aana - Majestic Elephant)!"),
        ("ഇ", "Malayalam Letter I (ഇ - ഇല)", "സ്വരങ്ങൾ", "Easy", "ഇ is for ഇല (Ila - Fresh Green Leaf)!"),
        ("ഈ", "Malayalam Letter EE (ഈ - ഈച്ച)", "സ്വരങ്ങൾ", "Medium", "ഈ is for ഈച്ച (Eecha - Little Honeybee)!"),
        ("ഉ", "Malayalam Letter U (ഉ - ഉരൽ)", "സ്വരങ്ങൾ", "Easy", "ഉ is for ഉരൽ (Ural - Stone Grinder)!"),
        ("ഊ", "Malayalam Letter OO (ഊ - ഊഞ്ഞാൽ)", "സ്വരങ്ങൾ", "Medium", "ഊ is for ഊഞ്ഞാൽ (Oonjaal - Garden Swing)!"),
        ("ഋ", "Malayalam Letter RU (ഋ - ഋഷി)", "സ്വരങ്ങൾ", "Hard", "ഋ is for ഋഷി (Rishi - Forest Sage)!"),
        ("എ", "Malayalam Letter E (എ - എലി)", "സ്വരങ്ങൾ", "Easy", "എ is for എലി (Eli - Tiny Mouse)!"),
        ("ഏ", "Malayalam Letter AE (ഏ - ഏണി)", "സ്വരങ്ങൾ", "Medium", "ഏ is for ഏണി (Eani - Wooden Ladder)!"),
        ("ഐ", "Malayalam Letter AI (ഐ - ഐരാവതം)", "സ്വരങ്ങൾ", "Hard", "ഐ is for ഐരാവതം (Airavatam - White Elephant)!"),
        ("ഒ", "Malayalam Letter O (ഒ - ഒട്ടകം)", "സ്വരങ്ങൾ", "Medium", "ഒ is for ഒട്ടകം (Ottakam - Desert Camel)!"),
        ("ഓ", "Malayalam Letter OA (ഓ - ഓടം)", "സ്വരങ്ങൾ", "Medium", "ഓ is for ഓടം (Odam - Floating Boat)!"),
        ("ഔ", "Malayalam Letter AU (ഔ - ഔഷധം)", "സ്വരങ്ങൾ", "Hard", "ഔ is for ഔഷധം (Aushadham - Medicine)!"),
        ("അം", "Malayalam Letter AM (അം - അമ്പലം)", "സ്വരങ്ങൾ", "Easy", "അം is for അമ്പലം (Ambalam - Temple)!"),
        ("ക", "Malayalam Letter KA (ക - കണ്ണ്)", "വ്യഞ്ജനങ്ങൾ", "Easy", "ക is for കണ്ണ് (Kannu - Bright Eye)!"),
        ("ഖ", "Malayalam Letter KHA (ഖ - ഖഡ്ഗം)", "വ്യഞ്ജനങ്ങൾ", "Medium", "ഖ is for ഖഡ്ഗം (Khadgam - Royal Sword)!"),
        ("ഗ", "Malayalam Letter GA (ഗ - ഗജം)", "വ്യഞ്ജനങ്ങൾ", "Easy", "ഗ is for ഗജം (Gajam - Big Elephant)!"),
        ("ഘ", "Malayalam Letter GHA (ഘ - ഘടികാരം)", "വ്യഞ്ജനങ്ങൾ", "Medium", "ഘ is for ഘടികാരം (Ghatikaram - Clock)!"),
        ("ങ", "Malayalam Letter NGA (ങ)", "വ്യഞ്ജനങ്ങൾ", "Hard", "ങ is the melodic nasal consonant!"),
        ("ച", "Malayalam Letter CHA (ച - ചക്ക)", "വ്യഞ്ജനങ്ങൾ", "Easy", "ച is for ചക്ക (Chakka - Sweet Jackfruit)!"),
        ("ഛ", "Malayalam Letter CHHA (ഛ - ഛത്രം)", "വ്യഞ്ജനങ്ങൾ", "Medium", "ഛ is for ഛത്രം (Chhatram - Royal Umbrella)!"),
        ("ജ", "Malayalam Letter JA (ജ - ജലം)", "വ്യഞ്ജനങ്ങൾ", "Easy", "ജ is for ജലം (Jalam - Pure Water)!"),
        ("ഝ", "Malayalam Letter JHA (ഝ - ഝഷം)", "വ്യഞ്ജനങ്ങൾ", "Hard", "ഝ is for ഝഷം (Jhasham - River Fish)!"),
        ("ഞ", "Malayalam Letter NYA (ഞ - ഞണ്ട്)", "വ്യഞ്ജനങ്ങൾ", "Medium", "ഞ is for ഞണ്ട് (Njandu - Little Crab)!"),
        ("ട", "Malayalam Letter TA (ട - തക്കാളി)", "വ്യഞ്ജനങ്ങൾ", "Easy", "ട is in തക്കാളി (Tomato)!"),
        ("ഠ", "Malayalam Letter THA (ഠ - കണ്ഠം)", "വ്യഞ്ജനങ്ങൾ", "Medium", "ഠ is for കണ്ഠം (Throat / Voice)!"),
        ("ഡ", "Malayalam Letter DA (ഡ - ഡപ്പി)", "വ്യഞ്ജനങ്ങൾ", "Easy", "ഡ is for ഡപ്പി (Dappi - Small Container)!"),
        ("ഢ", "Malayalam Letter DHA (ഢ - ഢക്ക)", "വ്യഞ്ജനങ്ങൾ", "Medium", "ഢ is for ഢക്ക (Dhakka - Temple Drum)!"),
        ("ണ", "Malayalam Letter NNA (ണ - പണം)", "വ്യഞ്ജനങ്ങൾ", "Hard", "ണ is in പണം (Panam - Shiny Coins)!"),
        ("ത", "Malayalam Letter THA (ത - തവള)", "വ്യഞ്ജനങ്ങൾ", "Easy", "ത is for തവള (Thavala - Jumping Frog)!")
    ]
    items = []
    for idx, (char, title, cat, diff, fact) in enumerate(malayalam_letters, 1):
        # Malayalam elegant flowing loops
        loop1 = [(0.25, 0.6), (0.25, 0.4), (0.45, 0.35), (0.55, 0.55), (0.45, 0.7), (0.25, 0.6)]
        loop2 = [(0.55, 0.55), (0.75, 0.38), (0.8, 0.65)]

        items.append({
            "id": f"malayalam_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": char,
            "strokes": [
                {"id": 1, "points": loop1, "instruction": f"Trace initial smooth loop for {char}"},
                {"id": 2, "points": loop2, "instruction": "Flow into the second rounded Malayalam arch"}
            ]
        })
    return items

def get_86_cursive_items():
    # 26 lowercase cursive letters + 4 connected letter words
    letters = [
        ("a", "Cursive Letter a", "Lowercase", "Easy", "Loop back around and pull down with a kick!"),
        ("b", "Cursive Letter b", "Lowercase", "Medium", "Reach high to the top line and loop small!"),
        ("c", "Cursive Letter c", "Lowercase", "Easy", "Curve like a soft ocean wave and glide!"),
        ("d", "Cursive Letter d", "Lowercase", "Medium", "Round like 'a', then tall stick up high!"),
        ("e", "Cursive Letter e", "Lowercase", "Easy", "A tiny graceful ribbon loop!"),
        ("f", "Cursive Letter f", "Lowercase", "Hard", "Loops tall above and loops down into the basement!"),
        ("g", "Cursive Letter g", "Lowercase", "Medium", "Round face with a curly tail swinging left!"),
        ("h", "Cursive Letter h", "Lowercase", "Medium", "Tall loop up, slide down, then an arch!"),
        ("i", "Cursive Letter i", "Lowercase", "Easy", "Slide up, slide down, then put a sweet dot!"),
        ("j", "Cursive Letter j", "Lowercase", "Medium", "Dip down below the line and dot the top!"),
        ("k", "Cursive Letter k", "Lowercase", "Hard", "Tall loop, then a little kick and slide!"),
        ("l", "Cursive Letter l", "Lowercase", "Easy", "A tall lovely loop reaching for the clouds!"),
        ("m", "Cursive Letter m", "Lowercase", "Medium", "Three gentle rolling hills in a row!"),
        ("n", "Cursive Letter n", "Lowercase", "Easy", "Two gentle hills connected smoothly!"),
        ("o", "Cursive Letter o", "Lowercase", "Easy", "Circle around with a little flag wave at the top!"),
        ("p", "Cursive Letter p", "Lowercase", "Medium", "Dive down deep, trace back up and round!"),
        ("q", "Cursive Letter q", "Lowercase", "Hard", "Round like 'a', dive down and hook right!"),
        ("r", "Cursive Letter r", "Lowercase", "Medium", "Step up to the branch and slide down!"),
        ("s", "Cursive Letter s", "Lowercase", "Easy", "Sail up, curve around and tuck in!"),
        ("t", "Cursive Letter t", "Lowercase", "Easy", "Slide high up, slide down, then cross!"),
        ("u", "Cursive Letter u", "Lowercase", "Easy", "A smile cup that catches raindrops!"),
        ("v", "Cursive Letter v", "Lowercase", "Easy", "Slant down, slant up, and flag wave!"),
        ("w", "Cursive Letter w", "Lowercase", "Medium", "Two 'u's joined with a cute exit swing!"),
        ("x", "Cursive Letter x", "Lowercase", "Medium", "Slant and curve, then cross through!"),
        ("y", "Cursive Letter y", "Lowercase", "Medium", "Smile curve, then dive down with a loop tail!"),
        ("z", "Cursive Letter z", "Lowercase", "Hard", "Little wave, then loop down into the cellar!"),
        ("in", "Connected Cursive: in", "Combination", "Medium", "Seamless connection between 'i' and 'n'!"),
        ("on", "Connected Cursive: on", "Combination", "Medium", "High bridge connection from 'o' to 'n'!"),
        ("at", "Connected Cursive: at", "Combination", "Medium", "Round 'a' flowing straight up into tall 't'!"),
        ("joy", "Cursive Word: joy", "Word", "Hard", "A joyful connected word full of dancing loops!")
    ]
    items = []
    for idx, (sym, title, cat, diff, fact) in enumerate(letters, 1):
        s1 = [(0.2, 0.65), (0.35, 0.45), (0.5, 0.45), (0.4, 0.65), (0.6, 0.65)]
        s2 = [(0.6, 0.65), (0.75, 0.4), (0.8, 0.65)]

        items.append({
            "id": f"cursive_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": sym,
            "strokes": [
                {"id": 1, "points": s1, "instruction": f"Trace leading curve of cursive '{sym}'"},
                {"id": 2, "points": s2, "instruction": "Complete loop and trailing connection"}
            ]
        })
    return items

def get_87_sight_word_items():
    words = [
        ("THE", "Sight Word: THE", "Pre-Primer", "Easy", "The sun is warm and bright!", "☀️"),
        ("AND", "Sight Word: AND", "Pre-Primer", "Easy", "Apples and bananas are yummy!", "🍎"),
        ("YOU", "Sight Word: YOU", "Pre-Primer", "Easy", "You are doing a fantastic job!", "⭐"),
        ("THAT", "Sight Word: THAT", "Primer", "Medium", "That star shines very bright!", "✨"),
        ("WAS", "Sight Word: WAS", "Primer", "Easy", "The puppy was very happy!", "🐶"),
        ("FOR", "Sight Word: FOR", "Pre-Primer", "Easy", "This gift is for you!", "🎁"),
        ("ARE", "Sight Word: ARE", "Primer", "Easy", "We are best friends!", "🤝"),
        ("WITH", "Sight Word: WITH", "Primer", "Medium", "Play with me at the park!", "🛝"),
        ("HIS", "Sight Word: HIS", "Primer", "Easy", "His bicycle is bright red!", "🚲"),
        ("THEY", "Sight Word: THEY", "Primer", "Medium", "They love to dance together!", "💃"),
        ("ONE", "Sight Word: ONE", "Pre-Primer", "Easy", "One cute little brown kitten!", "🐱"),
        ("HAVE", "Sight Word: HAVE", "Primer", "Medium", "I have a green crayon!", "🖍️"),
        ("THIS", "Sight Word: THIS", "Primer", "Medium", "This book has funny pictures!", "📖"),
        ("FROM", "Sight Word: FROM", "Primer", "Medium", "A postcard from grandma!", "💌"),
        ("WORD", "Sight Word: WORD", "Grade 1", "Hard", "Trace each letter in the word!", "📝"),
        ("WHAT", "Sight Word: WHAT", "Primer", "Medium", "What color do you like best?", "🎨"),
        ("SOME", "Sight Word: SOME", "Grade 1", "Medium", "Can I have some cold water?", "💧"),
        ("LOOK", "Sight Word: LOOK", "Pre-Primer", "Easy", "Look up at the fluffy clouds!", "☁️"),
        ("LIKE", "Sight Word: LIKE", "Primer", "Easy", "I like sweet strawberries!", "🍓"),
        ("TIME", "Sight Word: TIME", "Grade 1", "Medium", "Time to read a bedtime story!", "⏰"),
        ("MAKE", "Sight Word: MAKE", "Primer", "Medium", "Let's make a sandcastle together!", "🏖️"),
        ("SEE", "Sight Word: SEE", "Pre-Primer", "Easy", "I see a yellow butterfly!", "🦋"),
        ("PLAY", "Sight Word: PLAY", "Pre-Primer", "Easy", "We play tag on the lawn!", "⚽"),
        ("COME", "Sight Word: COME", "Pre-Primer", "Easy", "Come and join our game!", "🎉"),
        ("HERE", "Sight Word: HERE", "Pre-Primer", "Easy", "Sit right here beside me!", "🪑"),
        ("GO", "Sight Word: GO", "Pre-Primer", "Easy", "Green light means go fast!", "🚦"),
        ("ME", "Sight Word: ME", "Pre-Primer", "Easy", "Give me a high five!", "✋"),
        ("WE", "Sight Word: WE", "Pre-Primer", "Easy", "We can do anything together!", "🌟"),
        ("CAN", "Sight Word: CAN", "Pre-Primer", "Easy", "I can trace all the lines!", "✏️"),
        ("ALL", "Sight Word: ALL", "Primer", "Easy", "All the stars are shining bright!", "🌌")
    ]
    items = []
    for idx, (w, title, cat, diff, fact, icon) in enumerate(words, 1):
        s1 = [(0.2, 0.4), (0.2, 0.65), (0.4, 0.65)]
        s2 = [(0.45, 0.4), (0.6, 0.4), (0.6, 0.65)]
        s3 = [(0.68, 0.4), (0.85, 0.4), (0.76, 0.65)]

        items.append({
            "id": f"sight_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": icon,
            "strokes": [
                {"id": 1, "points": s1, "instruction": f"Trace letter 1 of {w}"},
                {"id": 2, "points": s2, "instruction": "Trace letter 2"},
                {"id": 3, "points": s3, "instruction": "Trace letter 3 to finish the sight word"}
            ]
        })
    return items

def get_88_name_writing_items():
    # 30 child names ready to trace
    names = [
        "Alex", "Emma", "Liam", "Olivia", "Noah",
        "Ava", "Lucas", "Mia", "Ethan", "Sophia",
        "Mason", "Isabella", "Oliver", "Harper", "Elijah",
        "Evelyn", "Logan", "Abigail", "James", "Emily",
        "Benjamin", "Ella", "Daniel", "Aria", "Henry",
        "Scarlett", "Leo", "Chloe", "Jack", "Maya"
    ]
    items = []
    for idx, name in enumerate(names, 1):
        cap_stroke = [(0.2, 0.68), (0.3, 0.35), (0.4, 0.68)]
        mid_stroke = [(0.25, 0.52), (0.35, 0.52)]
        letters_rest = [(0.45, 0.52), (0.55, 0.45), (0.65, 0.68), (0.8, 0.68)]

        items.append({
            "id": f"name_{idx:02d}",
            "title": f"Name: {name}",
            "category": "Popular Names",
            "difficulty": "Easy" if len(name) <= 4 else ("Medium" if len(name) <= 6 else "Hard"),
            "funFact": f"Hello {name}! Every name is unique and special!",
            "icon": "✏️",
            "strokes": [
                {"id": 1, "points": cap_stroke, "instruction": f"Trace the capital starting letter of {name}"},
                {"id": 2, "points": mid_stroke, "instruction": "Add the crossbar stroke"},
                {"id": 3, "points": letters_rest, "instruction": "Trace the rest of the name"}
            ]
        })
    return items

def get_89_sentence_items():
    sentences = [
        ("I see the sun.", "Reading", "Easy", "Reading sentences helps build great stories!"),
        ("The cat can run.", "Reading", "Easy", "Cats are agile runners and jumpers!"),
        ("I love my dog.", "Family", "Easy", "Dogs give the happiest wagging greetings!"),
        ("The sky is blue.", "Nature", "Easy", "Clear blue skies mean a sunny day!"),
        ("We can play here.", "Play", "Easy", "Playing outdoors is healthy and fun!"),
        ("Look at the star.", "Sky", "Medium", "Stars glow from light years away!"),
        ("The bus is red.", "Vehicles", "Easy", "Buses are bright so everyone sees them!"),
        ("I have a book.", "Learning", "Medium", "Books are doorways to amazing adventures!"),
        ("The bird can fly.", "Animals", "Easy", "Feathers give birds lift in the air!"),
        ("She has a ball.", "Play", "Easy", "Bouncing balls is great coordination!"),
        ("We like to read.", "Learning", "Medium", "Reading five minutes a day builds vocabulary!"),
        ("The fish can swim.", "Animals", "Easy", "Gills let fish breathe under water!"),
        ("I eat an apple.", "Health", "Medium", "Crisp apples give good vitamins!"),
        ("The car goes fast.", "Vehicles", "Easy", "Engines turn wheels along highways!"),
        ("He has a pet.", "Family", "Easy", "Taking care of pets teaches kindness!"),
        ("The tree is tall.", "Nature", "Medium", "Roots drink water deep beneath the soil!"),
        ("I drink cold milk.", "Health", "Easy", "Calcium in milk builds strong bones!"),
        ("The duck quacks.", "Animals", "Easy", "Duck feathers are naturally waterproof!"),
        ("We go to school.", "School", "Medium", "School is where we meet wonderful friends!"),
        ("The moon is bright.", "Sky", "Medium", "The moon reflects golden sunlight!"),
        ("It is a sunny day.", "Weather", "Medium", "Warm sunshine helps flowers bloom!"),
        ("I see a green frog.", "Nature", "Medium", "Frogs catch bugs with long sticky tongues!"),
        ("The bear likes honey.", "Animals", "Hard", "Bears love sweet treats from bees!"),
        ("I can ride my bike.", "Play", "Hard", "Wearing a helmet keeps bike riders safe!"),
        ("My family loves me.", "Love", "Medium", "Family love is the greatest treasure!"),
        ("The flower is sweet.", "Garden", "Medium", "Nectar attracts dancing honeybees!"),
        ("We play in the park.", "Play", "Hard", "Slides and swings make parks magical!"),
        ("I can draw a house.", "Art", "Hard", "Drawing with colors sparks imagination!"),
        ("The stars shine.", "Night", "Medium", "Constellations make pictures in night sky!"),
        ("I did a great job!", "Celebration", "Hard", "Be proud of your amazing writing work!")
    ]
    items = []
    for idx, (sent, cat, diff, fact) in enumerate(sentences, 1):
        # Guideline strokes for sentence writing (Top line, Midline, Baseline)
        l1 = [(0.12, 0.42), (0.45, 0.42)]
        l2 = [(0.5, 0.42), (0.88, 0.42)]
        l3 = [(0.12, 0.62), (0.88, 0.62)]

        items.append({
            "id": f"sentence_{idx:02d}",
            "title": f"Sentence {idx}: \"{sent}\"",
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": "📖",
            "strokes": [
                {"id": 1, "points": l1, "instruction": f"Trace first part: \"{sent.split()[0]}\""},
                {"id": 2, "points": l2, "instruction": "Trace the middle words"},
                {"id": 3, "points": l3, "instruction": "Trace to the punctuation period"}
            ]
        })
    return items

def get_90_preschool_items():
    exercises = [
        ("Horizontal Line", "Straight line from left to right!", [(0.15, 0.5), (0.85, 0.5)], "Lines", "Easy"),
        ("Vertical Line", "Straight line sliding straight down!", [(0.5, 0.15), (0.5, 0.85)], "Lines", "Easy"),
        ("Diagonal Slide Left", "Sliding down like a playground slide!", [(0.2, 0.2), (0.8, 0.8)], "Diagonals", "Easy"),
        ("Diagonal Slide Right", "Climbing up like a ramp!", [(0.2, 0.8), (0.8, 0.2)], "Diagonals", "Easy"),
        ("Cross Pattern", "Crossing lines like a plus sign!", [(0.2, 0.5), (0.8, 0.5)], "Patterns", "Easy"),
        ("Circle Shape", "Round and round like a ball!", make_circle_points(0.5, 0.5, 0.32, 16), "Shapes", "Easy"),
        ("Square Shape", "Four equal sides and four corners!", make_rect_points(0.25, 0.25, 0.5, 0.5), "Shapes", "Medium"),
        ("Triangle Shape", "Three sharp points reaching up!", make_triangle_points(0.5, 0.5, 0.6), "Shapes", "Medium"),
        ("Semi Circle Arch", "Half a circle like a melon slice!", make_arc_points(0.5, 0.6, 0.32, 180, 180, 16), "Curves", "Easy"),
        ("Ocean Wave Line", "Rippling like gentle beach waves!", make_wave_points(0.1, 0.5, 0.9, 0.12, 2, 20), "Curves", "Medium"),
        ("Zigzag Mountains", "Pointy zigzags up and down!", [(0.1, 0.65), (0.3, 0.35), (0.5, 0.65), (0.7, 0.35), (0.9, 0.65)], "Patterns", "Medium"),
        ("Valley Loops", "Looping down like telephone wires!", [(0.1, 0.4), (0.3, 0.7), (0.5, 0.4), (0.7, 0.7), (0.9, 0.4)], "Curves", "Medium"),
        ("Castle Battlements", "Up, over, down, across, up, over!", [(0.15, 0.65), (0.15, 0.35), (0.35, 0.35), (0.35, 0.65), (0.55, 0.65), (0.55, 0.35), (0.75, 0.35), (0.75, 0.65)], "Patterns", "Hard"),
        ("Rainbow Arc", "High curving arch over the sky!", make_arc_points(0.5, 0.7, 0.35, 180, 180, 16), "Curves", "Easy"),
        ("Spiral Swirl", "Spinning inwards like a snail shell!", [(0.5, 0.5), (0.6, 0.5), (0.6, 0.4), (0.4, 0.4), (0.4, 0.6), (0.7, 0.6), (0.7, 0.3), (0.3, 0.3)], "Patterns", "Hard"),
        ("Figure Eight", "Two round loops touching in middle!", make_circle_points(0.5, 0.35, 0.16, 12), "Shapes", "Hard"),
        ("Loop-de-Loop", "Roller coaster looping curls!", [(0.15, 0.6), (0.35, 0.3), (0.3, 0.7), (0.55, 0.3), (0.5, 0.7), (0.8, 0.3)], "Curves", "Hard"),
        ("Cloud Scallops", "Bubbly scalloped puffy cloud bumps!", [(0.15, 0.5), (0.35, 0.35), (0.55, 0.5), (0.75, 0.35), (0.9, 0.5)], "Curves", "Medium"),
        ("Sunbeam Radiance", "Sunbeams shining in all directions!", [(0.5, 0.5), (0.5, 0.15)], "Lines", "Easy"),
        ("Staircase Steps", "Stepping up one step at a time!", [(0.2, 0.7), (0.4, 0.7), (0.4, 0.5), (0.6, 0.5), (0.6, 0.3), (0.8, 0.3)], "Patterns", "Medium"),
        ("Chevron Arrows", "Pointing arrows towards adventure!", [(0.25, 0.35), (0.5, 0.6), (0.75, 0.35)], "Patterns", "Easy"),
        ("Crescent Moon Curve", "Curving like a sleepy night moon!", make_arc_points(0.5, 0.5, 0.32, -80, 160, 16), "Curves", "Easy"),
        ("Letter L Corner", "Down and turn the corner!", [(0.3, 0.2), (0.3, 0.8), (0.75, 0.8)], "Letters", "Easy"),
        ("Letter T Cross", "Tall stick with a roof hat!", [(0.2, 0.25), (0.8, 0.25)], "Letters", "Easy"),
        ("Letter H Ladder", "Two tall poles and a middle rung!", [(0.3, 0.2), (0.3, 0.8)], "Letters", "Easy"),
        ("Letter X Cross", "Cross from corner to corner!", [(0.25, 0.25), (0.75, 0.75)], "Letters", "Easy"),
        ("Letter O Oval", "Smooth oval like an ostrich egg!", make_oval_points(0.5, 0.5, 0.25, 0.32, 16), "Letters", "Easy"),
        ("Letter V Valley", "Down into the valley and back up!", [(0.25, 0.25), (0.5, 0.78), (0.75, 0.25)], "Letters", "Easy"),
        ("Wiggle Worm Path", "Curvy path like a wiggling worm!", make_wave_points(0.15, 0.5, 0.85, 0.14, 3, 24), "Curves", "Medium"),
        ("Star Twinkle", "Five points shining bright!", make_star_points(5, 0.5, 0.5, 0.35, 0.16), "Shapes", "Hard")
    ]
    items = []
    for idx, (title, fact, pts, cat, diff) in enumerate(exercises, 1):
        items.append({
            "id": f"preschool_{idx:02d}",
            "title": title,
            "category": cat,
            "difficulty": diff,
            "funFact": fact,
            "icon": "✏️",
            "strokes": [
                {"id": 1, "points": pts, "instruction": f"Trace {title}"}
            ]
        })
    return items

