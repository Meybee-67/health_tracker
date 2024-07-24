//Fruits Calories
FruitsCalories(String Value){
  double FruitsCalories =0.0;
  if(Value=='Apple'){
    FruitsCalories=52;
  }
  if(Value=='Pear'){
    FruitsCalories=60;
  }
  if (Value=='Orange'){
      FruitsCalories=40;
  }
  if (Value=='Banana'){
      FruitsCalories=45;
  }
  if (Value=='Peach'){
      FruitsCalories=47;
  }
  if (Value=='Apricot'){
      FruitsCalories=45;
  }
  if (Value=='Raspberries'){
      FruitsCalories=40;
  }
  if(Value=='Kiwi'){
    FruitsCalories= 53;
  }
  if(Value=='Cherries'){
    FruitsCalories=77;
  }
  else{
    FruitsCalories=0;
  }
  return(FruitsCalories);
  }

//Vegetables calories
VegetablesCalories(String Value){
  double Vegetables =0.0;
  if(Value=='Peppers'){
    Vegetables=22;
  }
  if(Value=='Tomatoes'){
    Vegetables=20;
  }
  if (Value=='Green peas'){
      Vegetables=35;
  }
  if (Value=='Cucumber'){
      Vegetables=7;
  }
  if (Value=='Zucchini'){
      Vegetables=30;
  }
  if (Value=='Carrot'){
      Vegetables=20;
  }
  if (Value=='Leek'){
      Vegetables=42;
  }
  if (Value=='Eggplants'){
      Vegetables=29;
  }
  if (Value=='Mushrooms'){
      Vegetables=28;
  }
  if (Value=='Broccolis'){
      Vegetables=34;
  }
  if (Value=='Asparagus'){
      Vegetables=26;
  }
  if (Value=='Avocado'){
    Vegetables=165;
  }
  if(Value=='Onion'){
    Vegetables=17;
  }
  if(Value=='Green beans'){
    Vegetables=20;
  }
  return(Vegetables);
  }

//Cereals
CerealsCalories(String Value){
  double CerealsCalories =0.0;
  if(Value=='Lentils'){
    CerealsCalories=72;
  }
  if(Value=='Quinoa'){
    CerealsCalories=116;
  }
  if (Value=='Beans'){
      CerealsCalories=88;
  }
  if (Value=='Couscous'){
      CerealsCalories=130;
  }
  return(CerealsCalories);
  }

//Meat
MeatCalories(String Value){
  double Meat =0.0;
  if(Value=='Beef'){
    Meat=200;
  }
  if(Value=='Chicken'){
    Meat=150;
  }
  if (Value=='Lamb'){
      Meat=330;
  }
  if (Value=='Ham'){
      Meat=43;
  }
  if (Value=='Bacon'){
      Meat=190;
  }
  if (Value=='Chorizo'){
      Meat=225;
  }
  if (Value=='Merguez'){
      Meat=131.5;
  }
  if (Value=='Knacks'){
      Meat=95;
  }
  if (Value=='Veal'){
      Meat=29;
  }
  return(Meat);
  }

//Fish
FishCalories(String Value){
  double Fish =0.0;
  if(Value=='Salmon'){
    Fish=200;
  }
  if(Value=='Tuna'){
    Fish=250;
  }
  if (Value=='Monkfish'){
      Fish=79;
  }
  if (Value=='Mackerel'){
      Fish=128;
  }
  if (Value=='Sardines'){
      Fish=190;
  }
  if (Value=='Herring'){
      Fish=149;
  }
  return(Fish);
  }

//Eggs
EggsCalories(String Value){
  double Eggs =0.0;
  if(Value=='Soft boiled'){
    Eggs=85.2;
  }
  if(Value=='Medium boiled'){
    Eggs=85.2;
  }
  if (Value=='Boiled'){
      Eggs=85.2;
  }
  if (Value=='Poached'){
      Eggs=85.8;
  }
  if (Value=='Scrambled'){
      Eggs=88.8;
  }
  if (Value=='Fried'){
      Eggs=87;
  }
  return(Eggs);
  }

//Bread
BreadCalories(String Value){
  double Bread=0.0;
  if(Value=='Baguette'){
    Bread=255;
  }
  if(Value=='Sandwich loaf'){
    Bread=284;
  }
  if(Value=='Brioche'){
    Bread=203;
  }
  return(Bread);
}

//Sandwich
SandwichCalories(String Value){
  double Sandwich=0.0;
  if(Value=='Ham & Cheese'){
    Sandwich=536;
  }
  if(Value=='Houmous'){
    Sandwich=433;
  }
  if(Value=='Pesto & Mozza'){
    Sandwich=472.5;
  }
  if(Value=='Kebab'){
    Sandwich=233;
  }
  return(Sandwich);
}

