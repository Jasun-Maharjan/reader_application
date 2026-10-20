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
            BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.business),label:'Business'),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Bookmark'),
          ],
          ),
     
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
          child:const Icon(Icons.add),
        ),

        body: Padding(
        padding: const .all(8.0),
        child: SearchAnchor(
          builder: (BuildContext context, SearchController controller){
            return Searchbar(
              controller: controller,
              padding: const WidgetStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 16.0),
            ),
            onTap:({
              controller.openView();
            },
            onChanged: (_){
              controller.openView();
            },
            leading: const Icon(Icons.search),
            trailing: <Widget>[
              Tooltip(
                message: 'Change brightness mode',
                 child: IconButton(
                  isSelected: isDark,
                  onPressed: () {
                    setState(() {
                      isDark = !isDark;
                    });
                  },
                 ),
              ),
            ],
            ),
            );
          },
        ),
        ),
      ),
    );
  }
}