import 'package:flutter_test/flutter_test.dart';
import 'package:helicopter_tracing/main.dart';

void main() {
  testWidgets('Helicopter Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Helicopter Tracing Kids'), findsOneWidget);
  });
}
