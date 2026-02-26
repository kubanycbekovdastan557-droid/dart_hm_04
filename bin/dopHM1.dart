import 'dart:io';
void main(){
print ('Укажите возраст ');
int age = int.parse(stdin.readLineSync()!);
if (age < 0){// должно было посьавит return
    print ( ' Invalide age');
} else if (age <7 ){
print ('Ticket is free.');
} else if (age> 7 && age < 17){//у меня тут ошибка плчему age >= 7 && age <= 17 должно было так

    print('Ticket price: 200');
} else if (age >18) {
    print('Ticket price: 400');
}




}