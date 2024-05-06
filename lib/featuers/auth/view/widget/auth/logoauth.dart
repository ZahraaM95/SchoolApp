// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';


class LogoAuth extends StatelessWidget {
  const LogoAuth({
    Key? key,
    required this.image,
  }) : super(key: key);
final String image ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0), // Border radius
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        width: 250,
        height: 250,)
    
        
      
    );
  }
}
