// Getter - Setter

// class Student {
//   String name;
  
//   double _percent;
  
//   void set percentage(double nilaiAkhir) => _percent = (nilaiAkhir / 100);
  
//   double get percentage => _percent;
// }

// void main(){
//   var myStudent = Student();
  
//   myStudent.percentage = 80;
  
//   print(myStudent.percentage);
// }

// Inheritancce and Method Override
class Animal {
  int age;
  
  void eat(){
    print("Makan");
  }
  
  void animalKind(String kind){
    if (kind == "dog"){
      print("This is a dog");
    }
    else {
      print("This is a cat");
    }
  }
}

class Dog extends Animal {
  String name = "Husky";
  
  String kind = "dog";
  
  void dogBark() {
    print("He Barks Woof");
  }
}

class Cat extends Animal {
  String name = "Kitty";
  
  String kind = "cat";
  
  void catSpeak() {
    print("He Meows Meow");
  }
}

void main() {
  var myDog = Dog();
  
  print("My dog name is ${myDog.name}");
  myDog.dogBark();
  myDog.animalKind(myDog.kind);
  
  print("");
  var myCat = Cat();
  
  print("My ${myCat.kind} name is ${myCat.name}");
  myCat.catSpeak();
  myCat.animalKind(myCat.kind);
}