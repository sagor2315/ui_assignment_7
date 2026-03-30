import 'package:flutter/material.dart';
import 'package:ui_assignment_7/MyAppBodyPage.dart';

class MyAppHomePage extends StatefulWidget {
  const MyAppHomePage({super.key});

  @override
  State<MyAppHomePage> createState() => _MyAppHomePageState();
}

class _MyAppHomePageState extends State<MyAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.orange,
        leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_back, size: 25, color: Colors.black,
            )
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search, size: 25, color: Colors.black,
            ),
          )
        ],
      ),
      body: MyAppBodyPage(),
    );
  }
}
