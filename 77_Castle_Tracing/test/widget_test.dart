import 'package:flutter_test/flutter_test.dart';
import 'package:castle_tracing/main.dart';

void main() {
  testWidgets('Castle Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Castle Tracing Kids'), findsOneWidget);
  });
}
