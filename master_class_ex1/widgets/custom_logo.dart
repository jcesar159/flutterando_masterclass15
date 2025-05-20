import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 94, 92, 229),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
              child: Container(width: 50, height: 50, color: Color(0xFF5E5CE5)),
            ),
          ],
        ),
        SizedBox(width: 10),
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
              child: Container(width: 50, height: 55, color: Color(0xFF5E5CE5)),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
              child: Container(width: 50, height: 55, color: Color(0xFF5E5CE5)),
            ),
          ],
        ),
      ],
    );
  }
}
