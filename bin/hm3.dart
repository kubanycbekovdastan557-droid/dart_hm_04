
void main() {
    for ( int i =1; i <= 30; i++){
        if(i % 3 ==0 && i%5==0 ){
            print('FizzBazz');
        }
        else if (i % 3 ==0){
            print(" Fizz");
        }
        else if(i % 5== 0 ){
            print('Bazz');
        }
        else {
            print (i);
        }
    }
    print ('----------------------');
    List<int> numbers = [3, -2, 0, 7, -5, 10, 1];
  int positiveCount = 0;
  int positiveSum = 0;

  for (int num in numbers) {
    if (num > 0) {
      positiveCount++;
      positiveSum += num;
    }
  }

  if (positiveCount > 0) {
    double average = positiveSum / positiveCount;
    print("Positive numbers count: $positiveCount");
    print("Average of positive numbers: $average");
  } else {
    print("No positive numbers.");
  }
  print('--------------------');
  Map<String, int> fruits = {
    'Apple': 5,
    'Banana': 2,
    'Mango': 7,
    'Orange': 0,
  };

  fruits.forEach((fruit, count) {
    if (count > 0) {
      print("Available: $fruit ($count pcs)");
    }
});
}
  