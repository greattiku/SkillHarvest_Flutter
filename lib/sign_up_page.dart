import 'package:app_skill_harvest/constant.dart';
import 'package:app_skill_harvest/core/helper.dart';
import 'package:app_skill_harvest/login_Page.dart';
import 'package:app_skill_harvest/phone_number_screen.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    void onTap() {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const PhoneNumberScreen()));
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 0.27 * pageHeight(context),
        backgroundColor: Colors.grey.withOpacity(0.3),
        leadingWidth: double.infinity,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16.0, bottom: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 25),
              ),
              Text(
                "Enter your details here & free Signup",
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
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Your Email"),
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
                const Gap(20),
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
                        "Create account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: AppConstant.fontName,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked = newValue ?? false;
                        });
                      },
                      // activeColor: Colors.blue ,
                      side: const BorderSide(color: Colors.blue, width: 1.0),
                      checkColor: const Color.fromARGB(255, 14, 6, 243),
                    ),
                    const Text(
                      "By creating an account you have to agree \nwith our terms and condition.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                      },
                      child: const Text("Log in",
                          style: TextStyle(
                              color: Color.fromARGB(255, 7, 7, 235),
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline)),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // ) ,
    );
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
