import 'Book.dart';

void main() {
// make 3 objects
  Book bookOne = Book(
    title: '1984', 
    author: 'George Orwell');
  Book bookTwo = Book(
    title: 'Khof(Fear)',
    author: 'Osama Al-Muslim', 
    isAvailable: false);
  Book bookThree = Book(
    title: 'Bsatine Arabistan',
    author: 'Osama Al-Muslim',
    isAvailable: false);

//info
  print('_______info_______\n');
  bookOne.printInfo();
  bookTwo.printInfo();
  bookThree.printInfo();

// return books
  print('_______return books_____\n');
  bookOne.returnBook();
  bookTwo.returnBook();
  bookThree.returnBook();

//check out
 print('_______check out________\n');
  bookOne.checkOut();
  bookTwo.checkOut();
  bookThree.checkOut();
}
