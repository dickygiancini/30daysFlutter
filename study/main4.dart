// abstract class Counter {
//   void count(int a, int b);
// }

// class Persegi extends Counter {
//   int count(int a, int b){
//     return a * b;
//   }
// }

// class Segitiga extends Counter {
//   double count(int a, int b) {
//     return 0.5 * a * b;
//   }
// }

// void main() {
  
//   var _persegi = Persegi();
//   print(_persegi.count(3,3));
  
//   var _segitiga = Segitiga();
//   print(_segitiga.count(4,6));
// }

class First {
  void firstPrint() {
    print("This is first class");
  }
}

class Second {
  void secondPrint() {
    print("This is second class");
  }
}

class Emptyness {
  void nothing() {

  }
}

class Third implements First, Second, Emptyness {
  void firstPrint() {
    print("This is first print from third class");
    //print("");
  }
  
  void secondPrint() {
    print("This is second print from third class");
  }
  
  void nothing() {
    print("Override");
  }
}

void main() {
  var someVar = Third();
  var quiteVar = First();
  
  someVar.firstPrint();
  someVar.secondPrint();
  someVar.nothing();
  
  quiteVar.firstPrint();
}