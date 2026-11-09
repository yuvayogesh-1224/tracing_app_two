# run_generation_51_100.py
import sys
import os
from master_apps_data_51_100 import get_app_data
from data_helper import generate_path_templates_dart
from generator_engine import generate_app_project
from special_app_customizer import customize_special_apps

def main():
    print("=" * 70)
    print("STARTING GENERATION OF 50 INDEPENDENT FLUTTER KIDS TRACING PROJECTS")
    print("Projects 51 to 100 in F:\\tracing_two")
    print("=" * 70)

    total_activities = 0

    for i in range(51, 101):
        folder, pkg, title, primary_color, items = get_app_data(i)
        count = len(items)
        total_activities += count
        print(f"[{i:02d}/100] Building {folder} ({title}) with {count} unique activities...")
        items_dart = generate_path_templates_dart(items)
        generate_app_project(
            folder_name=folder,
            pkg_name=pkg,
            app_title=title,
            primary_color_hex=primary_color,
            items_dart_code=items_dart,
        )

    print("\nApplying customized features for specialized apps (88, 91, 94, 98, 100)...")
    customize_special_apps()

    print("=" * 70)
    print(f"ALL 50 FLUTTER PROJECTS GENERATED SUCCESSFULLY!")
    print(f"TOTAL REAL UNIQUE ACTIVITIES: {total_activities} (Average {total_activities/50:.1f} per app)")
    print("=" * 70)

if __name__ == "__main__":
    main()

