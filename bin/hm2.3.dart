import 'dart:io';
void main(){
  //создаем переменный пароль if пароль пустой вывести принт Password cannot be empty.
//если длина поролля меньше 6 символов ввести Password too short.
//если длина 6 или больше 
//если пороль равен 6 вывести  Access granted.
//иначе вывести  Wrong password.
print('Ведите пароль');
String? password = stdin.readLineSync();
if(password== null || password.isEmpty){
  print('Password cannot be empty.');
}else{
  if(password.length<6){
    print('Password too short.');
  }else{
    if(password == "dart123" ){
      print('Access granted.');
    }else{
      print('Wrong password.');
    }
  }
}

}