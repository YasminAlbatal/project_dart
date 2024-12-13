class Book {
// variables
  String title;
  String author;
  bool isAvailable;


//Constructor
  Book({required this.title, required this.author,this.isAvailable=true});


//Method to print info of book
  void printInfo() {
    print("""
    Book Title :  $title
    Book Author:  $author
    Availability: ${isAvailable ? 'Available' :'Checked out'}
    """);
  }



// Method to make book not available
  void checkOut() {
    if (isAvailable) {
      isAvailable = false;
      print("The book '$title' has been checked out.\n");
    } else
      print("The book '$title' is already checked out! \n");
  }



//Method to return the book and make it available
  void returnBook() {
    if (isAvailable==false) {
      isAvailable = true;
      print("The book '$title' has been returned.\n");
    } else
      print("The book '$title' is already available!\n");
  }
}
