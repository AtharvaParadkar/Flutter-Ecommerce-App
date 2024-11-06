import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screens/onboard2.dart';
import 'package:flutter_ecommerce_app/theme/theme.dart';
import 'package:gap/gap.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryColor,
        height: MediaQuery.sizeOf(context).height,
        child: Stack(
          children: [
            Positioned(
              left: 194,
              top: -182,
              child: Container(
                height: 389,
                width: 389,
                decoration: BoxDecoration(
                  color: primaryColor,
                  border: Border.all(color: secondaryColor, width: 90),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 210.52,
              child: Transform.rotate(
                angle: -14.53 * 3.141592653589793 / 180,
                child: Image.asset(
                  'assets/images/image.png',
                  fit: BoxFit.cover,
                  width: 324.98,
                  height: 181.24,
                ),
              ),
            ),
            Positioned(
              top: 484,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 18, 0),
                    height: 112,
                    width: 337,
                    child: Text(
                      'Start Journey With Shoes',
                      style: primaryTextStyle(40, FontWeight.w600),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 33, 0),
                    width: 322,
                    height: 64,
                    child: Text(
                      'Smart, Gorgeous & Fashionable Collection',
                      style: secondaryTextStyle(18, FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 718,
              left: 30,
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 54,
                width: 335,
                child: Row(
                  children: [
                    Container(
                      height: 5,
                      width: 35,
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    const Gap(8),
                    Container(
                      height: 5,
                      width: 8,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 229, 238, 247),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    const Gap(8),
                    Container(
                      height: 5,
                      width: 8,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 229, 238, 247),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 64,
                      width: 165,
                      child: ElevatedButton(
                        onPressed: ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>const Onboard2())),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor,
                        ),
                        child: Text(
                          'Get Started',
                          style: primaryTextStyle(18, FontWeight.w500),
                        ),
                      ),
                    ),
                    const Gap(8),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