//Salad
SaladCalories(String Value){
  double Salad=0.0;
  if(Value=='Peppers & Tomatoes'){
    Salad =21;
  }
  if(Value=='Tomatoes'){
    Salad=20;
  }
  if(Value=='Cucumber'){
    Salad=7;
  }
  if(Value=='Carrot'){
    Salad=20;
  }
  if(Value=='Lettuce'){
    Salad =7.5;
  }
  if(Value=='Roquette'){
    Salad=15;
  }
  if(Value=='Cabbage'){
    Salad=14;
  }
  if(Value=='Corn'){
    Salad=38;
  }
  return(Salad);
}

//Soup
SoupCalories(String Value){
  double Soup=0.0;
  if(Value=='Zucchini'){
    Soup =25;
  }
  if(Value=='Carrot'){
    Soup=47;
  }
  if(Value=='Onion'){
    Soup=23;
  }
  if(Value=='Leek'){
    Soup=28;
  }
  if(Value=='Pumpkin'){
    Soup =36;
  }
  return(Soup);
}

//Cheese
CheeseCalories(String Value){
double Cheese=0.0;
if(Value=='Emmental'){
  Cheese=111.9;
}
if(Value=='Feta'){
  Cheese=86.1;
}
if(Value=='Raclette'){
  Cheese=103.8;
}
if(Value=='Conté'){
  Cheese=128.7;
}
if(Value=='Fresh cheese'){
  Cheese=99.6;
}
if(Value=='Vache qui rit'){
  Cheese=50;
}
if(Value=='Mozza'){
  Cheese=79.5;
}
if(Value=='Goat'){
  Cheese=112.2;
}
if(Value=='Munster'){
  Cheese=138.9;
}
if(Value=='Gorgonzola'){
  Cheese=108;
}
return(Cheese);
}

//Sauce
SauceCalories(String Value){
double Sauce=0.0;
if(Value=='Tomato'){
  Sauce=29;
}
if(Value=='Pesto'){
  Sauce=130;
}
if(Value=='Ketchup'){
  Sauce=16.8;
}
if(Value=='Mayonnaise'){
  Sauce=102;
}
if(Value=='Tzatziki'){
  Sauce=57;
}
if(Value=='Houmous'){
  Sauce=49.8;
}
if(Value=='Soy'){
  Sauce=2.35;
}
if(Value=='Chili'){
  Sauce=6;
}
if(Value=='Cream'){
  Sauce=19.6;
}
if(Value=='Vinaigrette'){
  Sauce=44.9;
}
return(Sauce);
}

//Meals
MealsCalories(String Value){
double Meal=0.0;
if(Value=='Pie'){
  Meal=250;
}
if(Value=='Pizza'){
  Meal=275;
}
if(Value=='Hamburger'){
  Meal=300;
}
if(Value=='Gratin'){
  Meal=107;
}
if(Value=='Crêpes'){
  Meal =225;
}
if(Value=='Sushi'){
  Meal=250;
}
return(Meal);
}

//Potatoes
PotatoesCalories(String Value){
  double Potatoes=0.0;
  if(Value=='Crisps'){
    Potatoes=178.7;
  }
  if(Value=='Chips'){
    Potatoes=300;
  }
  if(Value=='Grilled'){
    Potatoes==164;
  }
  if(Value=='Steamed'){
    Potatoes=90;
  }
  if(Value=='Mashed'){
    Potatoes=95;
  }
  return(Potatoes);
}

//Fruit
FruitCalories(String Value){
  double FruitsCalories =0.0;
  if(Value=='Apple'){
    FruitsCalories=52;
  }
  if(Value=='Pear'){
    FruitsCalories=60;
  }
  if (Value=='Orange'){
      FruitsCalories=40;
  }
  if (Value=='Banana'){
      FruitsCalories=45;
  }
  if (Value=='Peach'){
      FruitsCalories=47;
  }
  if (Value=='Apricot'){
      FruitsCalories=45;
  }
  if (Value=='Raspberries'){
      FruitsCalories=40;
  }
  if(Value=='Kiwi'){
    FruitsCalories=51;
  }
  if(Value=='Cherries'){
    FruitsCalories=77;
  }
return(FruitsCalories);
}

//Beverages
BeverageCalories(String Value){
  double BeverageCalories=0.0;
  if(Value=='Fruit Juice'){
    BeverageCalories=126;
  }
  if(Value=='Coke Zero'){
    BeverageCalories=2;
  }
  if(Value=='Schweppes Zero'){
    BeverageCalories=7.5;
  }
  if(Value=='Iced tea'){
    BeverageCalories=50;
  }
  else{
    BeverageCalories=0;
  }
  return(BeverageCalories);
}