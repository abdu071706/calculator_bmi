import 'package:calculator_bmi/constants/colors/app_colors.dart';
import 'package:calculator_bmi/constants/text_styles/app_text_styles.dart';
import 'package:calculator_bmi/data/local_data/bmi_calculator_data.dart';
import 'package:calculator_bmi/main.dart';
import 'package:calculator_bmi/widgets/calculate_bottom_widget.dart';
import 'package:flutter/material.dart';


class ResultUi extends StatelessWidget {
  const ResultUi({this.weight, this.height, super.key});

  final double? weight;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final double bmi = BmiCalculator.calculateBmi(weight!, height!);
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff0A0E20),
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
          ),centerTitle: true,
      ),
        backgroundColor: const Color(0xff0A0E20),
        body: SafeArea(
          child: Column(
            children: [
              // Row(
              //   children: [
              //     IconButton(
              //       onPressed: (() => Navigator.pop(context)),
              //       icon: const Icon(
              //         Icons.arrow_back,
              //         color: AppColors.white,
              //       ),
              //     ),
              //   ],
              // ),
              const Text('Результат', style: AppTextStyles.white45w900),
              Center(
                child: Container(
                  width: 350,
                  height: 550,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 7, 9, 15)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        BmiCalculator.bmiResult(bmi),
                        style: AppTextStyles.green30w400,
                      ),
                      Text(
                        bmi.toStringAsFixed(1),
                        style: AppTextStyles.white100w900,
                      ),
                      Text(
                        BmiCalculator.getDescroption(bmi),
                        textAlign: TextAlign.center,
                        style: AppTextStyles.white20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CalculateBottomWidget(
          text: 'Считай заново',
          onTap: () {
            Navigator.pop(context);
          },
        ));
  }
}