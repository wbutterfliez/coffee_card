import 'package:flutter/material.dart';

class CofPrefs extends StatefulWidget {
  const CofPrefs({super.key});

  @override
  State<CofPrefs> createState() => _CofPrefsState();
}

class _CofPrefsState extends State<CofPrefs> {
  int strength = 1;
  int sugar = 1;

  void incbeans() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void incsugs() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: incbeans,
              child: const Text('+'),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Text('Sugar: '),
            if (sugar == 0) const Text('No sugar!'),
            for (int i = 0; i < sugar; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: incsugs,
              child: const Text('+'),
            ),
          ],
        ),
      ],
    );
  }
}
