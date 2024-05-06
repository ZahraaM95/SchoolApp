import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/constant/color.dart';
import 'featuers/auth/view/signup_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates:const [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales:const [
    Locale('ar'), // English
  
  ],
      theme: ThemeData(
         fontFamily:'LamaSans-SemiBold.ttf',
         secondaryHeaderColor: const Color.fromRGBO(142, 142, 142, 1),
         textTheme: const TextTheme(
          
           titleSmall : TextStyle(color: AppColor.grey,
            fontFamily:'LamaSans-SemiBold.ttf',),
         ),
       
       // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Login(),
    );
  }
}