
// import 'package:flutter_school/controller/resetpassword_controller.dart';
import 'package:flutter_school/core/constant/color.dart';
import 'package:flutter_school/featuers/auth/view/widget/auth/custombuttonauth.dart';
import 'package:flutter_school/featuers/auth/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter_school/featuers/auth/view/widget/auth/customtextformauth.dart';
import 'package:flutter_school/featuers/auth/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ResetPasswordControllerImp controller =
    //     Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('"39".tr',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
           CustomTextTitleAuth(text: "35".tr),
          const SizedBox(height: 10),
           CustomTextBodyAuth(
              text:
                  "34".tr),
          const SizedBox(height: 15),
            CustonTextFormAuth(
            // mycontroller: controller.password,
            hinttext: "23".tr,
            iconData: Icons.lock_outline,
           
            // mycontroller: ,
          ),   CustonTextFormAuth(
            // mycontroller: controller.password,
            hinttext: "39".tr,
            iconData: Icons.lock_outline,
           
            // mycontroller: ,
          ),
          CustomButtomAuth(text: "33".tr, onPressed: () {}),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
