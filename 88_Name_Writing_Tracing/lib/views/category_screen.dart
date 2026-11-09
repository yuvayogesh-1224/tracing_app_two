import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/tracing_viewmodel.dart';
import '../viewmodels/progress_viewmodel.dart';
import '../models/tracing_item.dart';
import 'tracing_screen.dart';
import '../utils/kid_colors.dart';
import '../widgets/kid_card.dart';
import '../widgets/kid_button.dart';
import '../widgets/star_rating_widget.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final TextEditingController _nameController = TextEditingController();

  void _showAddCustomNameDialog(BuildContext context, TracingViewModel tracingVm) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
        title: Text(
          'Enter Your Own Name! ✏️',
          style: TextStyle(fontWeight: FontWeight.bold, color: KidColors.deepNavy),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Type a child's name to generate custom tracing guides locally:"),
            SizedBox(height: 12.0),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'e.g., Liam, Sophia, Alex',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                fillColor: KidColors.softBlue,
                filled: true,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text('Cancel'),
          ),
          KidButton(
            label: 'Create & Trace!',
            color: KidColors.emeraldGreen,
            onPressed: () {
              final name = _nameController.text.trim();
              if (name.isNotEmpty) {
                final newItem = TracingItem(
                  id: 'custom_${DateTime.now().millisecondsSinceEpoch}',
                  title: 'My Name: $name',
                  category: 'Custom Names',
                  difficulty: 'Easy',
                  funFact: 'You wrote your own unique name! Fantastic work!',
                  iconSymbol: '⭐',
                  strokes: [
                    TracingStroke(
                      id: 1,
                      instruction: 'Trace the first letter of $name',
                      points: [
                        TracingPoint(0.2, 0.65),
                        TracingPoint(0.35, 0.35),
                        TracingPoint(0.5, 0.65),
                      ],
                    ),
                    TracingStroke(
                      id: 2,
                      instruction: 'Trace the middle crossbar',
                      points: [
                        TracingPoint(0.25, 0.52),
                        TracingPoint(0.45, 0.52),
                      ],
                    ),
                    TracingStroke(
                      id: 3,
                      instruction: 'Trace the rest of your letters',
                      points: [
                        TracingPoint(0.55, 0.52),
                        TracingPoint(0.65, 0.45),
                        TracingPoint(0.75, 0.65),
                        TracingPoint(0.85, 0.65),
                      ],
                    ),
                  ],
                );
                tracingVm.items.insert(0, newItem);
                tracingVm.selectItem(0);
                Navigator.pop(ctx);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => TracingScreen()),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tracingVm = Provider.of<TracingViewModel>(context);
    final progressVm = Provider.of<ProgressViewModel>(context);

    return Scaffold(
      backgroundColor: KidColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Name Writing Activities',
          style: TextStyle(
            color: KidColors.deepNavy,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: KidColors.deepNavy),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: KidCard(
                backgroundColor: KidColors.softYellow,
                borderColor: KidColors.yellowBorder,
                child: Row(
                  children: [
                    Icon(Icons.edit_note_rounded, size: 36.0, color: KidColors.primaryPurple),
                    SizedBox(width: 12.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Write Your Own Name!',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: KidColors.deepNavy),
                          ),
                          Text(
                            'Enter any custom name to trace',
                            style: TextStyle(fontSize: 12.0, color: KidColors.textMuted),
                          ),
                        ],
                      ),
                    ),
                    KidButton(
                      label: '+ Add Name',
                      color: KidColors.emeraldGreen,
                      fontSize: 14.0,
                      onPressed: () => _showAddCustomNameDialog(context, tracingVm),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(16.0),
                itemCount: tracingVm.items.length,
                itemBuilder: (context, index) {
                  final item = tracingVm.items[index];
                  final isDone = progressVm.isCompleted(item.id);
                  final stars = progressVm.getStarsFor(item.id);

                  return Padding(
                    padding: EdgeInsets.only(bottom: 14.0),
                    child: KidCard(
                      backgroundColor: isDone ? KidColors.softMint : Colors.white,
                      borderColor: isDone ? KidColors.mintBorder : KidColors.blueBorder,
                      onTap: () {
                        tracingVm.selectItem(index);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => TracingScreen()),
                        );
                      },
                      child: Row(
                        children: [
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: KidColors.softYellow,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                item.iconSymbol,
                                style: TextStyle(fontSize: 24.0),
                              ),
                            ),
                          ),
                          SizedBox(width: 14.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.title,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: KidColors.deepNavy,
                                  ),
                                ),
                                SizedBox(height: 2.0),
                                Text(
                                  '${item.category} • ${item.difficulty}',
                                  style: TextStyle(fontSize: 12.0, color: KidColors.textMuted),
                                ),
                                if (isDone) ...[
                                  SizedBox(height: 4.0),
                                  StarRatingWidget(stars: stars, starSize: 18.0),
                                ],
                              ],
                            ),
                          ),
                          Icon(
                            isDone ? Icons.check_circle_rounded : Icons.play_arrow_rounded,
                            color: isDone ? KidColors.emeraldGreen : KidColors.primaryPurple,
                            size: 32.0,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
