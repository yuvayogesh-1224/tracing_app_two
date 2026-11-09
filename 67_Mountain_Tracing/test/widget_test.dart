import 'package:flutter_test/flutter_test.dart';
import 'package:mountain_tracing/main.dart';

void main() {
  testWidgets('Mountain Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Mountain Tracing Kids'), findsOneWidget);
  });
}
