import 'package:flutter_school/featuers/Home/view/home.dart';
import 'package:flutter_school/featuers/auth/view/widget/auth/custombuttonauth.dart';
import 'package:flutter_school/featuers/auth/view/widget/auth/customtextformauth.dart';
import 'package:flutter_school/featuers/auth/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter_school/featuers/auth/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/imgaeasset.dart';
import 'widget/auth/logoauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: SingleChildScrollView(
            child: Column(children: [
              const LogoAuth(
                image: AppImageAsset.login,
                
              ),
              const SizedBox(height: 20),
              const CustomTextTitleAuth(text: "تسجيل الدخول",
              ),
              const SizedBox(height: 10),
              TextButton.icon(
                icon: const Icon(Icons.arrow_back),
                label: const Text.rich(
                  TextSpan(
                    text: 'قم بتسجيل الدخول للاستمراراو',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 15
                    ),
                    children: [
                      TextSpan(
                        text: 'أنشئ حساب جديد',
                        style: TextStyle(color: AppColor.primaryColor),
                      ),
                    ],
                  ),
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                onPressed: () {
                  Get.to(() => const SignUp());
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const SignUp()),
                },
              ),
              const SizedBox(height: 15),
              const CustonTextFormAuth(
                // mycontroller: controller.phone,
                hinttext: 'رقم الهاتف',
                iconData: Icons.call_outlined,

                // mycontroller: ,
              ),
              const CustonTextFormAuth(
                // mycontroller: controller.password,
                hinttext: 'كلمة المرور',
                iconData: Icons.lock_outline,

                // mycontroller: ,
              ),
              CustomButtomAuth(
                  text:'تسجيل الدخول',
                  onPressed: () {
                    Get.to(() => const MyHomePage());
                    // controller.login();
                  }),
              const SizedBox(height: 40),
              CustomTextSignUpOrSignIn(
                texttwo: 'نسيت كلمة السر؟',
                onTap: () {
                  // controller.goToSignUp();
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
