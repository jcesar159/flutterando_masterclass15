import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomContainer extends StatelessWidget {
  final Color boxColor;
  final Color? titleColor;
  final String title;
  final SvgPicture? iconAsset;
  const CustomContainer({
    super.key,
    required this.boxColor,
    required this.title,
    this.iconAsset,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: boxColor,
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconAsset != null) ...[iconAsset!, SizedBox(width: 10)],
            Text(
              title,
              style: TextStyle(
                color: titleColor ?? Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
