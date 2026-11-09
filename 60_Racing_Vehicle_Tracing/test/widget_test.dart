import 'package:flutter_test/flutter_test.dart';
import 'package:racing_vehicle_tracing/main.dart';

void main() {
  testWidgets('Racing Vehicle Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Racing Vehicle Tracing'), findsOneWidget);
  });
}
