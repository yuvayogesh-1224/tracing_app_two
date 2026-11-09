import 'package:flutter_test/flutter_test.dart';
import 'package:construction_vehicle_tracing/main.dart';

void main() {
  testWidgets('Construction Vehicle Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Construction Vehicle Tracing'), findsOneWidget);
  });
}
