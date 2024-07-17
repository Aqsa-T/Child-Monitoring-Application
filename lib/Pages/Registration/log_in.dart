import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fyp_app/Resources/assets_manager.dart';
import 'package:fyp_app/Resources/colors_manager.dart';
import 'package:fyp_app/Resources/dimen_manager.dart';
import 'package:fyp_app/Resources/routes_manager.dart';
import 'package:fyp_app/Resources/strings_manager.dart';
import 'package:fyp_app/Resources/styles_manager.dart';
import 'package:fyp_app/Resources/widget_manager.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        Navigator.pushReplacementNamed(context, Routes.home);
        print('User signed in: ${userCredential.user}');
      } else {
        print('Failed to sign in');
      }
    } catch (e) {
      print('Failed to sign in: $e');
    }
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
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
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(top: AppMargin.m70),
                child: Image.asset(AppAssets.logo),
              ),
            ),
            SizedBox(height: AppMargin.m20),
            Expanded(
              flex: 2,
              child: Container(
                width: size.width,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius:
                        const BorderRadius.only(topLeft: Radius.circular(100))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: AppMargin.m12,
                      ),
                      Container(
                          margin:
                              EdgeInsets.only(top: AppMargin.m20, bottom: 40),
                          child: Text(
                            AppStrings.login,
                            style: getBoldStyle(
                                color: AppColors.black, fontSize: 40),
                          )),
                      // boxWidget(text: "Email", controller: emailController),
                      Container(
                        height: 60,
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        padding: const EdgeInsets.all(8),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.grey,
                                blurRadius: 4,
                                offset: const Offset(1, 3)),
                          ],
                        ),
                        alignment: Alignment.centerLeft,
                        child: TextField(
                          controller: emailController,
                          decoration: const InputDecoration(
                            hintText: 'Email',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: AppMargin.m14,
                      ),
                      // boxWidget(text: "Password", controller: passController),
                      Container(
                        height: 60,
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        padding: const EdgeInsets.all(8),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.grey,
                                blurRadius: 4,
                                offset: const Offset(1, 3)),
                          ],
                        ),
                        alignment: Alignment.centerLeft,
                        child: TextField(
                          controller: passController,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: () {
                          signInWithEmailAndPassword(
                            emailController.text.toLowerCase().trim(),
                            passController.text,
                          );
                        },
                        child: button(text: "Login"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border:
                                Border.all(width: 2, color: AppColors.grey)),
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Image.asset(AppAssets.google),
                            const SizedBox(
                              width: 30,
                            ),
                            Text(
                              AppStrings.googleLogin,
                              style: getRegularStyle(
                                  color: AppColors.black, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, Routes.signUp),
                          child: Text(
                            "Don't have an Account?",
                            style: getRegularStyle(
                                color: AppColors.primary, fontSize: 14),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
