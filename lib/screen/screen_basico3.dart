import 'package:flutter/material.dart';

class ScreenBasico3 extends StatelessWidget {
  const ScreenBasico3({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [Container(width: 80, height: 80, color: const Color.fromARGB(255, 146, 238, 245) ),
        SizedBox(width: 10),
        Container(width: 80, height: 80, color: const Color.fromARGB(255, 63, 211, 83)),
        SizedBox(width: 10),
        Container(width: 80, height: 80, color: const Color.fromARGB(255, 228, 92, 233)),]
      ),
    );
  }
}