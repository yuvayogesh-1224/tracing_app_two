import 'package:flutter_test/flutter_test.dart';
import 'package:garden_tracing/main.dart';

void main() {
  testWidgets('Garden Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Garden Tracing Kids'), findsOneWidget);
  });
}
