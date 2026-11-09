import 'package:flutter_test/flutter_test.dart';
import 'package:mermaid_tracing/main.dart';

void main() {
  testWidgets('Mermaid Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Mermaid Tracing Kids'), findsOneWidget);
  });
}
