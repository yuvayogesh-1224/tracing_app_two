import 'package:flutter_test/flutter_test.dart';
import 'package:fruit_tracing/main.dart';

void main() {
  testWidgets('Fruit Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Fruit Tracing Kids'), findsOneWidget);
  });
}
