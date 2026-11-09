import 'package:flutter_test/flutter_test.dart';
import 'package:mirror_drawing_tracing/main.dart';

void main() {
  testWidgets('Mirror Drawing Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Mirror Drawing Tracing'), findsOneWidget);
  });
}
