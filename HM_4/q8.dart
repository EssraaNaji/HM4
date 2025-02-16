/**/
import 'dart:io';

void main() {

  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);


  if (number >= 0 && number <= 10) {
    print("The number between 0 and 10");
  } else {
    print("invalid");
  }
}
