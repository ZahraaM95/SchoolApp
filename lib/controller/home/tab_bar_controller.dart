// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class StudyStage {
  String id; 
  String name;
  List<StudyClass> classes;

  StudyStage({required this.id, required this.name, required this.classes});

  factory StudyStage.fromJson(Map<String, dynamic> json) {
    return StudyStage(
      id: json['_id'],
      name: json['name'],
      classes: [],  // Initialize with an empty list since there's no 'classes' in the initial JSON structure
    );
  }
}

class StudyClass {
  int id;
  String name;
  List<String> image = [
    'assets/image/602.png',
    'assets/image/603.png',
    'assets/image/605.png',
    'assets/image/606.png',
    'assets/image/601.png',
  ];

  StudyClass({required this.id, required this.name});

  factory StudyClass.fromJson(Map<String, dynamic> json) {
    return StudyClass(
      id: json['id'],
      name: json['name'],
    );
  }
}

class StudyStageController extends GetxController {
  var studyStages = <StudyStage>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchStudyStages();
    fetchClasses();
    super.onInit();
  }

 Future<void> fetchStudyStages() async {
  try {
    isLoading(true);
    final response = await http.get(
      Uri.parse('http://153.92.222.153:200/classes/categoryes'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      print('JSON Response: $jsonResponse');

      if (jsonResponse['categoryes'] != null && jsonResponse['categoryes'] is List) {
        var categories = jsonResponse['categoryes'] as List;
        print('Categories: $categories');
        var stages = categories.map((data) => StudyStage.fromJson(data)).toList();
        print('Stages: $stages');
        studyStages.assignAll(stages);
      } else {
        print("Error: 'categoryes' field is either null or not a List");
      }
    } else {
      print("Error: ${response.statusCode}");
    }
  } catch (e) {
    print("Exception: $e");
  } finally {
    isLoading(false);
  }
}
 Future<void> fetchClasses() async {
  try {
    isLoading(true);
    final response = await http.get(
      Uri.parse('http://153.92.222.153:200/classes?categoryID=664b5b4fad1feaf5b6bc4921'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      print('JSON Response: $jsonResponse');

      if (jsonResponse['classes'] != null && jsonResponse['classes'] is List) {
        var classes = jsonResponse['classes'] as List;
        print('classes: $classes');
        var myclass = classes.map((data) => StudyStage.fromJson(data)).toList();
        print('Stages: $myclass');
        studyStages.assignAll(myclass);
      } else {
        print("Error: 'categoryes' field is either null or not a List");
      }
    } else {
      print("Error: ${response.statusCode}");
    }
  } catch (e) {
    print("Exception: $e");
  } finally {
    isLoading(false);
  }
}
}




class Class {
  String name;
  List<String> image;

  Class({required this.name, required this.image});

  factory Class.fromJson(Map<String, dynamic> json) {
    return Class(
      name: json['name'],
      image: List<String>.from(json['image']),
    );
  }
}


