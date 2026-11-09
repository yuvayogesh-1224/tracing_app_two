import 'package:flutter_test/flutter_test.dart';
import 'package:cloud_tracing/main.dart';

void main() {
  testWidgets('Cloud Tracing Kids smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Cloud Tracing Kids'), findsOneWidget);
  });
}
