import 'package:flutter/material.dart';

class CofPrefs extends StatelessWidget {
  const CofPrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(children: [Text('Strength: '), Text('3'), SizedBox(width: 50)]),
        Row(children: [Text('Sugar: '), Text('3'), SizedBox(width: 50)]),
      ],
    );
  }
}
