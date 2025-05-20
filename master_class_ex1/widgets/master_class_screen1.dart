import 'package:flutter/material.dart';
import 'package:flutter_inicio/ui/master_class_ex1/widgets/custom_container.dart';
import 'package:flutter_inicio/ui/master_class_ex1/widgets/custom_logo.dart';
import 'package:flutter_svg/svg.dart';

class MasterClassScreen1 extends StatelessWidget {
  const MasterClassScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //FlutterLogo(size: 200),
            SizedBox(height: 100),

            CustomLogo(),
            SizedBox(height: 30),
            Text(
              "Get your Money ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
            ),
            Text(
              "Under Control",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Manage your expenses.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            Text(
              "Seamlessly.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            SizedBox(height: 80),
            CustomContainer(
              title: "Sign Up with Email ID",
              titleColor: Colors.white,
              boxColor: Color.fromARGB(255, 94, 92, 229),
            ),

            CustomContainer(
              boxColor: Colors.white,
              title: "Sign Up with Google",
              iconAsset: SvgPicture.asset(
                "assets/icongoogle.svg",
                width: 30,
                height: 30,
              ),
            ),
            SizedBox(height: 30),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  TextSpan(
                    text: "Sign In",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
