import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/progress_viewmodel.dart';
import '../viewmodels/tracing_viewmodel.dart';
import '../utils/kid_colors.dart';
import '../widgets/kid_card.dart';

class ProgressScreen extends StatelessWidget {
  ProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final progressVm = Provider.of<ProgressViewModel>(context);
    final tracingVm = Provider.of<TracingViewModel>(context);
    final totalItems = tracingVm.items.length;
    final percent = totalItems > 0 ? (progressVm.totalCompleted / totalItems) * 100 : 0.0;

    return Scaffold(
      backgroundColor: KidColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'My Progress & Badges',
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
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KidCard(
                backgroundColor: KidColors.softYellow,
                borderColor: KidColors.yellowBorder,
                child: Column(
                  children: [
                    Text('Total Stars Earned', style: TextStyle(color: KidColors.textMuted, fontSize: 14.0)),
                    SizedBox(height: 4.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_rounded, color: KidColors.sunnyAmber, size: 40.0),
                        SizedBox(width: 8.0),
                        Text(
                          '${progressVm.totalStars}',
                          style: TextStyle(
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                            color: KidColors.deepNavy,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      'Activities Mastered: ${progressVm.totalCompleted} of $totalItems (${percent.toInt()}%)',
                      style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: KidColors.deepNavy),
                    ),
                    SizedBox(height: 8.0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: LinearProgressIndicator(
                        value: (percent / 100.0).clamp(0.0, 1.0),
                        minHeight: 12.0,
                        backgroundColor: Colors.white,
                        valueColor: AlwaysStoppedAnimation<Color>(KidColors.emeraldGreen),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Achievement Badges',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: KidColors.deepNavy,
                ),
              ),
              SizedBox(height: 12.0),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                mainAxisSpacing: 12.0,
                crossAxisSpacing: 12.0,
                childAspectRatio: 1.2,
                children: [
                  _buildBadge(
                    title: 'First Step',
                    subtitle: 'Completed 1 item',
                    isUnlocked: progressVm.totalCompleted >= 1,
                    icon: '🌱',
                  ),
                  _buildBadge(
                    title: 'Star Cadet',
                    subtitle: 'Earned 5+ stars',
                    isUnlocked: progressVm.totalStars >= 5,
                    icon: '⭐',
                  ),
                  _buildBadge(
                    title: 'Super Tracer',
                    subtitle: 'Completed 10 items',
                    isUnlocked: progressVm.totalCompleted >= 10,
                    icon: '🚀',
                  ),
                  _buildBadge(
                    title: 'Master Artist',
                    subtitle: 'All items done!',
                    isUnlocked: progressVm.totalCompleted >= totalItems && totalItems > 0,
                    icon: '👑',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBadge({
    required String title,
    required String subtitle,
    required bool isUnlocked,
    required String icon,
  }) {
    return KidCard(
      backgroundColor: isUnlocked ? Colors.white : Colors.grey.shade100,
      borderColor: isUnlocked ? KidColors.yellowBorder : Colors.grey.shade300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            icon,
            style: TextStyle(
              fontSize: 32.0,
              color: isUnlocked ? null : Colors.grey,
            ),
          ),
          SizedBox(height: 6.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: isUnlocked ? KidColors.deepNavy : Colors.grey.shade600,
            ),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10.0,
              color: isUnlocked ? KidColors.textMuted : Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }
}
