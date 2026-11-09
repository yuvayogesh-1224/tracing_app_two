import 'package:flutter_test/flutter_test.dart';
import 'package:princess_tracing/main.dart';

void main() {
  testWidgets('Princess Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Princess Tracing Kids'), findsOneWidget);
  });
}
