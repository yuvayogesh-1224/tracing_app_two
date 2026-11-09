import 'package:flutter_test/flutter_test.dart';
import 'package:tamil_letter_tracing/main.dart';

void main() {
  testWidgets('Tamil Letter Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Tamil Letter Tracing'), findsOneWidget);
  });
}
