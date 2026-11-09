import 'package:flutter_test/flutter_test.dart';
import 'package:car_tracing/main.dart';

void main() {
  testWidgets('Car Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Car Tracing Kids'), findsOneWidget);
  });
}
