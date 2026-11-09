import 'package:flutter_test/flutter_test.dart';
import 'package:hindi_letter_tracing/main.dart';

void main() {
  testWidgets('Hindi Letter Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Hindi Letter Tracing'), findsOneWidget);
  });
}
