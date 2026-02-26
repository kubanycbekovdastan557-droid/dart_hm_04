import 'dart:io';
void main(){
  print ('Выберите ден неделию');

  String week = stdin.readLineSync()! .toLowerCase() .trim();
  
   switch(week){
    case'monday':
    print (" It's the start of the week");
    break;
    case'tuesday':
    case'wednesday':
    case'thursday':
    print('Keep going, almost weekend!');
    break;
    case'friday':
    print('Weekend is coming!');
    break;
    case'saturday':
    case'sunday':
    print(' Enjoy your weekend!');
    break;
    default:
    print('Invalid day.');
      


  }
}