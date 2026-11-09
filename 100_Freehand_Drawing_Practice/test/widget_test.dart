import 'package:flutter_test/flutter_test.dart';
import 'package:freehand_drawing_practice/main.dart';

void main() {
  testWidgets('Freehand Drawing Practice smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Freehand Drawing Practice'), findsOneWidget);
  });
}
