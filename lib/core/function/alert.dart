// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:flutter_school/core/constant/color.dart';
import 'package:flutter_school/featuers/Home/view/home.dart';

class AlertApp extends StatelessWidget {
 final String image;

  const AlertApp({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  
         Container(
           width: 290.h,
           height: 310.h,
          child: Center(
            child: Column (
              children: [
                Image.asset(image),
             
            const SizedBox(height: 10),
                 const Text('هل انت متاكد من حذف الحساب ؟!'),
              const SizedBox(height: 10),
          
                CustomButtomAuth(
                  text: 'حذف الحساب', 
                onPressed: (){
                  Get.to(() =>  BrowsePage());
                }),
                 const SizedBox(height: 10),
                 SizedBox(
                  width: ScreenUtil().setWidth(224),
                  height: ScreenUtil().setHeight(40),
                   child: OutlinedButton(
                    onPressed: (){
                    },
                      style: ButtonStyle(
                        // padding: MaterialStateProperty.all(
                        //    EdgeInsets.symmetric(horizontal: 95.h,vertical: 20.h)),
                        side: MaterialStateProperty.all(
                          const BorderSide(color: AppColor.borderColor)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ))
                      ),
            
                      child:  Text('الغاء',
                        style: TextStyle(
                          color:AppColor.borderColor,
                          fontSize: ScreenUtil().setSp(16),
                          fontWeight: FontWeight.w700,
                        )
                        ),
                        ),
                 )
              
              ],
              
               
              ),
          ),
        );
  }
  }

class CustomButtomAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtomAuth({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
      child: MaterialButton(
        
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.symmetric(vertical:ScreenUtil().setHeight(14),
         horizontal:ScreenUtil().setWidth(70)),
        onPressed: onPressed,
        color: AppColor.primaryColor,
        textColor: Colors.white,
        
        child: Text(text, 
        style: TextStyle(
          fontWeight: FontWeight.bold , fontSize: ScreenUtil().setSp(14))),
      ),
    );
  }
}
