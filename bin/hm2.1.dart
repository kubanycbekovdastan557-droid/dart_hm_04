
import 'dart:io';
void main(){
 
  print ('Ведите вашу возраст');
  int age = int.parse(stdin.readLineSync()!);
  print('Ведите температуру на улице');
  int tempeture =  int.parse(stdin.readLineSync()!);
  if (age > 20 && age < 45 && tempeture > -20 && tempeture < 30){// если возраст больше 20 и восраст менше 45 и тетемпература болше -20  и температура меньше 30 то Ты можешь пойти на прогулку.
  print('You can go for a walk.');}
  if (age < 20  && tempeture > 0 && tempeture < 25){
  print('You can go for a walk.');}
  if (age > 45  && tempeture > -10 && tempeture < 25){
  print('You can go for a walk.');}
  else{
    print(' Stay home.');
  }


  }