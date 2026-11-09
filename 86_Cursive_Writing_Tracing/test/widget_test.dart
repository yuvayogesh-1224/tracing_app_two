import 'package:flutter_test/flutter_test.dart';
import 'package:cursive_writing_tracing/main.dart';

void main() {
  testWidgets('Cursive Writing Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Cursive Writing Tracing'), findsOneWidget);
  });
}
