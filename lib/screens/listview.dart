import 'package:flutter/material.dart';

class MyListPage extends StatefulWidget {
  const MyListPage({Key? key}) : super(key: key);

  @override
  _MyListPageState createState() => _MyListPageState();
}

class _MyListPageState extends State<MyListPage>{
  @override
  Widget build(BuildContext context){
    return ListView(
          padding: const EdgeInsets.all(10),
          children: const <Widget>[
            ListTile( title: Text("Breakfast",style: TextStyle(fontWeight: FontWeight.bold),),subtitle: Text("50 kcal"), leading: CircleAvatar(backgroundImage: AssetImage("assets/images/coffee.jpg"))),
            ListTile( title: Text("Lunch",style: TextStyle(fontWeight: FontWeight.bold)),subtitle: Text("200 kcal"), leading:  CircleAvatar(backgroundImage: AssetImage("assets/images/lunch.jpg"))),
            ListTile( title: Text("Dinner",style: TextStyle(fontWeight: FontWeight.bold)),subtitle: Text("150 kcal"), leading:  CircleAvatar(backgroundImage: AssetImage("assets/images/sandwich.jpg")))
          ],
        );
}
}