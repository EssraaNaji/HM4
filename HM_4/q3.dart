/*Create a to-do list program using a List where each item has a description, due date, and
completion status (as bool). Implement methods to add, remove, and update tasks, including the
use of for-each loops.*/
void main() {
  TodoList todoList = TodoList();

  todoList.addTask("My Hm 4", "2024-02-20");
  todoList.addTask("Buy groceries", "2024-02-18");
  todoList.addTask("Call mom", "2024-02-19");
  todoList.displayTasks();

  todoList.update("Buy groceries", true);
  todoList.removeTask("Call mom");
  todoList.displayTasks();
}

class Task {
  String description;
  String dueDate;
  bool isCompleted;

  Task(this.description, this.dueDate, {this.isCompleted = false});
}

class TodoList {
  List<Task> tasks = [];

  void addTask(String description, String dueDate) {
    if (description.isNotEmpty && dueDate.isNotEmpty) {
      tasks.add(Task(description, dueDate));

    } else {
      print("Task description and due date cannot be empty.");
    }
  }

  bool removeTask(String description) {
    for (var task in tasks) {
      if (task.description == description) {
        tasks.remove(task);

        return true;
      }
    }
    print("Task not found: $description");
    return false;
  }

  void update(String description, bool isCompleted) {
    for (var task in tasks) {
      if (task.description == description) {
        task.isCompleted = isCompleted;

        return;
      }
    }
    print("Task not found: $description");
  }

  void displayTasks() {
    if (tasks.isEmpty) {
      print("To-do list is empty.");
    } else {
      print("To-Do List:");
      for (var task in tasks) {
        print("${task.description}  ${task.dueDate}  ${task.isCompleted}");
      }
    }
  }
}
