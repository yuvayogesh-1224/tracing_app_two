import 'package:flutter_test/flutter_test.dart';
import 'package:airplane_tracing/main.dart';

void main() {
  testWidgets('Airplane Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Airplane Tracing Kids'), findsOneWidget);
  });
}
