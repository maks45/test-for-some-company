import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/random_background_widget.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: RandomBackgroundWidget(
        child: Center(
          child: Text('Hey there'),
        ),
      ),
    ),
  );
}