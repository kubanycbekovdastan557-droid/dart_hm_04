import 'Person.dart';
void main(){
  Person infoPerson=Person('bermet', 21, false);
  
   
Map<Subject, double> studentMarks = {
    Subject.math: 90,
    Subject.physics: 85,
    Subject.english: 92,
    Subject.history: 88,
};
   Student student = Student('Dastan', 21, true, studentMarks);
student.showMarks();
student.introduce();
print('Average mark: ${student.calculateAverage()}');

Teacher teacher =Teacher(5, 'Dastan', 21, false);
teacher.introduce();
teacher.calculateSalary();


}
