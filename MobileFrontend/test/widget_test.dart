import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_frontend/main.dart';

// PUBLIC_INTERFACE
/// Basic widget smoke tests to ensure the app boots and renders minimal UI.
void main() {
  testWidgets('App boots successfully', (WidgetTester tester) async {
    // Build our app and trigger a frame using the correct root widget.
    await tester.pumpWidget(const RestaurantApp());

    // Verify that the bootstrap screen renders expected text.
    expect(find.textContaining('Mobile Frontend is set up'), findsOneWidget);
  });
}
