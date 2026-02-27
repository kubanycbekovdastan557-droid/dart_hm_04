
import 'book.dart';
 import 'Library.dart';
 void main(){
    Book infoBook1 =Book('Ак-Кеме', 'Чынгыз Айтматов');
    infoBook1.displayInfo();
    Book infoBook2 =Book.withRating('Война и Мир', 'Лев Толстой', 9.5);
    infoBook2.displayInfo();
    Library libraryName =Library('City Library');
    print('library: ${libraryName.name}');
    libraryName.addBook(infoBook2);
    libraryName.addBook(infoBook1);
    libraryName.showBooks();

 }