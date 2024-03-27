import 'package:app_skill_harvest/constant.dart';
import 'package:app_skill_harvest/core/util/app_image.dart';
import 'package:app_skill_harvest/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void onTap() {
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (context) => const SuccessScren()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor: Colors.grey.withOpacity(0.3),
          leadingWidth: double.infinity,
          leading: const Padding(
            padding: EdgeInsets.only(top: 80, left: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Log In",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 25),
                ),
                Text(
                  "Enter your details below to login",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 15),
                )
              ],
            ),
          ),
        ),
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //   mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        const Gap(10),
                        const Text("Your Email", textAlign: TextAlign.left),
                        const Gap(10),
                        EmailTextFormField(
                          controller: emailController,
                        ),
                        const Gap(30),
                        const Text("Your Password"),
                        const Gap(10),
                        PasswordTextField(
                          controller: passwordController,
                        ),
                        const Gap(1),
                        TextButton(
                            onPressed: () {},
                            child: const Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Forgot Password",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      decoration: TextDecoration.underline),
                                ))),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: ElevatedButton(
                              onPressed: onTap,
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  backgroundColor:
                                      const Color.fromARGB(255, 5, 37, 246),
                                  minimumSize: const Size(300, 50)),
                              child: const Text(
                                "Log In",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: AppConstant.fontName,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        const Gap(7),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account?",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 13)),

                            //  const  Gap(3),

                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const SignUpPage()));
                              },
                              child: const Text("Sign up",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 7, 7, 235),
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline)),
                            )
                          ],
                        ),
                        const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                  width: 100,
                                  child: Divider(
                                    color: Colors.grey,
                                  )),
                              Text(
                                "Or Sign in with",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                  width: 100,
                                  child: Divider(
                                    color: Colors.grey,
                                  )),
                            ]),
                        const Gap(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(AppImage.google),
                            const Gap(50),
                            SvgPicture.asset(AppImage.faceBook)
                          ],
                        )
                      ]),
                ))));
  }
}

class EmailTextFormField extends StatefulWidget {
  final TextEditingController controller;
  const EmailTextFormField({super.key, required this.controller});

  @override
  State<EmailTextFormField> createState() => _EmailTextFormFieldState();
}

class _EmailTextFormFieldState extends State<EmailTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(color: Colors.black),
      decoration: const InputDecoration(
          hintText: "Enter your email",
          label: Text("Email", style: TextStyle(color: Colors.grey)),
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
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
    );
  }
}

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  const PasswordTextField({super.key, required this.controller});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool toggled = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: const TextInputType.numberWithOptions(),
      style: const TextStyle(color: Colors.black),
      obscureText: toggled,
      decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                toggled = !toggled;
              });
            },
            icon: toggled
                ? const Icon(
                    Icons.visibility_off,
                    color: Colors.black,
                  )
                : const Icon(
                    Icons.visibility,
                    color: Colors.black,
                  ),
          ),
          hintText: "Enter your password",
          label: const Text(
            "Password",
            style: TextStyle(color: Colors.grey),
          ),
          hintStyle: const TextStyle(color: Colors.grey),
          border: const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          )),
    );
  }
}
