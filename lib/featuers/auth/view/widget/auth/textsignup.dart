import 'package:flutter_school/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  
  final String texttwo;
  final void Function() onTap;
  const CustomTextSignUpOrSignIn(
      {Key? key,
    
      required this.texttwo,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       
        InkWell(
          onTap: onTap,
          child: Text(texttwo,
              style: const TextStyle(
                  color: AppColor.primaryColor, 
                  fontWeight: FontWeight.bold
                  )),
        )
      ],
    );
  }
}
