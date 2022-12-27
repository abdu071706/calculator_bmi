import 'package:flutter/material.dart';

class CalculateBottomWidget extends StatelessWidget {
  const CalculateBottomWidget({
    required this.onTap,
    Key? key,
    this.text,
  }) : super(key: key);
  final String? text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text!,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 50, color: Colors.white),
          ),
        ),
      ),
    );
  }
}