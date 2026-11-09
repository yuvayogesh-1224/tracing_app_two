import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/settings_viewmodel.dart';
import '../viewmodels/progress_viewmodel.dart';
import '../utils/kid_colors.dart';
import '../widgets/kid_card.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingsVm = Provider.of<SettingsViewModel>(context);
    final progressVm = Provider.of<ProgressViewModel>(context);

    return Scaffold(
      backgroundColor: KidColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Settings',
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
                backgroundColor: Colors.white,
                borderColor: KidColors.blueBorder,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sound & Haptics', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: KidColors.deepNavy)),
                    SwitchListTile(
                      title: Text('Sound Effects'),
                      subtitle: Text('Kid-friendly audio & tap feedback'),
                      value: settingsVm.soundEnabled,
                      activeColor: KidColors.emeraldGreen,
                      onChanged: (_) => settingsVm.toggleSound(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              KidCard(
                backgroundColor: Colors.white,
                borderColor: KidColors.pinkBorder,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Difficulty Level', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: KidColors.deepNavy)),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: ['Easy', 'Medium', 'Hard'].map((lvl) {
                        final isSel = settingsVm.difficulty == lvl;
                        return ChoiceChip(
                          label: Text(lvl),
                          selected: isSel,
                          selectedColor: KidColors.primaryPurple,
                          labelStyle: TextStyle(
                            color: isSel ? Colors.white : KidColors.deepNavy,
                            fontWeight: FontWeight.bold,
                          ),
                          onSelected: (_) => settingsVm.setDifficulty(lvl),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              KidCard(
                backgroundColor: Colors.white,
                borderColor: KidColors.yellowBorder,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tracing Brush Color', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: KidColors.deepNavy)),
                    SizedBox(height: 12.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(KidColors.brushPalette.length, (idx) {
                        final col = KidColors.brushPalette[idx];
                        final isSel = settingsVm.brushColorIndex == idx;
                        return GestureDetector(
                          onTap: () => settingsVm.setBrushColor(idx),
                          child: Container(
                            width: 38.0,
                            height: 38.0,
                            decoration: BoxDecoration(
                              color: col,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: isSel ? KidColors.deepNavy : Colors.transparent,
                                width: 3.0,
                              ),
                            ),
                            child: isSel ? Icon(Icons.check, color: Colors.white, size: 20.0) : null,
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.0),
              KidCard(
                backgroundColor: KidColors.softPink,
                borderColor: KidColors.pinkBorder,
                child: ListTile(
                  leading: Icon(Icons.restore_rounded, color: KidColors.coralPink, size: 30.0),
                  title: Text('Reset All Progress', style: TextStyle(fontWeight: FontWeight.bold, color: KidColors.coralPink)),
                  subtitle: Text('Clear completed stars and restart fresh'),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: Text('Reset Progress?'),
                        content: Text('Are you sure you want to reset all stars and completed items?'),
                        actions: [
                          TextButton(onPressed: () => Navigator.pop(ctx), child: Text('Cancel')),
                          TextButton(
                            onPressed: () async {
                              await settingsVm.resetProgress();
                              await progressVm.loadProgress();
                              Navigator.pop(ctx);
                            },
                            child: Text('Reset', style: TextStyle(color: Colors.red)),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
