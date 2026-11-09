import 'package:flutter_test/flutter_test.dart';
import 'package:unicorn_tracing/main.dart';

void main() {
  testWidgets('Unicorn Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Unicorn Tracing Kids'), findsOneWidget);
  });
}
