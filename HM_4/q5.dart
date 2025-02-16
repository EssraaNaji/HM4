/*Create a class with a few properties and methods. Instantiate the class and use the dot operator to
access and print its properties and methods*/
class Car {

  String brand;
  String model;
  int year;


  Car(this.brand, this.model, this.year);
  void displayInfo() {
    print("Car: $brand $model, Year: $year");
  }
}

void main() {

  Car myCar = Car("Toyota", "Corolla", 2010);
  print("Brand: ${myCar.brand}");
  print("Model: ${myCar.model}");
  print("Year: ${myCar.year}");


  myCar.displayInfo();

}
