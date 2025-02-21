/**
 * 6. Null Safety, Encapsulation & Classes
    Create a class `Person` with the following attributes:
    - `String name`
    - `int? age` (nullable)
    - `bool isStudent` (default is false)
    Implement:
    - A constructor that initializes `name` and `age`.
    - A method `displayInfo()` that prints the person's details.
    In `main()`, create an instance of `Person` and call `displayInfo()`.
 */
class Person {
  String name;
  int? age;
  bool isStudent;


  Person(this.name, this.age,{ this.isStudent = false});


  void displayInfo() {
    print("Name: $name");
    print("Age: ${age ?? ''}");
    print("Student: ${isStudent ? 'Yes' : 'No'}");
  }
}

void main() {
  Person person1 = Person("Alice", 25, isStudent: true);
  person1.displayInfo();

  Person person2 = Person("Bob" , 30 );
  person2.displayInfo();
}
