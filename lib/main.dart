import 'package:flutter/material.dart';

void main() {
  runApp(const MyListView());
}

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<String> myList = ["Mango", "Apple", "Banana", "Jackfruit"];
  List<String> myListPrice = ["200", "300", "10", "60"];
  List<String> myListImage = ["asset/plus.png", "asset/minus.png", "asset/plus.png", "asset/minus.png"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Numeric List"),
        ),
        body: Container(
            child: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    color: Colors.greenAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          myList[index],
                          style: TextStyle(fontSize: 30, color: Colors.red),
                        ),
                        Text(
                          myListPrice[index],
                          style: TextStyle(fontSize: 30, color: Colors.black54),
                        ),
                        Image.asset(myListImage[index],width: 50,height: 50,)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            );
          },
        )),
      ),
    );
  }
}
