import 'package:flutter/material.dart';

class ScreenBasico2 extends StatelessWidget {
  const ScreenBasico2({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Container(width: 1000, height: 100, color: const Color.fromARGB(255, 146, 238, 245) ),
        SizedBox(height: 15),
        Container(width: 800, height: 100, color: const Color.fromARGB(255, 63, 211, 83)),
        SizedBox(height: 15),
        Container(width: 500, height: 100, color: const Color.fromARGB(255, 228, 92, 233)),]
      ),
    );
  }
}