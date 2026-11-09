import 'package:flutter_test/flutter_test.dart';
import 'package:bus_tracing/main.dart';

void main() {
  testWidgets('Bus Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Bus Tracing Kids'), findsOneWidget);
  });
}
