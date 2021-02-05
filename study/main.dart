int below50(int a, int b){
  int calc = a + b;
  return calc;
}


List somePlanet() => ["Merc", "Ven", "Earth"];

String scoreChecker(int c, int d){
  
  int testDivide = below50(c,d) ~/ 2;
  
  print(testDivide);
  
  if (testDivide < 50){
    return "below 50";
   }
  else {
    return "above 50";
  }
}

int divideZero(int x){
  return x ~/ 0;
}

class DivideExceptions implements Exception{
  String errormsg(){
    return "you cannot ngutang";
  }
}

void ngutang(int amount){
  if (amount < 0){
    throw new DivideExceptions();
  }
  else {
    print("gak ngutang");
  }
}

void main() {
  var score1 = 66;
  var score2 = 23;
  
  var printScore = scoreChecker(score1,score2);
  
  print(printScore);
  
  for (String myPlanet in somePlanet()){
    if (myPlanet == "Earth"){
      break;
    }
    else {
      print(myPlanet);
    }
  }
  
  try {
    divideZero(2);
  }
  catch(e){
    print("The exception thrown is $e");
  }
  
  try {
    ngutang(200);
  }
  catch(e){
    print(e.errormsg());
  }
}
