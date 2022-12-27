import 'package:flutter/material.dart';

class WeightAgeWidget extends StatelessWidget {
  const WeightAgeWidget({
    required this.onPlus,
    required this.onMinus,
    super.key,
    this.text,
    this.san,
  });
  final String? text;
  final String? san;
  final void Function()? onMinus;
  final void Function()? onPlus;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.40,
      height: MediaQuery.of(context).size.height * 0.26,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromARGB(255, 7, 9, 15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              text!.toUpperCase(),
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            Text(
              san!,
              style: const TextStyle(fontSize: 60, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 38,
                  child: IconButton(
                    onPressed: onMinus,
                    icon: const Icon(
                      Icons.remove,
                      size: 28,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                CircleAvatar(
                  radius: 38,
                  child: IconButton(
                    onPressed: onPlus,
                    icon: const Icon(
                      Icons.add,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}