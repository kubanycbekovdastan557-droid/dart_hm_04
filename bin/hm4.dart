void main(){




greet();
greet();
greet();
introduce('Dastan', 21);
introduce('Arlen', 21);
introduce('Uluk', 21);
int result =addNumbers (5 , 8);
print( 'Sum of 5 and 8 is $result.');
var price = calculateDiscount(price: 200);
print('Final price: $price');
var priceDiscount= calculateDiscount(price: 200, discount: 30);
print('Final price:$priceDiscount');
var priceDiscountTax= calculateDiscount(price: 200, discount: 30, tax: 40 );
print('Final price:$priceDiscountTax');
print(' Total function calls:$totalCallas');

}
int totalCallas = 0 ;

 void greet(){
  totalCallas++;
print(' Hello! Welcome to Dart programming!');
 }
void  introduce(String name, int age){
totalCallas++;
print('My name is $name and I am $age years old.');

}
 int addNumbers(int a, int b){
  int summ = (a + b);
  totalCallas++;
  return a + b;
 
 }
double calculateDiscount({
  required double price,
  double discount = 0,
  double tax = 0,
}){
  totalCallas++;
   double finalPrice  = price - (price * discount / 100) + (price * tax / 100);
  return finalPrice;
}
 
