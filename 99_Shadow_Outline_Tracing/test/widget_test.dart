import 'package:flutter_test/flutter_test.dart';
import 'package:shadow_outline_tracing/main.dart';

void main() {
  testWidgets('Shadow Outline Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Shadow Outline Tracing'), findsOneWidget);
  });
}
