import 'package:flutter_test/flutter_test.dart';
import 'package:robot_tracing/main.dart';

void main() {
  testWidgets('Robot Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Robot Tracing Kids'), findsOneWidget);
  });
}
