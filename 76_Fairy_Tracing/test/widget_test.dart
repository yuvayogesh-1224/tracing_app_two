import 'package:flutter_test/flutter_test.dart';
import 'package:fairy_tracing/main.dart';

void main() {
  testWidgets('Fairy Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Fairy Tracing Kids'), findsOneWidget);
  });
}
