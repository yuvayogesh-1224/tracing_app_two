import 'package:flutter_test/flutter_test.dart';
import 'package:one_line_drawing_tracing/main.dart';

void main() {
  testWidgets('One Line Drawing Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('One Line Drawing Tracing'), findsOneWidget);
  });
}
