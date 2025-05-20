import 'package:flutter/material.dart';
import 'package:flutter_inicio/ui/master_class_ex2/widgets/custom_container_ex2.dart';
import 'package:flutter_svg/svg.dart';

class MasterClassScreen2 extends StatelessWidget {
  const MasterClassScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 234, 87, 111), // primeira cor
              Color.fromARGB(255, 237, 108, 101), // primeira cor
            ],
            begin: Alignment(-1, 0), // onde começa o gradiente
            end: Alignment(1, 0), // onde termina
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 70,
              left: 20,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () {},
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icon-tinder.svg",
                    width: 45,
                    colorFilter: ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  Text(
                    "tinder",
                    style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                      children: [
                        TextSpan(
                          text:
                              "By tapping Create Account or Sign In, you agree to our ",
                        ),
                        TextSpan(
                          text: "Terms",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: ". Learn how we process your data in our ",
                        ),
                        TextSpan(
                          text: "Privacy Policy",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(text: " and "),
                        TextSpan(
                          text: "Cookies Policy.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24),
                CustomContainerEx2(
                  title: "SIGN IN WITH APPLE",
                  iconAsset: "assets/icon-apple.svg",
                ),
                SizedBox(height: 14),
                CustomContainerEx2(
                  title: "SIGN IN WITH FACEBOOK",
                  iconAsset: "assets/icon-facebook.svg",
                ),
                SizedBox(height: 14),
                CustomContainerEx2(
                  title: "SIGN IN WITH PHONE NUMBER",
                  iconAsset: "assets/icon-message.svg",
                ),
                SizedBox(height: 14),
                Text(
                  "Trouble Signing In?",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 24),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
