import 'package:flutter/material.dart';

class CronometroButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const CronometroButton({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        textStyle: const TextStyle(
          fontSize: 25,
        ),
      ),
      onPressed: () {},
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              size: 35,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
