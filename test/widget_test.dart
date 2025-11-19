import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kim_first_app/main.dart'; 

void main() {

  testWidgets('App loads and displays a greeting text', (WidgetTester tester) async {

    await tester.pumpWidget(const MyApp()); 

    final styledTextFinder = find.text('Hello World!'); 

    expect(styledTextFinder, findsOneWidget, 
      reason: 'The StyledText widget should be present with the text "Hello World!". '
              'Adjust the expected text if your main.dart uses a different string.');

  });

  testWidgets('GradientContainer is displayed', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());


    final gradientContainerFinder = find.byType(Container); 

    expect(gradientContainerFinder, findsOneWidget, 
      reason: 'The GradientContainer widget should be present in the widget tree.'); 
  });
}