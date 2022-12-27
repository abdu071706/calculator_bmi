import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    required this.dynamicIcon,
    required this.dynamicChoose,
    this.hor,
    this.ver,
    this.genderText,
    this.color,
    Key? key,
  }) : super(key: key);
  final String? genderText;
  final double? hor;
  final double? ver;
  final IconData? dynamicIcon;
  final void Function()? dynamicChoose;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: dynamicChoose,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.40,
        height: MediaQuery.of(context).size.height * 0.26,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: hor!,
          vertical: ver!,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              dynamicIcon,
              size: 60,
              color: Colors.white,
            ),
            Text(
              genderText!.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}