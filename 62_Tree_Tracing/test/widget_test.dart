import 'package:flutter_test/flutter_test.dart';
import 'package:tree_tracing/main.dart';

void main() {
  testWidgets('Tree Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Tree Tracing Kids'), findsOneWidget);
  });
}
