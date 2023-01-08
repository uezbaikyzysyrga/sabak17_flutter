import 'package:flutter/material.dart';
import 'package:sabak17_flutter/quiz_model.dart';
import 'package:sabak17_flutter/widjets/quiz_btn.dart';
import 'package:sabak17_flutter/widjets/result_btn.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List jooptor = <bool>[];
  List tuurajooptor = <bool>[];
  List kataJooptor = <bool>[];

  void teksher(bool value) {
    if (quizzes[index].answer == value) {
      jooptor.add(true);
      tuurajooptor.add(true);
    } else {
      jooptor.add(false);
      kataJooptor.add(false);
    }
    setState(() {
      if (quizzes[index] == quizzes.last) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Сиз бул тесттен...'),
              content: Text(
                'Туура жооптор${tuurajooptor.length}. Ката жооптор${kataJooptor.length}',
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      index = 0;
                      tuurajooptor.clear();
                      jooptor.clear();
                      kataJooptor.clear();
                      Navigator.pop(context);
                    });
                  },
                  child: const Text('Жаныдан баштоо'),
                ),
              ],
            );
          },
        );
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 36, 36),
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              quizzes[index].question,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
            const Spacer(),
            QuizButton(
              tuuraButtonBu: true,
              baskanda: (maani) {
                teksher(maani);
              },
            ),
            const SizedBox(height: 20),
            QuizButton(
              tuuraButtonBu: false,
              baskanda: (maani) {
                teksher(maani);
              },
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 40,
              child: ListView.builder(
                itemCount: jooptor.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return jooptor[index]
                      ? const ResuitIcon(tuuraIconB: true)
                      : const ResuitIcon(tuuraIconB: false);
                }),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        'Тапшырма 07',
        style: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }
}
