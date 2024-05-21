import 'package:flutter/material.dart';

class details extends StatelessWidget {
  final String url;
  final String title;
  final int Id;

  const details(
      {super.key, required this.url, required this.title, required this.Id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: ()=>Navigator.of(context).pop(),
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        title: Text('Photo Details',style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w500)),
      ),
      body: Center(
        child: Image.network(url),
      ),
    );
  }
}

