import 'package:flutter_test/flutter_test.dart';
import 'package:space_character_tracing/main.dart';

void main() {
  testWidgets('Space Character Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Space Character Tracing'), findsOneWidget);
  });
}
