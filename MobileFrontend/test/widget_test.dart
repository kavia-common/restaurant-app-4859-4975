 // ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Smoke: renders a basic Material app', (WidgetTester tester) async {
    // Render a minimal app to validate the test environment.
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Test App')),
        body: Center(child: Text('Hello')),
      ),
    ));

    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.text('Test App'), findsOneWidget);
    expect(find.text('Hello'), findsOneWidget);
  });
}
