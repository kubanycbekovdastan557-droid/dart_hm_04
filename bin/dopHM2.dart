import 'dart:io';
void main(){
  print('Сумма покупки');
  double summ = double.parse(stdin.readLineSync()!);
  if ()
print('дисконтная карта yes \ no');
  String cart = stdin.readLineSync()! .toLowerCase();

  if (cart == 'yes' ){
    print (' у вас есть карта');
  }else if (cart =='no'){
    print('у вас нету карты');
  } else {
    print (' не верный операция');
  }
print('Экспрес-доставку нужно?');
 String delivery =stdin.readLineSync()! .toLowerCase();
  if ( delivery== "yes" ){
    print('Заказ принят');
  }else if (delivery == 'no'){
    print('Заказ принят');
  }

}