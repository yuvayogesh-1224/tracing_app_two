import 'package:flutter_test/flutter_test.dart';
import 'package:sight_word_tracing/main.dart';

void main() {
  testWidgets('Sight Word Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Sight Word Tracing'), findsOneWidget);
  });
}
