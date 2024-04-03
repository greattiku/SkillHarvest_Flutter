import 'package:app_skill_harvest/constant.dart';
import 'package:app_skill_harvest/core/util/app_image.dart';
import 'package:app_skill_harvest/authentication/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 300,
          backgroundColor: Colors.grey.withOpacity(0.3),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 30, left: 30),
                child: Text(
                  "Continue with phone",
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SvgPicture.asset(AppImage.illustration),
              )
            ],
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            padding: const EdgeInsets.only(left: 10.0, bottom: 150),
          ),
        ),
        body: Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.only(left: 10, bottom: 100),
            width: screenWidth,
            height: screenHeight,
            color: Colors.white,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 30, top: 5),
                  child: Text(
                    "Enter your Phone Number",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                TextFormField(
                  // style: const TextStyle(color: Colors.black,),
                  decoration: const InputDecoration(
                      suffixIcon: ContinueBtn(),
                      hintText: "Enter your phone number",
                      label: Text("Phone Number",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      )),
                ),
              ],
            )));
  }
}

class ContinueBtn extends StatelessWidget {
  const ContinueBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                    clipBehavior: Clip.hardEdge,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: const SuccessDailog());
              });
        },
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: const Color.fromARGB(255, 5, 37, 246),
            minimumSize: const Size(100, 65)),
        child: const Text(
          "continue",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: AppConstant.fontName),
        ));
  }
}
