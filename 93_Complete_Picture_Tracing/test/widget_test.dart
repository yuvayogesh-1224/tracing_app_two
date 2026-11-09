import 'package:flutter_test/flutter_test.dart';
import 'package:complete_picture_tracing/main.dart';

void main() {
  testWidgets('Complete Picture Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Complete Picture Tracing'), findsOneWidget);
  });
}
