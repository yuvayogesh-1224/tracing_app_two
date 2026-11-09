import 'package:flutter_test/flutter_test.dart';
import 'package:animated_path_tracing/main.dart';

void main() {
  testWidgets('Animated Path Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Animated Path Tracing'), findsOneWidget);
  });
}
