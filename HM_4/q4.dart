/**
 *. Maps, Functions & User Input
    Create a Dart program that:
    - Declares a `Map<String, int>` where keys are fruit names and values are their
    prices.
    - Implements a function `getPrice(String fruitName)` that returns the price of a
    given fruit.
    - If the fruit is not found, return -1.
    Call the function inside `main()` and print the result
 */

int getPrice(String fruitName , Map<String , int >fruitPrices ) {
  return fruitPrices[fruitName] ?? -1;
}

void main (){

  Map<String, int> fruitPrices = {
    "Apple": 3,
    "Banana": 1,
    "Orange": 2,
    "Mango": 5,
    "Grapes": 4
  };
  print(getPrice("Grapes" , fruitPrices) ==-1 ? "Fruit not found." : getPrice("Grapes" , fruitPrices));
}