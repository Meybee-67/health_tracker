import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_tracker/screens/home_screen.dart';
import 'package:health_tracker/screens/luch_functions.dart';

class LunchPage extends StatefulWidget {
  const LunchPage({Key? key}) : super(key: key);

  @override
  _LunchPageState createState() => _LunchPageState();
}

class _LunchPageState extends State<LunchPage>{

  //Initialize if checked
  bool checkboxPasta = false;
  bool checkboxRice=false;
  bool checkboxBread=false;
  bool checkboxCereals=false;
  bool checkboxPotatoes=false;
  bool checkboxSalad = false;
  bool checkboxSandwich = false;
  bool checkboxSoup=false;
  bool checkboxMeat=false;
  bool checkboxEggs =false;
  bool checkboxFish = false;
  bool checkboxVegetables = false;
  bool checkboxFruit=false;
  bool checkboxCheese=false;
  bool checkboxSauce=false;
  bool checkboxMeal=false;

//Define choices
  List<String> selected = [];
  
  var fruits = ['Apple','Pear','Orange','Banana','Peach','Apricot','Raspberries','Kiwi','Cherries'];
  var Foodquantity=['50','75','100','125','150','200'];
  var fish =['Salmon','Tuna','Monkfish','Mackerel','Sardines','Herring'];
  var meat =['Beef','Chicken','Ham','Bacon','Chorizo','Lamb','Merguez','Knacks','Veal'];
  var cereals =['Lentils','Beans','Quinoa','Couscous'];
  var soup =['Zucchini','Carrot','Leek','Onion','Pumpkin'];
  var sandwich=['Ham & Cheese','Houmous','Pesto & Mozza','Kebab'];
  var vegetables =['Peppers','Tomatoes','Cucumber','Zucchini','Carrot','Leek','Green peas','Eggplants','Mushrooms','Broccolis','Asparagus','Avocado','Onion'];
  var salad =['Peppers & Tomatoes','Tomatoes','Cucumber','Carrot','Lettuce','Roquette','Cabbage','Corn'];
  var potatoes =['Crisps','Chips','Mashed','Grilled','Steamed'];
  var eggs=['Soft boiled','Medium boiled','Boiled','Fried','Poached','Scrambled'];
  var cheese=['Emmental','Feta','Raclette','Conté','Fresh cheese','Vache qui rit','Mozza','Goat','Munster','Gorgonzola'];
  var bread =['Baguette','Sandwich loaf','Brioche'];
  var sauce=['Tomato','Pesto','Ketchup','Mayonnaise','Houmous','Tzatziki','Soy','Chili','Cream','Vinaigrette'];
  var meal=['Pie','Pizza','Sushi','Hamburger','Gratin','Crêpes'];
  var beverages = ['Water', 'Coke zero', 'Iced tea', 'Fruit Juice','Schweppes Zero','Tea'];

  //Initialize quantity
  var LunchCalories=0.0;
  String quantity='50';
  String BeverageValue = 'Water';

