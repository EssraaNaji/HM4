/*Basic Calculator:
Create a Dart program that takes two numbers as input and performs addition, subtraction,
multiplication, and division using variables, arithmetic operators, and functions. Also, include
optional parameters for different operations (e.g., addition of multiple numbers).*/
import 'dart:io';

void main() {
  print('Enter the first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  double num2 = double.parse(stdin.readLineSync()!);
      print('Result: ${add(num1, num2)}');
      print('Result: ${subtract(num1, num2)}');
      print('Result: ${multiply(num1, num2)}');
      print('Result: ${divide(num1, num2)}');


}

double add(double a, double b) {
  return a + b;
}

double subtract(double a, double b) {
  return a - b;
}

double multiply(double a, double b) {
  return a * b;
}

double divide(double a, double b) {
  if (b == 0) {
    print('Error: Division by zero');
    return double.nan;
  }
  return a / b;
}