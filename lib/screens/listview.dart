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
            ListTile( title: Text("Breakfast",style: TextStyle(fontWeight: FontWeight.bold),), leading: CircleAvatar(backgroundImage: AssetImage("assets/images/coffee.jpg"))),
            const SizedBox(height:10),
            ListTile( title: Text("Lunch",style: TextStyle(fontWeight: FontWeight.bold)),leading:  CircleAvatar(backgroundImage: AssetImage("assets/images/lunch.jpg"))),
            const SizedBox(height:10),
            ListTile( title: Text("Snacks",style: TextStyle(fontWeight: FontWeight.bold)),leading:  CircleAvatar(backgroundImage: AssetImage("assets/images/snacks.jpg"))),
            const SizedBox(height:10),
            ListTile( title: Text("Dinner",style: TextStyle(fontWeight: FontWeight.bold)),leading:  CircleAvatar(backgroundImage: AssetImage("assets/images/sandwich.jpg"))),
            const SizedBox(height:10),
            ListTile( title: Text("Party",style: TextStyle(fontWeight: FontWeight.bold)),leading:  CircleAvatar(backgroundImage: AssetImage("assets/images/party.jpg"))),
          ],
        );
}
}