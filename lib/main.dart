// // ignore_for_file: deprecated_member_use

// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_school/controller/home/bottom_navigation_con.dart';
// import 'package:flutter_school/controller/home/home_pinding.dart';
// import 'package:flutter_school/core/constant/color.dart';
// import 'package:flutter_school/featuers/Home/view/widget/bottom_navigation_bar.dart';
// import 'package:flutter_school/featuers/auth/view/signup_screen.dart';
// import 'package:flutter_school/featuers/community/community_home.dart';
// import 'package:flutter_school/featuers/quiz/finshe_exam.dart';
// import 'package:flutter_school/generated/l10n.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';

// import 'featuers/quiz/quiz.dart';

// void main() {
//   runApp(
//     GetMaterialApp(
//       home: const SingUpScreen(),
      
//     debugShowCheckedModeBanner: false,
//           textDirection: TextDirection.rtl,
//       locale: const Locale('ar'),
//       localizationsDelegates:const [
//                 S.delegate,
//                 GlobalMaterialLocalizations.delegate,
//                 GlobalWidgetsLocalizations.delegate,
//                 GlobalCupertinoLocalizations.delegate,
//             ],
//             supportedLocales: S.delegate.supportedLocales,
           
//       theme: ThemeData(
//         iconTheme:const IconThemeData(
//           color: AppColor.black

//         ),
//         backgroundColor: Colors.white,
//          fontFamily:'LamaSans-SemiBold.ttf',
//          secondaryHeaderColor: const Color.fromRGBO(142, 142, 142, 1),
//          textTheme: const TextTheme(
          
//            titleSmall : TextStyle(color: AppColor.grey,
//             fontFamily:'LamaSans-SemiBold.ttf',),
//          ),
//            ),
//     initialRoute: '/home',
//     defaultTransition: Transition.fade,
//     getPages: [
//       GetPage(
//         name: '/home',
//         page: () =>  SingUpScreen(),
//         binding: SingUpScreenBinding(),
//       ),
//       GetPage(
//         name: '/FinsheExam',
//         page: () =>  FinsheExam(),
//       ),
//     ],
    
//   ));
// }


// class HomePage extends GetView<HomeController> {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//      ScreenUtil.init(
//       context,
//       designSize: const Size(375, 812),
//       minTextAdapt: true,
//       splitScreenMode: true,
//     );
//     return Scaffold(
//       body: Navigator(
//         key: Get.nestedKey(1),
//         initialRoute: '/browse',
//         onGenerateRoute: controller.onGenerateRoute,
//       ),
//       bottomNavigationBar: Obx(
//         () => BottomNavigationBar(
//           items:  <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset('assets/svg/home.svg'),
//               label: 'الصفحه الرئسيه',
//             ),
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset('assets/svg/user2.svg'),
//               label: 'الحساب',
//             ),
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset('assets/svg/cup.svg'),
//               label: 'التصنيف',
//             ),
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset('assets/svg/messages-2.svg'),
//               label: 'المجتمع',
//             ),
//           ],
//           currentIndex: controller.currentIndex.value,
//           selectedItemColor: Colors.pink,

//           type: BottomNavigationBarType.fixed,
//           backgroundColor: Colors.green,

//           onTap: controller.changePage,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'package:flutter_school/generated/l10n.dart';
import 'package:get/get.dart';
import 'core/constant/color.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'featuers/auth/view/signup_Screen.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
             
      textDirection: TextDirection.rtl,
      locale: const Locale('ar'),
      localizationsDelegates:const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
           
      theme: ThemeData(
        iconTheme:const IconThemeData(
          color: AppColor.black

        ),
         fontFamily:'LamaSans-SemiBold.ttf',
         secondaryHeaderColor: const Color.fromRGBO(142, 142, 142, 1),
         textTheme: const TextTheme(
          
           titleSmall : TextStyle(color: AppColor.grey,
            fontFamily:'LamaSans-SemiBold.ttf',),
         ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColor.primaryColor),
       
       // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:const SignUpScreen(),
        );
      
       
      }
    );
  }
}