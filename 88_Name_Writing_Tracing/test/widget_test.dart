import 'package:flutter_test/flutter_test.dart';
import 'package:name_writing_tracing/main.dart';

void main() {
  testWidgets('Name Writing Tracing smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Name Writing Tracing'), findsOneWidget);
  });
}
