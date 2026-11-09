import 'package:flutter_test/flutter_test.dart';
import 'package:sentence_tracing/main.dart';

void main() {
  testWidgets('Sentence Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Sentence Tracing Kids'), findsOneWidget);
  });
}
