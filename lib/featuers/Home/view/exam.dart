// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_school/core/constant/color.dart';
import 'package:flutter_school/featuers/Home/view/choese_lesson.dart';

class ChooseLesson extends StatefulWidget {
  const ChooseLesson({super.key});

  @override
  State<ChooseLesson> createState() => _ChooseLessonState();
}

class _ChooseLessonState extends State<ChooseLesson> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: 
          Padding(
           padding:  const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
           child: ListView(
             children: [
              //  Container(
              //         height: 20.h,
              //             width: 20.h,
              //             decoration: BoxDecoration(
                            
              //               color: AppColor.primaryColor,
              //               borderRadius: BorderRadius.circular(10),
                          
              //             ),
              //       child:  const Row(
              //         children: [

              //           Text( " 1 ",
              //            style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 20,
                         
              //             ),
                          
              //           ),
              //           // ignore: unnecessary_string_escapes
              //           Text( " \ ",
              //            style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 20,
                         
              //             ),
                          
              //           ),
              //           Text( " 2 ",
              //            style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 20,
                         
              //             ),
                          
              //           ),
              //         ],
              //       )
              //  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 60,
                          width: 150,
                          decoration: BoxDecoration(
                             boxShadow: const [
                              BoxShadow(
                              color: AppColor.black,
                           offset: Offset(1, 1)  
                            )],
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                           
                          ),
                    child: const Row(
                              children:  [
                                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                          'اختبار فصلي',
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                         
                          ),
                          textAlign: TextAlign.right,
                        ),
                                ),
                              ],
                            ),
                  ),
                ),
               const CheckItem(
               text: ' unit zero / الوحدة الأولى',
              lessonTaken: true,
              lessonCompleted: true,
             ),
               const CheckItem(
               text: ' unit one / الوحدة الأولى',
              lessonTaken: true,
              lessonCompleted: false,
             ),
               const CheckItem(
               text: ' unit two / الوحدة الثانية',
              lessonTaken: false,
              lessonCompleted: false,
             )
           ]),
          ),
      ),
    );
  }
}

class CheckItem extends StatelessWidget {
  const CheckItem({
    Key? key,
    required this.text,
    required this.lessonTaken,
    required this.lessonCompleted,
  }) : super(key: key);
   final String text;
   final bool lessonTaken;
   final bool lessonCompleted;
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: () {
           Get.to(() =>  const ChooseLessonesListView());
        },
        child: Container(
          height: 60,
          width: 150,
          decoration: BoxDecoration(
             boxShadow: const [
              BoxShadow(
              color: AppColor.black,
                offset: Offset(1, 1)  
            )],
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(10),
           
          ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                      text,
                      style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                     
                      ),
                      textAlign: TextAlign.right,
                    ),
              ),
              
                  const Spacer(
                    flex: 1,
                  ),
               IconButton(onPressed: (){}, 
             
               
               icon: SvgPicture.asset(
            lessonCompleted && lessonTaken ? 'assets/svg/noun-done-2905124 2.svg' : lessonTaken ? 'assets/svg/Group.svg' : 'assets/svg/lock2.svg',
          //  color: Colors.white,
                
               ),
               ),
                  
            ],
          ),
          
        ),
      ),
    );
  }
}
