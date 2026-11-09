import 'package:flutter_test/flutter_test.dart';
import 'package:train_tracing/main.dart';

void main() {
  testWidgets('Train Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Train Tracing Kids'), findsOneWidget);
  });
}
