import 'package:flutter/material.dart';

class CustonTextFormAuth extends StatelessWidget {
  final String hinttext;
 
  final IconData iconData;
 // final TextEditingController? mycontroller;

  const CustonTextFormAuth(
      {Key? key,
      required this.hinttext,
      
      required this.iconData,
     // required this.mycontroller
     })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
         textAlign: TextAlign.right,
        // controller: mycontroller,
        decoration: InputDecoration(
          
            hintText: hinttext,
            
            hintStyle: const TextStyle(fontSize: 14,),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
           
            suffixIcon: Icon(iconData),
            border:
                OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
