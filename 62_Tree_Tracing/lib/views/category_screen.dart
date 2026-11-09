import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/tracing_viewmodel.dart';
import '../viewmodels/progress_viewmodel.dart';
import 'tracing_screen.dart';
import '../utils/kid_colors.dart';
import '../widgets/kid_card.dart';
import '../widgets/star_rating_widget.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  String selectedFilter = 'All';

  @override
  Widget build(BuildContext context) {
    final tracingVm = Provider.of<TracingViewModel>(context);
    final progressVm = Provider.of<ProgressViewModel>(context);

    final categories = ['All', ...{for (var i in tracingVm.items) i.category}];
    final filteredItems = selectedFilter == 'All'
        ? tracingVm.items
        : tracingVm.items.where((i) => i.category == selectedFilter).toList();

    return Scaffold(
      backgroundColor: KidColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Select Tracing Item',
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: categories.map((diff) {
                  final isSel = selectedFilter == diff;
                  return Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: ChoiceChip(
                      label: Text(diff),
                      selected: isSel,
                      selectedColor: KidColors.primaryPurple,
                      labelStyle: TextStyle(
                        color: isSel ? Colors.white : KidColors.deepNavy,
                        fontWeight: FontWeight.bold,
                      ),
                      onSelected: (_) {
                        setState(() {
                          selectedFilter = diff;
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(16.0),
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  final item = filteredItems[index];
                  final isDone = progressVm.isCompleted(item.id);
                  final stars = progressVm.getStarsFor(item.id);

                  return Padding(
                    padding: EdgeInsets.only(bottom: 14.0),
                    child: KidCard(
                      backgroundColor: isDone ? KidColors.softMint : Colors.white,
                      borderColor: isDone ? KidColors.mintBorder : KidColors.blueBorder,
                      onTap: () {
                        final realIndex = tracingVm.items.indexWhere((it) => it.id == item.id);
                        tracingVm.selectItem(realIndex);
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
