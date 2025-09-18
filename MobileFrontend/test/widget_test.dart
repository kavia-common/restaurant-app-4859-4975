import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_frontend/main.dart';

void main() {
  testWidgets('App boots and shows home app bar title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.byType(AppBar), findsOneWidget);
  });
}
