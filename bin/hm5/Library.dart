import 'book.dart';

class Library {
  String name;
  List<Book> _books= [];

  Library(this.name);

void addBook(Book book){
  _books.add(book ,  );
}

void showBooks()  {
    
    for (var i = 0; i < _books.length; i++) {
      var book = _books[i];
      print('${i + 1}. Title: ${book.title}"');
      print('Author: ${book.author}');
      print('Rating: ${book.rating}');
      print('Total books in library:${_books.length}');
  }
}


  


}