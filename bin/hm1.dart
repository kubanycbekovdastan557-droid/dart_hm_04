 void main(){
  int salary = 45000;
  int yearlySalary= salary * 12;
  double bonusPercent= yearlySalary *0.15;
  double taxPercent= yearlySalary *0.1;
 double result = yearlySalary - taxPercent;
 double yearSalarysBonus= yearlySalary + bonusPercent;
 double resultSalaryTax = yearSalarysBonus - taxPercent;
 print('Годовая зарплата без бонуса:$yearlySalary');
 print('Бонус:$bonusPercent');
 print('Годовая зарплата с бонусом:$yearSalarysBonus');
 print('Налог:$taxPercent');
 print('Итоговая зарплата после налога:$resultSalaryTax');
 print('');
 int citiesVisited= 6;
 int daysPerCity= 3;
 int totalDaysPlanned= 15;
 int dayVisited= citiesVisited * daysPerCity;
 int difference= totalDaysPlanned - dayVisited;
 if (dayVisited > totalDaysPlanned){
  print("Путешествие длиннее, чем планировалось!");
 }else if (dayVisited< totalDaysPlanned){
  print("У тебя осталось дней для новых городов!");
 print('');

 List<double> temperatures = [ 15, 18, -3];
 double sum = temperatures.reduce((a,b) => a + b);
 double average = sum / temperatures.length;
 print ('средняя сумма:$average');
double maxTemperatures = temperatures.reduce((a, b) => a > b ? a : b);
double minTemperatures = temperatures.reduce((a, b) => a < b ? a : b);
print('Максимальная температура: $maxTemperatures');
print ('Минимальная температура: $minTemperatures');
 }
int nuber1 = 4;
int number = 7;



 }