import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text("4th Wall"),
          backgroundColor: Colors.pink,
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon:Icon(Icons.home),label:'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.business),label:'Business'),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Bookmark'),
          ],
          ),
     
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text('Hi'),
          
          ),
        ),
      ),
    );
  }
}