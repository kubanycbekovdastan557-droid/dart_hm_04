enum Subject { math, physics, english, history }


class Person {

  String fullName;
  int age;
  bool isMarried= true;

  Person(this.fullName, this.age, this.isMarried);
   
   



  void introduce(){
    print('Hi! My name is $fullName. I am $age years old. Married: ${isMarried ? 'Yes' : 'No'} ');
  
  }



}

class Student extends Person{

Map<Subject, double> marks={};


Student(super.fullName, super.age, super.isMarried, this.marks);


void showMarks() {
  print('Student: $fullName');
  for (var entry in marks.entries) {
    print('${entry.key.name}: ${entry.value}');
  }
}



double calculateAverage(){
  if (marks.isEmpty) return 0;
  double sum = 0;
  for (double mark in marks.values) {
    sum += mark;
   
  }
  return sum / marks.length;
}


}


class Teacher extends Person {
  int experience;
  static double _baseSalary = 50000;

  Teacher(this.experience ,super.fullName, super.age, super.isMarried);

  double calculateSalary() {
   double salary = _baseSalary;
   if(experience > 3){
    for (int year = 4; year <= experience; year++){
  salary +=  salary* 0.05;
    }
   }
   if(isMarried == true){
    _baseSalary += 5000;
   }
   print('Experience: $experience');
   print('Salary: $salary');
   return salary;
  } 
}
