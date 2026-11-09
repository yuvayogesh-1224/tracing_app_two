import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'category_screen.dart';
import 'tracing_screen.dart';
import 'progress_screen.dart';
import 'settings_screen.dart';
import '../viewmodels/tracing_viewmodel.dart';
import '../viewmodels/progress_viewmodel.dart';
import '../utils/kid_colors.dart';
import '../widgets/kid_card.dart';
import '../widgets/kid_button.dart';

class HomeScreen extends StatelessWidget {
  final String appTitle;

  HomeScreen({Key? key, required this.appTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final progressVm = Provider.of<ProgressViewModel>(context);
    final tracingVm = Provider.of<TracingViewModel>(context);

    return Scaffold(
      backgroundColor: KidColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Little Star! 👋',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: KidColors.textMuted,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          appTitle,
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: KidColors.deepNavy,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: KidColors.softYellow,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(color: KidColors.yellowBorder, width: 2.0),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star_rounded, color: KidColors.sunnyAmber, size: 24.0),
                        SizedBox(width: 4.0),
                        Text(
                          '${progressVm.totalStars}',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: KidColors.deepNavy,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.0),
              KidCard(
                backgroundColor: KidColors.softBlue,
                borderColor: KidColors.blueBorder,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 56.0,
                          height: 56.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              tracingVm.activeItem.iconSymbol,
                              style: TextStyle(fontSize: 28.0),
                            ),
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ready to Trace?',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: KidColors.textMuted,
                                ),
                              ),
                              Text(
                                tracingVm.activeItem.title,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: KidColors.deepNavy,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    KidButton(
                      label: 'Start Tracing Now! 🎨',
                      color: KidColors.primaryPurple,
                      fontSize: 18.0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => TracingScreen()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Expanded(
                    child: KidCard(
                      backgroundColor: KidColors.softPink,
                      borderColor: KidColors.pinkBorder,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => CategoryScreen()),
                        );
                      },
                      child: Column(
                        children: [
                          Icon(Icons.category_rounded, size: 40.0, color: KidColors.coralPink),
                          SizedBox(height: 8.0),
                          Text(
                            'Activities',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: KidColors.deepNavy,
                            ),
                          ),
                          Text(
                            '${tracingVm.items.length} items',
                            style: TextStyle(fontSize: 12.0, color: KidColors.textMuted),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: KidCard(
                      backgroundColor: KidColors.softYellow,
                      borderColor: KidColors.yellowBorder,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => ProgressScreen()),
                        );
                      },
                      child: Column(
                        children: [
                          Icon(Icons.emoji_events_rounded, size: 40.0, color: KidColors.sunnyAmber),
                          SizedBox(height: 8.0),
                          Text(
                            'My Stars',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: KidColors.deepNavy,
                            ),
                          ),
                          Text(
                            '${progressVm.totalCompleted} done',
                            style: TextStyle(fontSize: 12.0, color: KidColors.textMuted),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              KidCard(
                backgroundColor: KidColors.softLavender,
                borderColor: KidColors.lavenderBorder,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SettingsScreen()),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.settings_rounded, size: 32.0, color: KidColors.primaryPurple),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'App Settings',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: KidColors.deepNavy,
                            ),
                          ),
                          Text(
                            'Sound, Brush Color & Difficulty',
                            style: TextStyle(fontSize: 12.0, color: KidColors.textMuted),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right_rounded, color: KidColors.textMuted),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
