class Book {
  String _title;
  String _author;
  double _rating = 0.0 ;
  
  Book(this._title, this._author );

  Book.withRating(this._title, this._author, this._rating) ;

  String get title => _title;
  String get author => _author;
  double get rating => _rating;

  set ratig(double value){
    if(rating > 0 && rating < 10){
      _rating = value;
    }else{
      print('The rating can be from 0 to 10');
    }
  }
  
  void displayInfo(){
    print('Title: $_title');
    print('Author: $_author');
    print('Rating: $_rating');
  }
}