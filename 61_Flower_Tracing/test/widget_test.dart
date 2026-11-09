import 'package:flutter_test/flutter_test.dart';
import 'package:flower_tracing/main.dart';

void main() {
  testWidgets('Flower Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Flower Tracing Kids'), findsOneWidget);
  });
}
