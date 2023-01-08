import 'package:flutter/material.dart';

class ResuitIcon extends StatelessWidget {
  const ResuitIcon({
    Key? key,
    required this.tuuraIconB,
  }) : super(key: key);
  final bool tuuraIconB;

  @override
  Widget build(BuildContext context) {
    return Icon(
      tuuraIconB ? Icons.check : Icons.close,
      color: tuuraIconB ? Colors.green : Colors.red,
    );
  }
}
