import 'package:flutter/material.dart';
import 'package:flutter_school/core/constant/color.dart';
import 'package:get/get.dart';

import '../../../core/constant/imgaeasset.dart';
import 'login_page.dart';
import 'widget/auth/custombuttonauth.dart';
import 'widget/auth/customtextbodyauth.dart';
import 'widget/auth/customtextformauth.dart';
import 'widget/auth/customtexttitleauth.dart';
import 'widget/auth/logoauth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
        body: Padding(
      padding:  const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
               const LogoAuth(
                image:AppImageAsset.signup,
              ),
              const SizedBox(height: 20),
              const CustomTextTitleAuth(text: 'إنشاء حساب'),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton.icon(
                    icon: const Icon(Icons.arrow_back),
                    label: const Text.rich(
                      TextSpan(
                        text:
                       '  انشئ حساب لتتمكن من ' ,
                     style: TextStyle(color:Color.fromARGB(255, 0, 0, 0)),
                        children: [
                          TextSpan(
                            text: 'تسجيل الدخول  ' ,
                            style: TextStyle(color: AppColor.primaryColor),
                          ),
                        ],

                      ),

                          
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    onPressed: () {
                  Get.to(() => const Login());
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const SignUp()),
                      
                    },
             
                  ),
                  // const CustomTextBodyAuth(text: " "),
                ],
              ),
              const SizedBox(height: 15),
              const NamePerson(),
              const SizedBox(height: 15),
              const CustonTextFormAuth(
                // mycontroller: controller.phone,
                hinttext: 'رقم الهاتف',
                iconData: Icons.call_outlined,
              ),
              const CustonTextFormAuth(
                // mycontroller: controller.password,
                hinttext: 'كلمة المرور',
                iconData: Icons.lock_outline,
              ),
              const SizedBox(height: 40),
              CustomButtomAuth(
                text: 'إنشاء حساب',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                  // controller.signUp();
                },
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    ));
  }
}

class NamePerson extends StatelessWidget {
  const NamePerson({
    Key? key,
    // required this.controller,
  }) : super(key: key);

  // final SignUpControllerImp controller;

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: CustonTextFormAuth(
              // mycontroller: controller.username,
              hinttext: 'الاسم الاول',
              iconData: Icons.person_outlined,
            ),
          ),
        ),
        Expanded(
          child: CustonTextFormAuth(
            // mycontroller: controller.password,
            hinttext: 'الاسم الثاني',
            iconData: Icons.person_outlined,
          ),
        ),
      ],
    );
  }
}
