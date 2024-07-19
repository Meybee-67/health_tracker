import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BreakfastPage extends StatefulWidget {
  const BreakfastPage({Key? key}) : super(key: key);

  @override
  _BreakfastPageState createState() => _BreakfastPageState();
}

class _BreakfastPageState extends State<BreakfastPage>{

  //define constants
  var calories=0.0;
  String BeverageValue = 'Water';
  var beverages = ['Water', 'Coffee', 'Tea', 'Fruit Juice','Chicorea'];
  List<String> selected = [];
  String FruitValue= '-';
  String ToastValue='Butter';
  var fruits = ['-','Apple','Pear','Orange','Banana','Peach','Apricot','Raspberries'];
  var CookieQuantity =['15','25','50','75','100'];
  var ChocolateQuantity = ['5','10','15','20'];
  var SJQuantity =['100','125','150','200','225','250'];
  var ToastType=['Butter','Jam','Butter & Jam','Nutella','Peanut butter'];

  //Initialize quantity
  String CookiesValue='25';
  String ChocolateValue = '5';
  String JoghurtValue='125';
  String StewedValue ='125';

  //Initialize if checked
  bool checkboxCookie = false;
  bool checkboxToast = false;
  bool checkboxCornflakes = false;
  bool checkboxStewed=false;
  bool checkboxJoghurt=false;
  bool checkboxChocolate=false;


//Select Cookies
Future<void> Cookie(bool value) async {
  if(checkboxCookie==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select quantity (g)'),
          content:DropdownButton(
              // Initial Value
              value: CookiesValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: CookieQuantity.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  CookiesValue = newValue!;
                });
                setStateSB((){
                  CookiesValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              calories += double.parse(CookiesValue)*400/100;
              },
              child: const Text('OK'),
            ),
          ],
        )
        );
        }
      );
  }
}

//Select chocolate
Future<void> Chocolate(bool value) async {
  if(checkboxChocolate==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select quantity (g)'),
          content:DropdownButton(
              // Initial Value
              value: ChocolateValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: ChocolateQuantity.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  ChocolateValue = newValue!;
                });
                setStateSB((){
                  ChocolateValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              calories += double.parse(ChocolateValue)*550/100;
              },
              child: const Text('OK'),
            ),
          ],
        )
        );
        }
      );
  }
}

//Select stewed
Future<void> Stewed(bool value) async {
  if(checkboxStewed==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select quantity (g)'),
          content:DropdownButton(
              // Initial Value
              value: StewedValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: SJQuantity.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  StewedValue = newValue!;
                });
                setStateSB((){
                  StewedValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              calories += double.parse(StewedValue)*200/100;
              },
              child: const Text('OK'),
            ),
          ],
        )
        );
        }
      );
  }
}

//Select joghurt
Future<void> Joghurt(bool value) async {
  if(checkboxJoghurt==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select quantity (g)'),
          content:DropdownButton(
              // Initial Value
              value: JoghurtValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: SJQuantity.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  JoghurtValue = newValue!;
                });
                setStateSB((){
                  JoghurtValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              calories += double.parse(CookiesValue)*200/100;
              },
              child: const Text('OK'),
            ),
          ],
        )
        );
        }
      );
  }
}

//Select Toast
Future<void> Toast(bool value) async {
  if(checkboxToast==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select type'),
          content:DropdownButton(
              // Initial Value
              value: ToastValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: ToastType.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  ToastValue = newValue!;
                });
                setStateSB((){
                  ToastValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){Navigator.pop(context, 'OK');
              calories += ToastCalories(ToastValue);
              },
              child: const Text('OK'),
            ),
          ],
        )
        );
        }
      );
  }
}

//Count calories
ToastCalories(String Value){
  double Toastcalories=0.0;
  if(Value=='Butter'){
      Toastcalories+=293;
  }
  if(Value=='Butter & Jam'){
    Toastcalories+=321;
  }
  if(Value=='Jam'){
    Toastcalories+=283;
  }
  if((Value=='Nutella')||(Value=='Peanut butter')){
    Toastcalories+=285;
  }
  return(Toastcalories);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Breakfast',style:  GoogleFonts.roboto( color:const Color.fromARGB(255, 106, 79, 158),
              fontSize: 25,
              shadows: [
                    Shadow(
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                      color: Colors.black.withOpacity(.15),
                    )
                  ])
      ),
      centerTitle: true,
    ),
      body: Stack(
          children: <Widget>[
            const Positioned(
              top : 395,
              left :20,
              child: Text('Beverage',style: TextStyle(fontSize: 16),)
              ),
              Positioned(
              top : 385,
              right : 30,
              child:DropdownButton(
              // Initial Value
              value: BeverageValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: beverages.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  BeverageValue = newValue!;
                });
              },
            ),
              ),
              const Positioned(
              top : 345,
              left :20,
              child: Text('Fruit',style: TextStyle(fontSize: 16),)
              ),
              Positioned(
              top : 335,
              right : 30,
              child:DropdownButton(
              // Initial Value
              value: FruitValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: fruits.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  FruitValue = newValue!;
                });
              },
            ),
            ),
            Column(
        children: <Widget>[
          CheckboxListTile(
            value: checkboxCookie,
            onChanged: (bool? value) {
              setState(() {
                checkboxCookie = value!;
                Cookie(checkboxCookie);
              });
            },
            title: const Text('Cookies',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxToast,
            onChanged: (bool? value) {
              setState(() {
                checkboxToast = value!;
                Toast(checkboxToast);
              });
            },
            title: const Text('Toast',style:TextStyle(fontSize:16)),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxCornflakes,
            onChanged: (bool? value) {
              setState(() {
                checkboxCornflakes = value!;
              });
            },
            title: const Text('Cornflakes',style:TextStyle(fontSize:16)),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxStewed,
            onChanged: (bool? value) {
              setState(() {
                checkboxStewed = value!;
                Stewed(checkboxStewed);
              });
            },
            title: const Text('Stewed fruits',style:TextStyle(fontSize:16)),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxJoghurt,
            onChanged: (bool? value) {
              setState(() {
                checkboxJoghurt = value!;
                Joghurt(checkboxJoghurt);
              });
            },
            title: const Text('Joghurt',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxChocolate,
            onChanged: (bool? value) {
              setState(() {
                checkboxChocolate = value!;
                Chocolate(checkboxChocolate);
              });
            },
            title: const Text('Chocolate',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
        ],
      ),
          ],
        ),
    );
  }
  }