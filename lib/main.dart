import 'package:coffee_card/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: Row(
        children: [
          Container(height: 100, color: Colors.blue, child: const Text('one')),
          Container(height: 300, color: Colors.green, child: const Text('two')),
          Container(
            height: 500,
            color: Colors.pink,
            child: const Text('three'),
          ),
        ],
      ),
    );
  }
}
