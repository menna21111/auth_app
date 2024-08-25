import 'package:flutter/material.dart';

import 'screan/signinscrean.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});jjj

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: const Signinscrean()
    );
  }
}

