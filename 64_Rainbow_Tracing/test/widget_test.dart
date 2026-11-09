import 'package:flutter_test/flutter_test.dart';
import 'package:rainbow_tracing/main.dart';

void main() {
  testWidgets('Rainbow Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Rainbow Tracing Kids'), findsOneWidget);
  });
}
