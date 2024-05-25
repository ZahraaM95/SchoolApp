
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_school/featuers/Home/view/home.dart';
import 'package:get/get.dart';

class LoginControllerImp extends GetxController {
   String _errorMessage = '';

  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();

  Future<void> login() async {
    final response = await http.post(
      Uri.parse('http://153.92.222.153:200/auth/singIn'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'phone': phone.text,
        'password': password.text,
      }),
    );
  
    try {
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data);
      // معالجة البيانات بنجاح
      
      Get.to(() =>  BrowsePage());
 
      } else {
        // هنا يمكنك معالجة الخطأ
         _errorMessage = utf8.decode(response.body.toString().codeUnits);
      }
    } catch (e) {
      _errorMessage = (e.toString());
    }
  }
}
