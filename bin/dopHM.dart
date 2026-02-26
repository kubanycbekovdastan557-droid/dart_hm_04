import 'dart:io';

void main(){
  print('напишите балл');
int assessment= int.parse(stdin.readLineSync()!);
if(assessment > 90){
print('Excellent!');
}else if(assessment> 70){
  print('Good job!');
}else if(assessment > 50){
  print('You passed.');
} else if(assessment > 0){
  print('You failed.');
}else{
  print('Invalid score.');
}

// у меня тут ошибка почему : if(assessment > 90 && assessment < 100) должно было так 
}