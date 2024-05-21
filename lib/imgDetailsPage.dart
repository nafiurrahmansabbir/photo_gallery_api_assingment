import 'package:flutter/material.dart';

class details extends StatelessWidget {
  final String url;
  final String title;
  final int Id;

  const details(
      {super.key, required this.url, required this.title, required this.Id});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80,left: 20,right: 20),
              child: SizedBox(
                  height: .9*screenSize.width, width: .9*screenSize.width, child: Image.network(url,fit: BoxFit.cover,)
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                  child: Text("Title: $title",style: TextStyle(fontSize: 18),softWrap:true,maxLines: 2,),
                )
              ],
        
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ID : $Id",style: TextStyle(fontSize: 18),),
              ],
            )
          ],
        ),
      ),
    );
  }
}



