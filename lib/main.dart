import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Practica%2008/form_edad.dart';
import 'package:flutter_application_1/screen/screen_basico1.dart';
import 'package:flutter_application_1/screen/screen_basico2.dart';
import 'package:flutter_application_1/screen/screen_basico3.dart';
import 'package:flutter_application_1/screen/screen_calculadora.dart';
import 'package:flutter_application_1/screen/Screen_01.dart';
import 'package:flutter_application_1/screen/screen_formulario.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ScreenEdad()
        ,
    );
  }
}
