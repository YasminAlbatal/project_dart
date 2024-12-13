class Movie {
// variables
  String title;
  String director;
  double rating;


//Constructor
  Movie({required this.title, required this.director, required this.rating});



//Method to print info of book
  void printMovieInfo() {
    print("""
          Movie Title : $title
          Director : $director
          Rating :$rating
""");
  }


// Method to update Rating 
  void updateRating(double newRating) {
    this.rating = newRating;
    print(" $title Rating updated to: $newRating");
  }
}
