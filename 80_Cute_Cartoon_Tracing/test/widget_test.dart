import 'package:flutter_test/flutter_test.dart';
import 'package:cute_cartoon_tracing/main.dart';

void main() {
  testWidgets('Cute Cartoon Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Cute Cartoon Tracing'), findsOneWidget);
  });
}
