import 'package:flutter_test/flutter_test.dart';
import 'package:preschool_writing_tracing/main.dart';

void main() {
  testWidgets('Preschool Writing Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Preschool Writing Tracing'), findsOneWidget);
  });
}
