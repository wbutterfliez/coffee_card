import 'package:flutter/material.dart';

class CofPrefs extends StatelessWidget {
  const CofPrefs({super.key});

  void incbeans() {
    print('Increase beans by 1');
  }

  void incsugs() {
    print('Increase sugar by 1');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            const Text('3'),
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
            const Text('3'),
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
