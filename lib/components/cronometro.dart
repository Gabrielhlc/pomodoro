import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro_button.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            '25:00',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: CronometroButton(
                  text: 'Iniciar',
                  icon: Icons.play_arrow,
                ),
              ),
              // Padding(
              // padding: EdgeInsets.only(right: 10),
              //   child: CronometroButton(
              //     text: 'Parar',
              //     icon: Icons.stop,
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: CronometroButton(
                  text: 'Reiniciar',
                  icon: Icons.refresh,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}