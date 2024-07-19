import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_tracker/screens/add_breakfast.dart';
import 'package:health_tracker/screens/listview.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
//Constants

  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title : Text('Tracker',style:  GoogleFonts.roboto( color:Color.fromARGB(255, 106, 79, 158),
              fontSize: 25,
              shadows: [
                    Shadow(
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                      color: Colors.black.withOpacity(.15),
                    )
                  ])),
        backgroundColor: const Color.fromARGB(255, 255, 254, 254),
        centerTitle: true,
    ),
    body : Stack(
      children: <Widget>[
      Positioned(
        top:20,
        left:30,
        child: Text(DateFormat.yMMMEd().format(DateTime.now()), style:const TextStyle(fontSize:20),)
        ),

        //Gauge
        Positioned(
        top:10,
        left:125,
        child: SizedBox(
        width: 150.0,
        height: 300.0,
        child: SfRadialGauge(axes: <RadialAxis>[RadialAxis(minimum: 0,maximum: 1000)]),
        ),
        ),

        const Positioned(
        top:120,
        left:25,
        child : Column(
          children: [
            Text("400 kcal",style:TextStyle(fontSize:18,fontWeight: FontWeight.bold)),
            SizedBox(height: 8), //gap
            Text("Eaten",style: TextStyle(fontSize: 14)),
        ],)
        ),
        const Positioned(
        top:120,
        right:25,
        child : Column(
          children: [
            Text("200 kcal",style:TextStyle(fontSize:18,fontWeight: FontWeight.bold)),
            SizedBox(height: 8), //gap
            Text("Burnt",style: TextStyle(fontSize: 14)),
        ],)
        ),
        const Positioned(
          top:270,
          left:20,
          child: SizedBox(
        width: 300.0,
        height: 500.0,
        child : MyListPage()
          )
          ),
        Positioned(
        top:285,
        right:25,
        child: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 106, 79, 158),
        child: const Icon(Icons.add),
        mini : true,
        onPressed: (){
          Navigator.pop(context);
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BreakfastPage()));
        },
      ),
      ),
      Positioned(
        top:357,
        right:25,
        child: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 106, 79, 158),
        child: const Icon(Icons.add),
        mini : true,
        onPressed: (){},
      ),
      ),
      Positioned(
        top:432,
        right:25,
        child: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 106, 79, 158),
        child: const Icon(Icons.add),
        mini : true,
        onPressed: (){},
      ),
      ),
      ],
    )
    );
  }
}