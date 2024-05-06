import 'package:flutter/material.dart';

class LossenSreen extends StatelessWidget {
  const LossenSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
           
            'الخامس اعدادي',
            style: TextStyle(color: Colors.black),
            
          ),
          centerTitle: true,
        ),
        body: ListView(
          children:const [
           BookItem(),
           BookItem(),
           BookItem(),
         
          
        ]),
      ),
    );
  }
}

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(children: [
        SizedBox(
            height: 250,
            width: 180,
            child: Image.asset('assets/image/Frame 18 (1).png')),
        SizedBox(
            height: 250,
            width: 180,
            child: Image.asset('assets/image/Frame 18 (1).png')),
      ]),
    );
  }
}
