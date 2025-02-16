/*Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
and remove entries from the map, printing the map after each operation.
- Task 2: Iterate over the map and print each key-value pair*

 */
void main() {
  // Task 1:
  Map<String, dynamic> student = {
    'name': 'Alice',
    'age': 20,
    'grade': 'A'
  };
  //add
  student['subject'] = 'Mathematics';
  print(student);

 //update
  student['grade'] = 'A+';
  print(student);

//remove
  student.remove('age');
  print(student);


 //task 2:
  student.forEach((key, value) {
    print("$key: $value");
  });
}
