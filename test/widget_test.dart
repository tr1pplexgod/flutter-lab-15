import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab15/main.dart';

void main() {
  group('Calculator Tests', () {
    test('calculate function works correctly', () {
      final calculator = FunctionCalculator();
      expect(calculator.calculate(1), equals(2.0));
      expect(calculator.calculate(2), equals(-4.0));
    });
  });

  group('App Widget Tests', () {
    testWidgets('Shows correct title', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.text('IPZ-33: DenysK last Flutter App'), findsOneWidget);
    });

    testWidgets('FloatingActionButton works', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.text('0'), findsOneWidget);
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pump();
      expect(find.text('5'), findsOneWidget);
    });

    testWidgets('Button has camera icon', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.byIcon(Icons.camera_alt_outlined), findsOneWidget);
    });
  });
}