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
  List<String> myList = [];
  List<String> myListPrice = [];
  String plus = "asset/plus.png";
  String minus = "asset/minus.png";
  String name = "";
  String age = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Numeric List"),
        ),
        body: Container(
            child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: myList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          color: Colors.greenAccent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                myList[index],
                                style:
                                    TextStyle(fontSize: 30, color: Colors.red),
                              ),
                              Text(
                                myListPrice[index],
                                style: TextStyle(
                                    fontSize: 30, color: Colors.black54),
                              ),
                              Image.asset(myList[index] == "plus"?plus:minus,height: 50,width: 50,)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'What do people call you?',
                    labelText: 'Name',
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {

                    });
                  },
                ),
                TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'What is your age?',
                      labelText: 'Age',
                    ),
                    onChanged: (typed) {
                      age = typed;
                      setState(() {

                      });
                    }),
                GestureDetector(
                  onTap: (){
                    myList.add(name);
                    myListPrice.add(age);
                    setState(() {

                    });
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.red,
                    child: Center(child: Text("ADD")),
                  ),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
