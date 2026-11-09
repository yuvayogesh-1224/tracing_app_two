import 'package:flutter_test/flutter_test.dart';
import 'package:boat_tracing/main.dart';

void main() {
  testWidgets('Boat Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Boat Tracing Kids'), findsOneWidget);
  });
}
