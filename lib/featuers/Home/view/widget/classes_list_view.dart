
import 'package:flutter/material.dart';
import 'package:flutter_school/core/constant/imgaeasset.dart';
import 'package:flutter_school/core/constant/routes.dart';
import 'package:flutter_school/featuers/Home/view/lensses.dart';
import 'package:get/get.dart';

class ClassesListView extends StatelessWidget {
  const ClassesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 400,
     width: 600,
      child: ListView(
       
           scrollDirection: Axis.horizontal,
       
                     shrinkWrap: true,
                     children: [
                      GestureDetector(
                        onTap: () {
                           Get.to(() => const LossenSreen());
                        },
                        child: Image.asset(AppImageAsset.ImageOne)),
                      Image.asset(AppImageAsset.ImageTwo),
                      Image.asset(AppImageAsset.ImageThree),
                     ]
                   ),
    );
  }
}
