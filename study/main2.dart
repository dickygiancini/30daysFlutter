void main() {
  
  var student1 = Student();
  var dataId = student1.id = 1;
  var dataName = student1.name = "Tom";
  
  print("The id is ${dataId} and the name is ${dataName}");
  print("");
  
  student1.study();
  student1.idNumb();
  
  print("");
  var student3 = NewStudent.myCustomConstructor();
  
	student3.id = 54;
	student3.name = "Rahul";
	print("The id is ${student3.id} and the name is ${student3.name}");
  
  print("");
  student3.newidNumb();
}

class Student {
  int id = 0;
  String name;
  
  void study(){
    print("${this.name} is studying");
  }
  
  void sleep(){
    print("${this.name} currently sleeping");
  }
  
  void idNumb(){
    print("${this.id} is his/her id");
  }
}

class NewStudent {
  int id = 0;
  String name;
  
  NewStudent(this.id, this.name);
  
  NewStudent.myCustomConstructor() {                 // Named Constructor
		print("This is a constructor");
	}
  
  void newstudy(){
    print("${this.name} is studying");
  }
  
  void newsleep(){
    print("${this.name} currently sleeping");
  }
  
  void newidNumb(){
    print("${this.id} is ${this.name}'s id");
  }
}
