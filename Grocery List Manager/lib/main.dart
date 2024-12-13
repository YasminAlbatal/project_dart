import 'dart:io';

void main() {
  List<String> Grocery_List = [];
  int a = 1;
  while (a == 1) {
    int choice = Choice_list();
    switch (choice) {
      case 1:
        AddItem(Grocery_List);
        break;
      case 2:
        RemoveItem(Grocery_List);
        break;
      case 3:
        ViewList(Grocery_List);
        break;
      case 4:
        SearchForItem(Grocery_List);
        break;
      case 5:
        {
          print("Exiting... Thank you for using Grocery List Manager.\n");
          a = 0;
        }
        break;
      default:
        {
          print("Invalid choice. Please enter a number between 1 and 5\n");
        }
    }
  }
}

// List of available operations
int Choice_list() {
  int? choice;
  print("""         Grocery List Manager 
  =====================================
  1- Add Item
  2- Remove Item
  3- View List
  4- Search for Item
  5- Exit
  =====================================
  Enter your choice :
  """);
  // receive the choice
  choice = int.parse(stdin.readLineSync()!);
  return choice;
}

// add item
void AddItem(List<String> list) {
  //check to see continue or exit
  bool check = true;
  do {
    print('enter the item to add\n');
    String? item = stdin.readLineSync();
    print('\n');
    //check the input
    if (item != null && item.isNotEmpty) {
      if (list.contains(item.toLowerCase()))
        print('item already exists \n');
      else {
        // add the item to the list
        list.add(item.toLowerCase());
        print('item was added successfully!\n');
      }
// choose between exit or complete the same process

      print("""
   =====================================
   1- Add another Item
   2- Exit
   =====================================
   Enter your choice :
  """);
      int choice = int.parse(stdin.readLineSync()!);
      if (choice == 2) check = false;
    }
  } while (check == true);
}

void RemoveItem(List<String> list) {
  //check to see continue or exit
  bool check = true;
  do {
    print('enter the item to remove\n');
    String? item = stdin.readLineSync();
    // to space brtween input and output
    print('\n');
    //check the input
    if (item != null && item.isNotEmpty) {
      if (list.contains(item.toLowerCase())) {
        // remove the item from the list
        list.remove(item.toLowerCase());
        print('item was deleted successfully! \n');
      } else
        print('This item does not exist \n');

// choose between exit or complete the same process
      print("""
   =====================================
   1- Remove another Item
   2- Exit
   =====================================
   Enter your choice :
  """);
      int choice = int.parse(stdin.readLineSync()!);
      if (choice == 2) check = false;
    }
  } while (check == true);
}

void ViewList(List<String> list) {
  if (list.isEmpty)
    print('this list is empty\n');
  else {
    for (var i = 0; i < list.length; i++) {
      print("${i + 1} -    ${list[i].toUpperCase()} \n");
    }
  }
}

void SearchForItem(List<String> list) {
  //check to see continue or exit
  bool check = true;
  do {
    int? index;
    print('enter the item for search\n');
    String? item = stdin.readLineSync();
    print('\n');
    //check the input
    if (item != null && item.isNotEmpty) {
      //search for the index of item 
      index = list.indexOf(item.toLowerCase());
      if (list.isEmpty)
        print('list is empty');
      else if (index != null)
        print(" $item is at position ${index + 1} in the list\n");
      else
        print("this $item was not found in this list \n ");
// choose between exit or complete the same process
      print("""
   =====================================
   1- Search for another Item
   2- Exit
   =====================================
   Enter your choice :
  """);
      int choice = int.parse(stdin.readLineSync()!);
      if (choice == 2) check = false;
    }
  } while (check == true);
}
