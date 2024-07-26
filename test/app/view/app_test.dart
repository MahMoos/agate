import 'package:agate/app/app.dart';
import 'package:agate/features/explore/presentation/pages/pages.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const AgateApp());
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
