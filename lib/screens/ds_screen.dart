import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class DSScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C++ Cheat Sheet", style: TextStyle(
    color: Colors.white),),
        
      
        backgroundColor: Colors.black,
      ),
      body: FutureBuilder(
          future: rootBundle.loadString("assets/hello.md"),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              return Markdown(data: snapshot.data);
              
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}