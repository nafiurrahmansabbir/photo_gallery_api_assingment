
import 'package:flutter/material.dart';

import 'MyHomePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery App',
      theme: ThemeData(
      ),
      home:  const MyHomePage(),
    );

  }


}
