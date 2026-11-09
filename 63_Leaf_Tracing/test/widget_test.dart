import 'package:flutter_test/flutter_test.dart';
import 'package:leaf_tracing/main.dart';

void main() {
  testWidgets('Leaf Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Leaf Tracing Kids'), findsOneWidget);
  });
}
