import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'services/storage_service.dart';
import 'services/audio_service.dart';
import 'viewmodels/settings_viewmodel.dart';
import 'viewmodels/progress_viewmodel.dart';
import 'viewmodels/tracing_viewmodel.dart';
import 'utils/path_templates.dart';
import 'views/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final storageService = StorageService();
  final audioService = AudioService();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SettingsViewModel(storageService, audioService),
        ),
        ChangeNotifierProvider(
          create: (_) => ProgressViewModel(storageService),
        ),
        ChangeNotifierProxyProvider2<ProgressViewModel, SettingsViewModel, TracingViewModel>(
          create: (context) => TracingViewModel(
            audioService,
            Provider.of<ProgressViewModel>(context, listen: false),
            Provider.of<SettingsViewModel>(context, listen: false),
            PathTemplates.getItems(),
          ),
          update: (_, progressVm, settingsVm, previous) =>
              previous ??
              TracingViewModel(
                audioService,
                progressVm,
                settingsVm,
                PathTemplates.getItems(),
              ),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preschool Writing Tracing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Color(0xFFF9FBFC),
      ),
      home: SplashScreen(appTitle: 'Preschool Writing Tracing'),
    );
  }
}
