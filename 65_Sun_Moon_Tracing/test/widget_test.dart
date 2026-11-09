import 'package:flutter_test/flutter_test.dart';
import 'package:sun_moon_tracing/main.dart';

void main() {
  testWidgets('Sun Moon Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Sun Moon Tracing'), findsOneWidget);
  });
}
