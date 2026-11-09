import 'package:flutter_test/flutter_test.dart';
import 'package:glow_path_tracing/main.dart';

void main() {
  testWidgets('Glow Path Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Glow Path Tracing'), findsOneWidget);
  });
}
