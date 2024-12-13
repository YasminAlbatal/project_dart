import 'Movie.dart';

void main() {
  // make 3 objects
  Movie movieOne = Movie(
      title: "Moana",
      director: "John Musker and Ron Clements", 
      rating: 7.6);
  Movie movieTwo = Movie(
      title: "Wish",
      director: "Chris Buck",
      rating: 5.6);
  Movie movieThree =
      Movie(
      title: "Interstellar",
      director: "Christopher Nolan", 
      rating: 8.6);


// printMovieInfo
  print('_______info_______\n');
  movieOne.printMovieInfo();
  movieTwo.printMovieInfo();
  movieThree.printMovieInfo();


  //update rating
  print('_______update rating_____\n');
  movieOne.updateRating(8.0);
  movieTwo.updateRating(7.4);
  movieThree.updateRating(6.7);
}
