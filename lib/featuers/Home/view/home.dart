import 'package:flutter/material.dart';
import 'package:flutter_school/featuers/Home/tab.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_school/featuers/auth/view/widget/auth/custombuttonauth.dart';
import 'package:flutter_school/featuers/Home/view/offers_screen.dart';

class BrowsePage extends StatelessWidget {
  const BrowsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Logo',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
             SizedBox(

              height: ScreenUtil().setHeight(500),
              width: ScreenUtil().setWidth(600),
              
              child: const StudyStageScreen()),
              // const SizedBox(height: 40),
              CustomButtomAuth(
                text: 'التسجيل',
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => const OffersScreen(),
                  );
                },
              ),
              // const SizedBox(height: 40),
              // const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    
     
    );
  }
}


// class MyTabPage extends StatelessWidget {
//   MyTabPage({
//     Key? key,
//     required this.name,
//   }) : super(key: key);
//  final String name;
// //  final String backimage;
//   @override
//   Widget build(BuildContext context) {
//     return  Padding(
//       padding:  EdgeInsets.all(8.0.h),
//       child:  SizedBox(
//         height: ScreenUtil().setHeight(80),
//         width: double.infinity,
//         child: ListView.builder(
//              shrinkWrap: true,
//           scrollDirection: Axis.horizontal,
//           // itemCount: classesModel.length,
//                 itemBuilder: (context, index) {
//                   return  customTabBarItem(
//                     onTap: (){
//                       //  Get.to(() => ClassesListView());
//                     } ,
//                     text: name,
//                     chose: true,
//                     image:classesModel.backImage,
//                   );
//                 },
         
       
         
//             //  Padding(
//             //    padding:  EdgeInsets.all(8.0.h),
//             //    child: customTabBarItem(
//             //     onTap: (){
//             //      // Get.to(() => ClassesListView());
//             //     } ,
//             //     text: classesModel.name,
//             //     chose: true,
//             //      image:classesModel.backImage,
//             //    ),
//             //  ),
//             //  Padding(
//             //    padding:  EdgeInsets.all(8.0.h),
//             //    child: customTabBarItem(
//             //     image: classesModel.backImage,
//             //     onTap: (){
//             //       //  Get.to(() => ClassesListView());
//             //     } ,
//             //     text: name,
//             //     chose: true,
                 
//             //    ),
//             //  ),

          
//         ),
//       ),
//     );
//   }
// }

// // ignore: must_be_immutable
// class customTabBarItem extends StatelessWidget {
//   customTabBarItem({
//     Key? key,
//     required this.text,
//     required this.chose,
//     required this.onTap,
//     required this.image,
//   }) : super(key: key);

//    final String text;
//    final bool chose;
//   VoidCallback  onTap;
//     String image ;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap ,
//       child: GestureDetector(
//         onTap: onTap,
//         child: Container(
//          width: 120.h,
//          padding: EdgeInsets.all(15.h),
//              alignment: Alignment.center,
            
//              decoration: BoxDecoration(
//              image:  DecorationImage(
//                image:  chose ?AssetImage(image) :const 
//                AssetImage ('assets/image/Frame 17.png'),
//                fit: BoxFit.fill
             
                
//             ),
//                border: Border.all(color: Colors.blue),
//                borderRadius: BorderRadius.circular(10.h)
               
//              ),
//              child:  Text(text,
//              style: TextStyle(
//                fontSize:ScreenUtil().setSp(20) ,
//                fontWeight: FontWeight.bold,
//              )),
//            ),
//       ),
//     );
//   }
// }

