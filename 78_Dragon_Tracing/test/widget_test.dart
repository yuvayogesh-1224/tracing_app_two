import 'package:flutter_test/flutter_test.dart';
import 'package:dragon_tracing/main.dart';

void main() {
  testWidgets('Dragon Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Dragon Tracing Kids'), findsOneWidget);
  });
}
