import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fyp_app/Resources/assets_manager.dart';
import 'package:fyp_app/Resources/colors_manager.dart';
import 'package:fyp_app/Resources/dimen_manager.dart';
import 'package:fyp_app/Resources/routes_manager.dart';
import 'package:fyp_app/Resources/strings_manager.dart';
import 'package:fyp_app/Resources/styles_manager.dart';
import 'package:fyp_app/Resources/widget_manager.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // SIGNUP FUNCTION
  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        // Navigator.pushNamed(
        //   context,
        //   Routes.aboutMother,
        // );
        print('User signed up: ${userCredential.user}');
      } else {
        print('Failed to sign up');
      }
    } catch (e) {
      print('Failed to sign up: $e');
    }
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController repeatPassController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    repeatPassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.registrationBackground),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            // Sign UP Text
            Expanded(
              flex: 1,
              child: Container(
                  margin: EdgeInsets.only(
                    top: AppMargin.m70,
                  ),
                  child: Text(AppStrings.signUp,
                      style:
                          getBoldStyle(color: AppColors.white, fontSize: 40))),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: size.width,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius:
                        const BorderRadius.only(topLeft: Radius.circular(100))),
                child: ListView(
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        boxWidget(text: "Email", controller: emailController),
                        //AppWidget.textField(label: AppStrings.email),
                        SizedBox(
                          height: AppMargin.m20,
                        ),
                        boxWidget(text: "Password", controller: passController),
                        SizedBox(
                          height: AppMargin.m20,
                        ),
                        boxWidget(
                          text: "Confirm Password",
                          controller: repeatPassController,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                                onPressed: () =>
                                    Navigator.pushNamed(context, Routes.login),
                                child: Text(
                                  "    Already have an account",
                                  style: getRegularStyle(
                                      color: AppColors.primary, fontSize: 14),
                                ))),
                        const SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                            onTap: () {
                              signUpWithEmailAndPassword(
                                emailController.text.toLowerCase().trim(),
                                passController.text,
                              );
                            },
                            child: button(
                              text: "Create Account",
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 90,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: AppColors.grey),
                                  color: AppColors.white),
                            ),
                            const Text("Or Sign up With"),
                            Container(
                              width: 90,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: AppColors.grey),
                                  color: AppColors.white),
                            ),
                          ],
                        ),
                        Container(
                          width: 60,
                          margin: const EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              border:
                                  Border.all(width: 2, color: AppColors.grey),
                              color: AppColors.white),
                          child: Image.asset(AppAssets.google),
                        ),
                      ],
                    ),
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
