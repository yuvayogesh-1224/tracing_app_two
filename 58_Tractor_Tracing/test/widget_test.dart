import 'package:flutter_test/flutter_test.dart';
import 'package:tractor_tracing/main.dart';

void main() {
  testWidgets('Tractor Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Tractor Tracing Kids'), findsOneWidget);
  });
}
