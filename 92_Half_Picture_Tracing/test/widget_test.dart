import 'package:flutter_test/flutter_test.dart';
import 'package:half_picture_tracing/main.dart';

void main() {
  testWidgets('Half Picture Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Half Picture Tracing'), findsOneWidget);
  });
}
