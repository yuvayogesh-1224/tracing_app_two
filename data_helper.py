import math

def escape_dart_str(s):
    return str(s).replace('\\', '\\\\').replace("'", "\\'").replace('$', '\\$')

def format_dart_item(item):
    strokes_dart = []
    for s in item["strokes"]:
        pts_dart = ", ".join([f"TracingPoint({p[0]}, {p[1]})" for p in s["points"]])
        instr = escape_dart_str(s["instruction"])
        stroke_code = f'''          TracingStroke(
            id: {s["id"]},
            instruction: '{instr}',
            points: [{pts_dart}],
          )'''
        strokes_dart.append(stroke_code)
    strokes_block = ",\n".join(strokes_dart)

    item_id = escape_dart_str(item["id"])
    title = escape_dart_str(item["title"])
    category = escape_dart_str(item["category"])
    difficulty = escape_dart_str(item["difficulty"])
    fun_fact = escape_dart_str(item.get("funFact", "Great tracing job!"))
    icon_symbol = escape_dart_str(item.get("icon", "⭐"))

    return f'''      TracingItem(
        id: '{item_id}',
        title: '{title}',
        category: '{category}',
        difficulty: '{difficulty}',
        funFact: '{fun_fact}',
        iconSymbol: '{icon_symbol}',
        strokes: [
{strokes_block}
        ],
      )'''

def generate_path_templates_dart(items):
    items_code = ",\n".join([format_dart_item(item) for item in items])
    return f'''import '../models/tracing_item.dart';

class PathTemplates {{
  static List<TracingItem> getItems() {{
    return [
{items_code}
    ];
  }}
}}
'''

def make_line(x1, y1, x2, y2, steps=6):
    pts = []
    for i in range(steps + 1):
        t = i / steps
        pts.append((round(x1 + (x2 - x1) * t, 3), round(y1 + (y2 - y1) * t, 3)))
    return pts

def make_circle_points(cx=0.5, cy=0.5, r=0.35, n=16):
    pts = []
    for i in range(n + 1):
        angle = -math.pi / 2 + (2 * math.pi * i / n)
        pts.append((round(cx + r * math.cos(angle), 3), round(cy + r * math.sin(angle), 3)))
    return pts

def make_arc_points(cx=0.5, cy=0.5, r=0.35, start_deg=0, sweep_deg=180, n=12):
    pts = []
    start_rad = math.radians(start_deg)
    sweep_rad = math.radians(sweep_deg)
    for i in range(n + 1):
        angle = start_rad + (sweep_rad * i / n)
        pts.append((round(cx + r * math.cos(angle), 3), round(cy + r * math.sin(angle), 3)))
    return pts

def make_rect_points(x, y, w, h):
    return [
        (round(x, 3), round(y, 3)),
        (round(x + w, 3), round(y, 3)),
        (round(x + w, 3), round(y + h, 3)),
        (round(x, 3), round(y + h, 3)),
        (round(x, 3), round(y, 3))
    ]

def make_oval_points(cx=0.5, cy=0.5, rx=0.35, ry=0.2, n=16):
    pts = []
    for i in range(n + 1):
        angle = -math.pi / 2 + (2 * math.pi * i / n)
        pts.append((round(cx + rx * math.cos(angle), 3), round(cy + ry * math.sin(angle), 3)))
    return pts

def make_star_points(points_count=5, cx=0.5, cy=0.5, r_outer=0.38, r_inner=0.18):
    pts = []
    total = points_count * 2
    for i in range(total + 1):
        angle = -math.pi / 2 + (2 * math.pi * i / total)
        r = r_outer if i % 2 == 0 else r_inner
        pts.append((round(cx + r * math.cos(angle), 3), round(cy + r * math.sin(angle), 3)))
    return pts

def make_heart_points(cx=0.5, cy=0.45, scale=0.35, n=24):
    pts = []
    for i in range(n + 1):
        t = 2 * math.pi * i / n
        # Standard parametric heart
        x = 16 * (math.sin(t) ** 3)
        y = -(13 * math.cos(t) - 5 * math.cos(2*t) - 2 * math.cos(3*t) - math.cos(4*t))
        # normalize to scale
        nx = cx + (x / 17.0) * scale
        ny = cy + (y / 17.0) * scale
        pts.append((round(nx, 3), round(ny, 3)))
    return pts

def make_wave_points(x1=0.1, y=0.5, x2=0.9, amp=0.1, cycles=2, n=20):
    pts = []
    for i in range(n + 1):
        t = i / n
        curr_x = x1 + (x2 - x1) * t
        curr_y = y + amp * math.sin(2 * math.pi * cycles * t)
        pts.append((round(curr_x, 3), round(curr_y, 3)))
    return pts

def make_triangle_points(cx=0.5, cy=0.5, size=0.35):
    h = size * (3**0.5) / 2
    return [
        (round(cx, 3), round(cy - 2*h/3, 3)),
        (round(cx + size/2, 3), round(cy + h/3, 3)),
        (round(cx - size/2, 3), round(cy + h/3, 3)),
        (round(cx, 3), round(cy - 2*h/3, 3))
    ]

