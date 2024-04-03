import 'package:app_skill_harvest/authentication/login_page.dart';
import 'package:app_skill_harvest/core/util/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SuccessScren extends StatelessWidget {
  const SuccessScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      body: const SuccessDailog(),
    );
  }
}

class SuccessDailog extends StatelessWidget {
  const SuccessDailog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 300,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppImage.successMarkIcon),
            const Gap(10),
            const Text(
              "Success",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20),
            ),
            const Gap(10),
            const Text(
              "Congratulations, you have\n completed your registration!",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const Gap(20),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LoginPage()));
                },
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    minimumSize: const Size(250, 40),
                    backgroundColor: const Color.fromARGB(255, 8, 8, 230)),
                child: const Text(
                  "Done",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
