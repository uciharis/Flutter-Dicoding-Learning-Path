void main() {
  print(Rainbow.blue); // print Rainbow.blue
  print(Status.values); // print values of Value
  print(Rainbow.orange.index); // 1

  var taskStatus = Status.todo;
  // task still to do!
  switch (taskStatus) {
    case Status.todo:
      print('Task Still to do!');
      break;
    case Status.in_progress:
      print('Task In Progress');
      break;
    case Status.in_review:
      print('Task In Review');
      break;
    case Status.completed:
      print('Task Completed!');
      break;
  }
}

enum Rainbow { red, orange, yellow, blue, indigo, turquoise }

enum Status { todo, in_progress, in_review, completed }
