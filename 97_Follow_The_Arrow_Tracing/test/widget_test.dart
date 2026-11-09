import 'package:flutter_test/flutter_test.dart';
import 'package:follow_the_arrow_tracing/main.dart';

void main() {
  testWidgets('Follow The Arrow Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Follow The Arrow Tracing'), findsOneWidget);
  });
}
