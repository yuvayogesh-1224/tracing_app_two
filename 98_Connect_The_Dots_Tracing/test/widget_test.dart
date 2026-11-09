import 'package:flutter_test/flutter_test.dart';
import 'package:connect_the_dots_tracing/main.dart';

void main() {
  testWidgets('Connect The Dots Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Connect The Dots Tracing'), findsOneWidget);
  });
}
