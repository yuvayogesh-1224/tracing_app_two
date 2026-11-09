# master_apps_data_51_100.py

from data_batch_51_60 import get_batch_51_60
from data_batch_61_70 import get_batch_61_70
from data_batch_71_80 import get_batch_71_80
from data_batch_81_90 import get_batch_81_90
from data_batch_91_100 import get_batch_91_100

APP_METADATA = {
    51: ("51_Car_Tracing", "car_tracing", "Car Tracing Kids", "#FF5252"),
    52: ("52_Bus_Tracing", "bus_tracing", "Bus Tracing Kids", "#FFB300"),
    53: ("53_Truck_Tracing", "truck_tracing", "Truck Tracing Kids", "#FF7043"),
    54: ("54_Train_Tracing", "train_tracing", "Train Tracing Kids", "#5C6BC0"),
    55: ("55_Airplane_Tracing", "airplane_tracing", "Airplane Tracing Kids", "#42A5F5"),
    56: ("56_Helicopter_Tracing", "helicopter_tracing", "Helicopter Tracing Kids", "#26A69A"),
    57: ("57_Boat_Tracing", "boat_tracing", "Boat Tracing Kids", "#0288D1"),
    58: ("58_Tractor_Tracing", "tractor_tracing", "Tractor Tracing Kids", "#43A047"),
    59: ("59_Construction_Vehicle_Tracing", "construction_vehicle_tracing", "Construction Vehicle Tracing", "#FB8C00"),
    60: ("60_Racing_Vehicle_Tracing", "racing_vehicle_tracing", "Racing Vehicle Tracing", "#E53935"),

    61: ("61_Flower_Tracing", "flower_tracing", "Flower Tracing Kids", "#EC407A"),
    62: ("62_Tree_Tracing", "tree_tracing", "Tree Tracing Kids", "#2E7D32"),
    63: ("63_Leaf_Tracing", "leaf_tracing", "Leaf Tracing Kids", "#558B2F"),
    64: ("64_Rainbow_Tracing", "rainbow_tracing", "Rainbow Tracing Kids", "#8E24AA"),
    65: ("65_Sun_Moon_Tracing", "sun_moon_tracing", "Sun Moon Tracing", "#FDD835"),
    66: ("66_Cloud_Tracing", "cloud_tracing", "Cloud Tracing Kids", "#29B6F6"),
    67: ("67_Mountain_Tracing", "mountain_tracing", "Mountain Tracing Kids", "#78909C"),
    68: ("68_Fruit_Tracing", "fruit_tracing", "Fruit Tracing Kids", "#E91E63"),
    69: ("69_Vegetable_Tracing", "vegetable_tracing", "Vegetable Tracing Kids", "#388E3C"),
    70: ("70_Garden_Tracing", "garden_tracing", "Garden Tracing Kids", "#689F38"),

    71: ("71_Princess_Tracing", "princess_tracing", "Princess Tracing Kids", "#F06292"),
    72: ("72_Unicorn_Tracing", "unicorn_tracing", "Unicorn Tracing Kids", "#AB47BC"),
    73: ("73_Mermaid_Tracing", "mermaid_tracing", "Mermaid Tracing Kids", "#26C6DA"),
    74: ("74_Robot_Tracing", "robot_tracing", "Robot Tracing Kids", "#7E57C2"),
    75: ("75_Superhero_Tracing", "superhero_tracing", "Superhero Tracing Kids", "#D32F2F"),
    76: ("76_Fairy_Tracing", "fairy_tracing", "Fairy Tracing Kids", "#BA68C8"),
    77: ("77_Castle_Tracing", "castle_tracing", "Castle Tracing Kids", "#5C6BC0"),
    78: ("78_Dragon_Tracing", "dragon_tracing", "Dragon Tracing Kids", "#C2185B"),
    79: ("79_Space_Character_Tracing", "space_character_tracing", "Space Character Tracing", "#3949AB"),
    80: ("80_Cute_Cartoon_Tracing", "cute_cartoon_tracing", "Cute Cartoon Tracing", "#FF80AB"),

    81: ("81_Tamil_Letter_Tracing", "tamil_letter_tracing", "Tamil Letter Tracing", "#D81B60"),
    82: ("82_English_Word_Tracing", "english_word_tracing", "English Word Tracing", "#1E88E5"),
    83: ("83_Hindi_Letter_Tracing", "hindi_letter_tracing", "Hindi Letter Tracing", "#E64A19"),
    84: ("84_Telugu_Letter_Tracing", "telugu_letter_tracing", "Telugu Letter Tracing", "#8E24AA"),
    85: ("85_Malayalam_Letter_Tracing", "malayalam_letter_tracing", "Malayalam Letter Tracing", "#00897B"),
    86: ("86_Cursive_Writing_Tracing", "cursive_writing_tracing", "Cursive Writing Tracing", "#5E35B1"),
    87: ("87_Sight_Word_Tracing", "sight_word_tracing", "Sight Word Tracing", "#00ACC1"),
    88: ("88_Name_Writing_Tracing", "name_writing_tracing", "Name Writing Tracing", "#F4511E"),
    89: ("89_Sentence_Tracing", "sentence_tracing", "Sentence Tracing Kids", "#3949AB"),
    90: ("90_Preschool_Writing_Tracing", "preschool_writing_tracing", "Preschool Writing Tracing", "#43A047"),

    91: ("91_Mirror_Drawing_Tracing", "mirror_drawing_tracing", "Mirror Drawing Tracing", "#8E24AA"),
    92: ("92_Half_Picture_Tracing", "half_picture_tracing", "Half Picture Tracing", "#FF7043"),
    93: ("93_Complete_Picture_Tracing", "complete_picture_tracing", "Complete Picture Tracing", "#039BE5"),
    94: ("94_Glow_Path_Tracing", "glow_path_tracing", "Glow Path Tracing", "#00E676"),
    95: ("95_Animated_Path_Tracing", "animated_path_tracing", "Animated Path Tracing", "#FFD600"),
    96: ("96_One_Line_Drawing_Tracing", "one_line_drawing_tracing", "One Line Drawing Tracing", "#7C4DFF"),
    97: ("97_Follow_The_Arrow_Tracing", "follow_the_arrow_tracing", "Follow The Arrow Tracing", "#00B0FF"),
    98: ("98_Connect_The_Dots_Tracing", "connect_the_dots_tracing", "Connect The Dots Tracing", "#FF6D00"),
    99: ("99_Shadow_Outline_Tracing", "shadow_outline_tracing", "Shadow Outline Tracing", "#455A64"),
    100: ("100_Freehand_Drawing_Practice", "freehand_drawing_practice", "Freehand Drawing Practice", "#00C853")
}

def get_app_data(app_num):
    folder, pkg, title, color = APP_METADATA[app_num]
    if 51 <= app_num <= 60:
        items = get_batch_51_60(app_num)
    elif 61 <= app_num <= 70:
        items = get_batch_61_70(app_num)
    elif 71 <= app_num <= 80:
        items = get_batch_71_80(app_num)
    elif 81 <= app_num <= 90:
        items = get_batch_81_90(app_num)
    elif 91 <= app_num <= 100:
        items = get_batch_91_100(app_num)
    else:
        raise ValueError(f"App number out of range: {app_num}")
    return folder, pkg, title, color, items

