import 'package:calculator_bmi/ui/home_ui.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(BmiCalcculator());
}

class BmiCalcculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUi(),
    );
  }
}