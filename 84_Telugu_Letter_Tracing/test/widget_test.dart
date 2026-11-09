import 'package:flutter_test/flutter_test.dart';
import 'package:telugu_letter_tracing/main.dart';

void main() {
  testWidgets('Telugu Letter Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Telugu Letter Tracing'), findsOneWidget);
  });
}
