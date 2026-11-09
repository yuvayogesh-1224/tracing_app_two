# verify_all_50_projects.py
import os
import re

EXPECTED_FOLDERS = [
    "51_Car_Tracing",
    "52_Bus_Tracing",
    "53_Truck_Tracing",
    "54_Train_Tracing",
    "55_Airplane_Tracing",
    "56_Helicopter_Tracing",
    "57_Boat_Tracing",
    "58_Tractor_Tracing",
    "59_Construction_Vehicle_Tracing",
    "60_Racing_Vehicle_Tracing",
    "61_Flower_Tracing",
    "62_Tree_Tracing",
    "63_Leaf_Tracing",
    "64_Rainbow_Tracing",
    "65_Sun_Moon_Tracing",
    "66_Cloud_Tracing",
    "67_Mountain_Tracing",
    "68_Fruit_Tracing",
    "69_Vegetable_Tracing",
    "70_Garden_Tracing",
    "71_Princess_Tracing",
    "72_Unicorn_Tracing",
    "73_Mermaid_Tracing",
    "74_Robot_Tracing",
    "75_Superhero_Tracing",
    "76_Fairy_Tracing",
    "77_Castle_Tracing",
    "78_Dragon_Tracing",
    "79_Space_Character_Tracing",
    "80_Cute_Cartoon_Tracing",
    "81_Tamil_Letter_Tracing",
    "82_English_Word_Tracing",
    "83_Hindi_Letter_Tracing",
    "84_Telugu_Letter_Tracing",
    "85_Malayalam_Letter_Tracing",
    "86_Cursive_Writing_Tracing",
    "87_Sight_Word_Tracing",
    "88_Name_Writing_Tracing",
    "89_Sentence_Tracing",
    "90_Preschool_Writing_Tracing",
    "91_Mirror_Drawing_Tracing",
    "92_Half_Picture_Tracing",
    "93_Complete_Picture_Tracing",
    "94_Glow_Path_Tracing",
    "95_Animated_Path_Tracing",
    "96_One_Line_Drawing_Tracing",
    "97_Follow_The_Arrow_Tracing",
    "98_Connect_The_Dots_Tracing",
    "99_Shadow_Outline_Tracing",
    "100_Freehand_Drawing_Practice"
]

REQUIRED_FILES = [
    "pubspec.yaml",
    "analysis_options.yaml",
    "lib/main.dart",
    "lib/models/tracing_item.dart",
    "lib/models/user_progress.dart",
    "lib/services/storage_service.dart",
    "lib/services/audio_service.dart",
    "lib/viewmodels/settings_viewmodel.dart",
    "lib/viewmodels/progress_viewmodel.dart",
    "lib/viewmodels/tracing_viewmodel.dart",
    "lib/painters/tracing_painter.dart",
    "lib/painters/celebration_painter.dart",
    "lib/widgets/kid_button.dart",
    "lib/widgets/kid_card.dart",
    "lib/widgets/star_rating_widget.dart",
    "lib/widgets/accuracy_meter.dart",
    "lib/views/splash_screen.dart",
    "lib/views/home_screen.dart",
    "lib/views/category_screen.dart",
    "lib/views/completion_screen.dart",
    "lib/views/tracing_screen.dart",
    "lib/views/progress_screen.dart",
    "lib/views/settings_screen.dart",
    "lib/utils/path_templates.dart",
    "lib/utils/kid_colors.dart",
    "test/widget_test.dart",
    "android/build.gradle.kts"
]

def verify():
    print("=" * 70)
    print(f"VERIFYING ALL {len(EXPECTED_FOLDERS)} FLUTTER KIDS TRACING APPLICATIONS...")
    print("=" * 70)

    total_activities = 0
    all_passed = True

    for idx, folder in enumerate(EXPECTED_FOLDERS, 51):
        if not os.path.isdir(folder):
            print(f"❌ Missing directory: {folder}")
            all_passed = False
            continue

        missing = []
        for req in REQUIRED_FILES:
            full_path = os.path.join(folder, req)
            if not os.path.isfile(full_path):
                missing.append(req)

        if missing:
            print(f"❌ {folder} missing files: {missing}")
            all_passed = False
            continue

        # Count activities in path_templates.dart
        pt_path = os.path.join(folder, "lib", "utils", "path_templates.dart")
        with open(pt_path, "r", encoding="utf-8") as f:
            content = f.read()

        item_matches = re.findall(r"id:\s*['\"]([^'\"]+)['\"]", content)
        count = len(item_matches)
        total_activities += count

        if count < 30:
            print(f"❌ {folder}: ONLY {count} activities found! Minimum 30 required.")
            all_passed = False
        elif len(item_matches) != len(set(item_matches)):
            print(f"❌ {folder}: Duplicate activity IDs found!")
            all_passed = False
        else:
            print(f"[{idx:02d}/100] ✅ {folder}: Complete with {count} unique activities.")

    print("=" * 70)
    print(f"TOTAL ACTIVITIES ACROSS 50 PROJECTS: {total_activities}")
    if all_passed and total_activities >= 1500:
        print("🎉 SUCCESS! ALL 50 PROJECTS MEET ALL QUALITY & ACTIVITY REQUIREMENTS!")
    else:
        print("⚠️ Verification detected issues. Please check output above.")
    print("=" * 70)

if __name__ == "__main__":
    verify()

