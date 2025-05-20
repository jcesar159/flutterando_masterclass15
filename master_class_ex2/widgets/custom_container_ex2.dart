import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomContainerEx2 extends StatelessWidget {
  final String title;
  final String? iconAsset;
  const CustomContainerEx2({super.key, required this.title, this.iconAsset});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(30),
        ),
        height: 50,
        child: Stack(
          children: [
            if (iconAsset != null) ...[
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SvgPicture.asset(
                    iconAsset!,
                    colorFilter: ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                    height: 20,
                  ),
                ),
              ),
            ],
            Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
