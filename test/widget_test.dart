import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_app/main.dart';
import 'package:test_app/my_app.dart';
import 'package:test_app/random_background_widget.dart';

void main() {
  testWidgets(
      """Check App contains Center and "Hey there" text""", (
      WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.byType(Center), findsOneWidget);
    expect(find.bySemanticsLabel("Hey there"), findsOneWidget);
  });
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
