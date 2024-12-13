import 'dart:ffi';
import 'dart:io';

void main() {
  // store the data of all students
  List<Map<String, dynamic>> Students = [];

//choose to add another student or exit
  bool exit = false;
  while (exit == false) {
    print("add enter 1 exit enter 0");
    int a = int.parse(stdin.readLineSync()!);
    if (a == 0)
      break;
    else {
      Map<String, double> Scores = {};
      String name_student = Name();
      double total_score=0.0;
      double average = Average(name_student, Scores,total_score);
      print("$name_student done!");

      //Collect student data
      Students.add({
        'name': name_student,
        'Scores': Scores,
        'total_score':total_score,
        'average': average,
        'grade': Grade(average)
      });
    }
  }

  // Display Summary
  print(" Students Report \n $Students");
}

// name of Student
String Name() {
  String name;
  print("Please, Enter Your Name");
  name = stdin.readLineSync()!;
  return name;
}

// calculate average
double Average(String name, Map<String, double> Scores, double Total_Score) {
  double average = 0.0;
  String? input;
  double score;
  // list of all Courses
  List<String> Courses = ['Math', 'English', 'Science', 'Arabic'];
  for (int c = 0; c < Courses.length; c++) {
    //
    while (true) {
      //subject 's name
      print("Enter $name's score in ${Courses[c]}");
      input = stdin.readLineSync();

      //Check input if it is valid or not
      try {
        score = double.parse(input ?? '');
        if (score < 0 || score > 100) {
          print("Invalid input. Score must be between 0 and 100.");
          continue;
        }
        break;
      } catch (e) {
        print("Invalid input. Please enter a valid number.");
      }
    }
    //add Subject Scores
    Scores['${Courses[c]}'] = score;
    average += score;
  }
  // calculate the average of the Courses
  Total_Score = average;
  average /= Courses.length;
  return average;
}

String Grade(double average) {
  String grade;
  // what is the grade of this average
  if (average >= 90 && average <= 100)
    grade = 'A';
  else if (average >= 80 && average <= 89)
    grade = 'B';
  else if (average >= 70 && average <= 79)
    grade = 'C';
  else if (average >= 60 && average <= 69)
    grade = 'D';
  else
    grade = 'F';
  return grade;
}
