import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:pomodoro/store/pomodoro.store.dart';

import 'package:pomodoro/components/cronometro.dart';
import 'package:pomodoro/components/entrada_tempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Expanded(
            child: Cronometro(),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Observer(
                builder: (_) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    EntradaTempo(
                      value: store.tempoTrabalho,
                      title: 'Trabalho',
                      inc: store.incrementarTempoTrabalho,
                      dec: store.decrementarTempoTrabalho,
                    ),
                    EntradaTempo(
                      value: store.tempoDescanso,
                      title: 'Descanso',
                      inc: store.incrementarTempoDescanso,
                      dec: store.decrementarTempoDescanso,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
