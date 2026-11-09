import 'package:flutter_test/flutter_test.dart';
import 'package:malayalam_letter_tracing/main.dart';

void main() {
  testWidgets('Malayalam Letter Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Malayalam Letter Tracing'), findsOneWidget);
  });
}
