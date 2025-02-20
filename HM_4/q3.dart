/*
* 3. Lists, Loops & If Conditions
Create a list of numbers. Iterate over the list and:
- If a number is even, print "Even: <number>".
- If a number is odd, print "Odd: <number>".
* */
void main() {
  List<int> numbers = [10, 15, 22, 37, 48, 51, 60, 73];

  for (int num in numbers) {
    if (num % 2 == 0) {
      print("Even: $num");
    } else {
      print("Odd: $num");
    }
  }
}
