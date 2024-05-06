
import 'package:flutter/material.dart';

class MyTabPage extends StatefulWidget {
  const MyTabPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyTabPageState createState() => _MyTabPageState();
}

class _MyTabPageState extends State<MyTabPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      appBar: AppBar(
        title: const Text('hhh Bar'),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: Colors.white,
          tabs: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
              ),
              child: const Text('العنصر 4'),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
              ),
              child: const Text('العنصر 3'),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
              ),
              child: const Text('العنصر 2'),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
              ),
              child: const Text('العنصر 1'),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text('محتوى العنصر 4')),
          Center(child: Text('محتوى العنصر 3')),
          Center(child: Text('محتوى العنصر 2')),
          Center(child: Text('محتوى العنصر 1')),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
