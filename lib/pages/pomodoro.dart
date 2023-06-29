import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro.dart';
import 'package:pomodoro/components/entrada_tempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                EntradaTempo(
                  value: 25,
                  title: 'Trabalho',
                ),
                EntradaTempo(
                  value: 5,
                  title: 'Descanso',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
