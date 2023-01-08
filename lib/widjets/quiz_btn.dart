import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton({
    required this.tuuraButtonBu,
    required this.baskanda,
    Key? key,
  }) : super(key: key);
  final bool tuuraButtonBu;
  final void Function(bool) baskanda;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => baskanda(tuuraButtonBu),
        style: ElevatedButton.styleFrom(
          backgroundColor: tuuraButtonBu ? Colors.green : Colors.red,
        ),
        child: Text(
          tuuraButtonBu ? 'Туура' : 'Туура эмес',
          style: const TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
