/*Implement a program that uses a List to store grocery items. It should allow adding, removing, and
displaying items. Use functions with return types and optional/named parameters. Make sure to
handle possible null values*/
void main() {
  Grocery groceryList = Grocery();

  groceryList.addItem("Apples");
  groceryList.addItem("Bananas");
  groceryList.addItem("Milk");
  groceryList.displayItems();

  groceryList.removeItem("Bananas");
  groceryList.displayItems();
}

class Grocery {
  List<String> items = [];

  void addItem(String item) {
    if (item.isNotEmpty) {
      items.add(item);

    } else {
      print("empty item.");
    }
  }

  bool removeItem(String item) {
    if (items.contains(item)) {
      items.remove(item);
      print("Removed: $item");
      return true;
    } else {
      print("Item not found: $item");
      return false;
    }
  }

  void displayItems() {
    if (items.isEmpty) {
      print("Grocery list is empty.");
    } else {
      print("Grocery List:");
      for (var item in items) {
        print(item);
      }
    }
  }
}
