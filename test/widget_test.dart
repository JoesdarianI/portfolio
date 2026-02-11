import 'package:flutter_test/flutter_test.dart';

import 'package:portfolio/main.dart';

void main() {
  testWidgets('Portfolio page renders main sections', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('YOUR NAME'), findsOneWidget);
    expect(find.text('Flutter Developer'), findsOneWidget);
    expect(find.text('About'), findsOneWidget);
    expect(find.text('Skills'), findsOneWidget);
    expect(find.text('Projects'), findsOneWidget);
    expect(find.text('Contact'), findsOneWidget);
  });
}
