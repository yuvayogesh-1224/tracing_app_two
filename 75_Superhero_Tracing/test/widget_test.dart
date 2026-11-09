import 'package:flutter_test/flutter_test.dart';
import 'package:superhero_tracing/main.dart';

void main() {
  testWidgets('Superhero Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Superhero Tracing Kids'), findsOneWidget);
  });
}
