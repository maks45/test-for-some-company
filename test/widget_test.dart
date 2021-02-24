// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_app/main.dart';
import 'package:test_app/random_background_widget.dart';

void main() {
  testWidgets(
      'Color test, widget change container background color after tap', (
      WidgetTester tester) async {
    await tester.pumpWidget(RandomBackgroundWidget(startColor: Colors.white,));
    final backgroundBeforeTap = (tester.firstWidget(find.byType(Container)) as Container).color;
    expect(backgroundBeforeTap, Colors.white);
    await tester.tap(find.byType(RandomBackgroundWidget));
    await tester.pump();
    final backgroundAfterTap = (tester.firstWidget(find.byType(Container)) as Container).color;
    expect(backgroundAfterTap, isNot(Colors.white));
  });
}
