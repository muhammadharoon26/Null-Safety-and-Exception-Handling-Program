import 'dart:io';

void main() {
  String? userInput;
  int? age;

  while (age == null) {
    try {
      print('Please enter your age:');
      userInput = stdin.readLineSync();

      if (userInput == null || userInput.isEmpty) {
        print('You didn\'t enter anything. Please try again.');
        continue;
      }

      age = int.parse(userInput);

      if (age <= 0 || age > 150) {
        print('Please enter a valid age between 1 and 150.');
        age = null;
        continue;
      }

      int yearsTo100 = 100 - age;

      if (yearsTo100 > 0) {
        print('You have $yearsTo100 years left until you turn 100!');
      } else if (yearsTo100 == 0) {
        print('Congratulations! You\'re 100 years old!');
      } else {
        print('Wow! You\'re over 100 years old!');
      }

    } on FormatException {
      print('Invalid input. Please enter a number for your age.');
    } catch (e) {
      print('An unexpected error occurred: $e');
      print('Please try again.');
    }
  }
}