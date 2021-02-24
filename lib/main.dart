import 'package:flutter/material.dart';
import 'package:test_app/random_background_widget.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: RandomBackgroundWidget(
        child: Center(
          child: Text('Hey there'),
        ),
      ),
    ),
  ));
}