  //Initialize Food
  String FruitValue='Apple';
  String VegetablesValue='Tomatoes';
  String SandwichValue='Pesto & Mozza';
  String CerealsValue='Lentils';
  String MeatValue='Ham';
  String FishValue='Salmon';
  String SoupValue='Pumpkin';
  String SaladValue='Peppers';
  String PotatoesValue='Chips';
  String EggsValue='Soft boiled';
  String CheeseValue='Feta';
  String BreadValue='Baguette';
  String SauceValue='Tomato';
  String MealValue='Pizza';
  

//Select Sandwich
Future<void> Sandwich(bool value) async {
  if(checkboxSandwich==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select type'),
          content:DropdownButton(
              // Initial Value
              value: SandwichValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: sandwich.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  SandwichValue = newValue!;
                });
                setStateSB((){
                  SandwichValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: (){Navigator.pop(context, 'Cancel');
              setState(() {
                checkboxSandwich=false;
              });
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              LunchCalories += SandwichCalories(SandwichValue);
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

//Select Salad
Future<void> Salad(bool value) async {
  if(checkboxSalad==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select type'),
          content:DropdownButton(
              // Initial Value
              value: SaladValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: salad.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  SaladValue = newValue!;
                });
                setStateSB((){
                  SaladValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: (){Navigator.pop(context, 'Cancel');
              setState(() {
                checkboxSalad=false;
              });
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              LunchCalories += SaladCalories(SaladValue);
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

//Select Fruits
Future<void> Fruits(bool value) async {
  if(checkboxFruit==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select type'),
          content:DropdownButton(
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
                setStateSB((){
                  FruitValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: (){Navigator.pop(context, 'Cancel');
              setState(() {
                checkboxFruit=false;
              });
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              LunchCalories += FruitCalories(FruitValue);
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

//Select Soup
Future<void> Soup(bool value) async {
  if(checkboxSoup==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select type'),
          content:DropdownButton(
              // Initial Value
              value: SoupValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: soup.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  SoupValue = newValue!;
                });
                setStateSB((){
                  SoupValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: (){Navigator.pop(context, 'Cancel');
              setState(() {
                checkboxSoup=false;
              });
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              LunchCalories += SoupCalories(SoupValue);
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

 //Select Veggies
Future<void> Vegetables(bool value) async {
  if(checkboxVegetables==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select type'),
          content:DropdownButton(
              // Initial Value
              value: VegetablesValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: vegetables.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  VegetablesValue = newValue!;
                });
                setStateSB((){
                  VegetablesValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: (){Navigator.pop(context, 'Cancel');
              setState(() {
                checkboxVegetables=false;
              });
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              LunchCalories += VegetablesCalories(VegetablesValue);
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

 //Select Potatoes
Future<void> Potatoes(bool value) async {
  if(checkboxPotatoes==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select type'),
          content:DropdownButton(
              // Initial Value
              value: VegetablesValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: potatoes.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  PotatoesValue = newValue!;
                });
                setStateSB((){
                  PotatoesValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: (){Navigator.pop(context, 'Cancel');
              setState(() {
                checkboxPotatoes=false;
              });
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              LunchCalories += PotatoesCalories(PotatoesValue);
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

  //Select Pasta
Future<void> Pasta(bool value) async {
  if(checkboxPasta==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select quantity (g)'),
          content:DropdownButton(
              // Initial Value
              value: quantity,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: Foodquantity.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  quantity = newValue!;
                });
                setStateSB((){
                  quantity = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: (){Navigator.pop(context, 'Cancel');
              setState(() {
                checkboxPasta=false;
              });
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              LunchCalories += double.parse(quantity)*126/100;
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

//Chose rice
Future<void> Rice(bool value) async {
  if(checkboxRice==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select quantity (g)'),
          content:DropdownButton(
              // Initial Value
              value: quantity,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: Foodquantity.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  quantity = newValue!;
                });
                setStateSB((){
                  quantity = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: (){Navigator.pop(context, 'Cancel');
              setState(() {
                checkboxRice=false;
              });
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              LunchCalories += double.parse(quantity)*90/100;
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

//select Cereals
Future<void> Cereals(bool value) async {
  if(checkboxCereals==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select type'),
          content:DropdownButton(
              // Initial Value
              value: CerealsValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: cereals.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  CerealsValue = newValue!;
                });
                setStateSB((){
                  CerealsValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: (){Navigator.pop(context, 'Cancel');
              setState(() {
                checkboxCereals=false;
              });
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              LunchCalories += CerealsCalories(CerealsValue);
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

//select Bread
Future<void> Bread(bool value) async {
  if(checkboxBread==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select type'),
          content:DropdownButton(
              // Initial Value
              value: BreadValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: bread.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  BreadValue = newValue!;
                });
                setStateSB((){
                  BreadValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: (){Navigator.pop(context, 'Cancel');
              setState(() {
                checkboxBread=false;
              });
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              LunchCalories += BreadCalories(BreadValue);
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

//Choose meat
Future<void> Meat(bool value) async {
  if(checkboxMeat==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select type'),
          content:DropdownButton(
              // Initial Value
              value: MeatValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: meat.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  MeatValue = newValue!;
                });
                setStateSB((){
                  MeatValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: (){Navigator.pop(context, 'Cancel');
              setState(() {
                checkboxMeat=false;
              });
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              LunchCalories += MeatCalories(MeatValue);
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

//Choose Fish
Future<void> Fish(bool value) async {
  if(checkboxFish==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select type'),
          content:DropdownButton(
              // Initial Value
              value: FishValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: fish.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  FishValue = newValue!;
                });
                setStateSB((){
                  FishValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: (){Navigator.pop(context, 'Cancel');
              setState(() {
                checkboxFish=false;
              });
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              LunchCalories += FishCalories(FishValue);
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

//Choose Eggs
Future<void> Eggs(bool value) async {
  if(checkboxEggs==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select type'),
          content:DropdownButton(
              // Initial Value
              value: EggsValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: eggs.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  EggsValue = newValue!;
                });
                setStateSB((){
                  EggsValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: (){Navigator.pop(context, 'Cancel');
              setState(() {
                checkboxEggs=false;
              });
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              LunchCalories += EggsCalories(EggsValue);
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

//Choose Cheese
Future<void> Cheese(bool value) async {
  if(checkboxCheese==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select type'),
          content:DropdownButton(
              // Initial Value
              value: CheeseValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: cheese.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  CheeseValue = newValue!;
                });
                setStateSB((){
                  CheeseValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: (){Navigator.pop(context, 'Cancel');
              setState(() {
                checkboxCheese=false;
              });
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              LunchCalories += CheeseCalories(CheeseValue);
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

//Choose Sauce
Future<void> Sauce(bool value) async {
  if(checkboxSauce==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select type'),
          content:DropdownButton(
              // Initial Value
              value: SauceValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: sauce.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  SauceValue = newValue!;
                });
                setStateSB((){
                  SauceValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: (){Navigator.pop(context, 'Cancel');
              setState(() {
                checkboxSauce=false;
              });
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              LunchCalories += SauceCalories(SauceValue);
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

//Choose Meals
Future<void> Meal(bool value) async {
  if(checkboxMeal==true){
    await showDialog(
        context: context,
        builder: (context){
          return StatefulBuilder(builder: (conext, setStateSB)=>
          AlertDialog(
          title: const Text('Select type'),
          content:DropdownButton(
              // Initial Value
              value: MealValue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: meal.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  MealValue = newValue!;
                });
                setStateSB((){
                  MealValue = newValue!;
                });
              },
            ),
          actions: <Widget>[
            TextButton(
              onPressed: (){Navigator.pop(context, 'Cancel');
              setState(() {
                checkboxMeal=false;
              });
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){ Navigator.pop(context, 'OK');
              LunchCalories += MealsCalories(MealValue);
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

//Choose Beverages

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Lunch',style:  GoogleFonts.roboto( color:const Color.fromARGB(255, 106, 79, 158),
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
    body: SingleChildScrollView(
      child :
      Stack(
          children: <Widget>[
            const Positioned(
              top : 20,
              left :15,
              child: Text('Beverage',style: TextStyle(fontSize: 16),)
              ),
              Positioned(
              top : 10,
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
                  LunchCalories+=BeverageCalories(BeverageValue);
                });
              },
            ),
            ),
            Container(
              margin: EdgeInsets.only(top:60),
              child :  Column(
        children: <Widget>[
          CheckboxListTile(
            value: checkboxSandwich,
            onChanged: (bool? value) {
              setState(() {
                checkboxSandwich = value!;
                Sandwich(checkboxSandwich);
              });
            },
            title: const Text('Sandwich',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxSalad,
            onChanged: (bool? value) {
              setState(() {
                checkboxSalad = value!;
                Salad(checkboxSalad);
              });
            },
            title: const Text('Salad',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxFruit,
            onChanged: (bool? value) {
              setState(() {
                checkboxFruit = value!;
                Fruits(checkboxFruit);
              });
            },
            title: const Text('Fruit',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxSoup,
            onChanged: (bool? value) {
              setState(() {
                checkboxSoup = value!;
                Soup(checkboxSoup);
              });
            },
            title: const Text('Soup',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxVegetables,
            onChanged: (bool? value) {
              setState(() {
                checkboxVegetables = value!;
                Vegetables(checkboxVegetables);
              });
            },
            title: const Text('Vegetables',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxPasta,
            onChanged: (bool? value) {
              setState(() {
                checkboxPasta = value!;
                Pasta(checkboxPasta);
              });
            },
            title: const Text('Pasta',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxRice,
            onChanged: (bool? value) {
              setState(() {
                checkboxRice = value!;
                Rice(checkboxRice);
              });
            },
            title: const Text('Rice',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxCereals,
            onChanged: (bool? value) {
              setState(() {
                checkboxCereals = value!;
                Cereals(checkboxCereals);
              });
            },
            title: const Text('Cereals',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxBread,
            onChanged: (bool? value) {
              setState(() {
                checkboxBread = value!;
                Bread(checkboxBread);
              });
            },
            title: const Text('Bread',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxPotatoes,
            onChanged: (bool? value) {
              setState(() {
                checkboxPotatoes = value!;
                Potatoes(checkboxPotatoes);
              });
            },
            title: const Text('Potatoes',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxMeat,
            onChanged: (bool? value) {
              setState(() {
                checkboxMeat = value!;
                Meat(checkboxMeat);
              });
            },
            title: const Text('Meat',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxFish,
            onChanged: (bool? value) {
              setState(() {
                checkboxFish = value!;
                Fish(checkboxFish);
              });
            },
            title: const Text('Fish',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxEggs,
            onChanged: (bool? value) {
              setState(() {
                checkboxEggs = value!;
                Eggs(checkboxEggs);
              });
            },
            title: const Text('Eggs',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxCheese,
            onChanged: (bool? value) {
              setState(() {
                checkboxCheese = value!;
                Cheese(checkboxCheese);
              });
            },
            title: const Text('Cheese',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxSauce,
            onChanged: (bool? value) {
              setState(() {
                checkboxSauce = value!;
                Sauce(checkboxSauce);
              });
            },
            title: const Text('Sauce',style:TextStyle(fontSize:16),),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxMeal,
            onChanged: (bool? value) {
              setState(() {
                checkboxMeal = value!;
                Meal(checkboxMeal);
              });
            },
            title: const Text('Meal',style:TextStyle(fontSize:16),),
          ),
          ]
          )
            ),
          const Divider(height: 0),
          const SizedBox(height: 10,),
          Positioned(
            bottom: 0,
            left:0,
            right:0,
            child: Align(alignment: Alignment.bottomRight,
            child: ButtonTheme(
              child:FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 106, 79, 158),
        child: const Icon(Icons.send),
        mini : true,
        onPressed: (){
          Navigator.pop(context);
          Navigator.push(context,MaterialPageRoute(builder: (context)=> MyHomePage()));
        },
      ),
            ),)
            ),
          ]
    )
    ),
    );
  }
}