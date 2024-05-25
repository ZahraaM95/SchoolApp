// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:flutter_school/featuers/Home/view/exam.dart';

class LossenSreen extends StatelessWidget {
  const LossenSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
           
            'الخامس اعدادي',
            style: TextStyle(color: Colors.black),
            
          ),
          centerTitle: true,
        ),
        body: ListView(
          children:const [
           BookItem(image: 'assets/droos/Frame 27.png',),
           BookItem(image: 'assets/droos/Frame 18.png',),
           BookItem(image: 'assets/droos/Frame 18.png',),
           BookItem(image: 'assets/droos/Frame 27.png',),
           BookItem(image: 'assets/droos/Frame 27.png',),
         
          
        ]),
      ),
    );
  }
}

class BookItem extends StatelessWidget {
  const BookItem({
    Key? key,
    required this.image,
  }) : super(key: key);
 final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      GestureDetector(
        onTap: () {
          Get.to(() => const ChooseLesson());
        },
        child: SizedBox(
            height: ScreenUtil().setHeight(150),
            width: ScreenUtil().setWidth(125),
            child: Image.asset(image)),
      ),
      GestureDetector(
        onTap: () {
              Get.to(() => const ChooseLesson());

        },
        child: SizedBox(
            height: ScreenUtil().setHeight(150),
            width: ScreenUtil().setWidth(125),
            child: Image.asset(image)),
      ),
    ]);
  }
}
