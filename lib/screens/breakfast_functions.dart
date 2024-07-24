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
  else{
    FruitsCalories=0;
  }
  return(FruitsCalories);
  }

//Beverages
BeverageCalories(String Value){
  double BeverageCalories=0.0;
  if(Value=='Fruit Juice'){
    BeverageCalories=126;
  }
  if(Value=='Chicorea'){
    BeverageCalories=126;
  }
  else{
    BeverageCalories=0;
  }
  return(BeverageCalories);
}

//Toast
ToastCalories(String Value){
  double Toastcalories=0.0;
  if(Value=='Butter'){
      Toastcalories=293;
  }
  if(Value=='Butter & Jam'){
    Toastcalories=321;
  }
  if(Value=='Jam'){
    Toastcalories=283;
  }
  if((Value=='Nutella')||(Value=='Peanut butter')){
    Toastcalories=285;
  }
  return(Toastcalories);
}