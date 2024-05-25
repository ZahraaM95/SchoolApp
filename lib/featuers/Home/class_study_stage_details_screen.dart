// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter_school/featuers/Home/view/lensses.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'dart:convert';

// class StudyStageDetailsScreen extends StatelessWidget {
//   final StudyStageController studyStageController = Get.put(StudyStageController());

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       if (studyStageController.isLoading.value) {
//         return Center(child: CircularProgressIndicator());
//       } else {
//         return ListView.builder(
//           shrinkWrap: true,
//           scrollDirection: Axis.horizontal,
//           itemCount: studyStageController.studyStage.value.classes.length,
//           itemBuilder: (context, index) {
//             return Stack(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       Get.to(() => const LossenSreen());
//                     },
//                     child: Image.asset(studyStageController.studyStage.value.classes[index].image[index]),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 110, right: 50),
//                   child: Image.asset('assets/image/Rectangle 245.png'),
//                 ),
//                 SizedBox(
//                   width: 267,
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 100),
//                     child: Align(
//                       alignment: Alignment.topCenter,
//                       child: Text(
//                         utf8.decode(studyStageController.studyStage.value.classes[index].name.runes.toList()),
//                         style: const TextStyle(
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             );
//           },
//         );
//       }
//     });
//   }
// }
// class StudyStageController extends GetxController {
//   var studyStage = StudyStage(classes: []).obs;
//   var isLoading = true.obs;

//   @override
//   void onInit() {
//     fetchStudyStage();
//     super.onInit();
//   }

//   void fetchStudyStage() async {
//     try {
//       isLoading(true);
//       final response = await http.get(Uri.parse(''));
//       if (response.statusCode == 200) {
//         var jsonResponse = json.decode(response.body);
//         if (jsonResponse['classes'] != null) {
//           studyStage.value = StudyStage.fromJson(jsonResponse);
//         } else {
//           // Handle the case where 'classes' is null
//           studyStage.value = StudyStage(classes: []);
//         }
//       } else {
//         // Handle error
//       }
//     } catch (e) {
//       // Handle any other errors
//       print(e);
//     } finally {
//       isLoading(false);
//     }
//   }
// }


// class StudyStage {
//   List<Class> classes;

//   StudyStage({required this.classes});

//   factory StudyStage.fromJson(Map<String, dynamic> json) {
//     return StudyStage(
//       classes: json['classes'] != null
//           ? List<Class>.from(json['classes'].map((x) => Class.fromJson(x)))
//           : [],
//     );
//   }
// }

// class Class {
//   String name;
//   List<String> image;

//   Class({required this.name, required this.image});

//   factory Class.fromJson(Map<String, dynamic> json) {
//     return Class(
//       name: json['name'],
//       image: List<String>.from(json['image']),
//     );
//   }
// }
