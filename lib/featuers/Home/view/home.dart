// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_school/featuers/Home/view/widget/bottom_navigation_bar.dart';
import 'package:flutter_school/featuers/Home/view/widget/classes_list_view.dart';

class MyHomePage extends StatelessWidget {

    const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Logo',
        style: TextStyle(
          color: Colors.black
          
        ),),
       
      ),
      body: const SafeArea(
        child:SingleChildScrollView(
          child:Column(
             children: [
         MyTabPage(),
        ClassesListView(),
       SizedBox(
        height: 170,
       ),
          MyBottomNavigationBar(),
      
       ]
       ),
            
            
        )
      
      )
      
    );
  }
}

class MyTabPage extends StatelessWidget {
   const MyTabPage({
    Key? key,
   
  }) : super(key: key);
  
   
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child:  SizedBox(
        height: 80,
        width: double.infinity,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customTabBarItem(
                onTap:(){},
                text: 'الاعدادية',
                chose: false
                ,
                         ),
              ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: customTabBarItem(
                onTap:(){} ,
                text: 'المتوسطة',
                chose: true,
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: customTabBarItem(
                onTap: (){} ,
                text: 'الابتدائيه',
                chose: false,
                 
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: customTabBarItem(
                onTap: (){} ,
                text: 'المشترك بها ',
                chose: false,
                 
               ),
             ),
            
          ]
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class customTabBarItem extends StatelessWidget {
   customTabBarItem({
    super.key,
     required this.text,
    required this.chose,
    required this.onTap,
  });

   final String text;
   final bool chose;
   Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
       padding:const EdgeInsets.all(15),
           alignment: Alignment.center,
           decoration: BoxDecoration(
             border: Border.all(color: Colors.blue),
             borderRadius: BorderRadius.circular(10)
             
           ),
           child:  Text(text,
           style:const TextStyle(
             fontSize:20 ,
             fontWeight: FontWeight.bold,
           )),
         ),
    );
  }
}
