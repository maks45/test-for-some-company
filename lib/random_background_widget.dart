import 'dart:math';

import 'package:flutter/material.dart';

class RandomBackgroundWidget extends StatefulWidget {
  final Widget child;
  final Color startColor;

  const RandomBackgroundWidget({Key key, this.child, this.startColor})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _RandomBackgroundWidgetState();
  }
}

class _RandomBackgroundWidgetState extends State<RandomBackgroundWidget> {
  Color _backgroundColor;

  @override
  void initState() {
    _backgroundColor = widget.startColor ?? _getRandomColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        _backgroundColor = _getRandomColor();
      }),
      child: Container(color: _backgroundColor, child: widget.child),
    );
  }

  Color _getRandomColor() {
    var randomColor =
        Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    return randomColor != _backgroundColor ? randomColor : _getRandomColor();
  }
}
