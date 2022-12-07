class ToDo {
  final String taskname;
  final String taskicon;

  const ToDo({
    required this.taskname,
    required this.taskicon,
  });

  static List<ToDo> todolist() {
    return   [
    const ToDo(taskname: 'Meeting', taskicon: "images/meeting.png"),
    const ToDo(taskname: 'Programming', taskicon: "images/programming.png"),
    const ToDo(taskname: 'Study', taskicon: "images/study.png"),
    const ToDo(taskname: 'Excercise', taskicon: "images/excercise.png"),
    const ToDo(taskname: 'Designing ', taskicon: "images/design.png"),
    const ToDo(taskname: 'Praying ', taskicon: "images/praying.png"),
    const ToDo(taskname: 'Development ', taskicon: "images/development.png"),
    const ToDo(taskname: 'Settings ', taskicon: "images/settings.jpg"),
    const ToDo(taskname: 'Testing ', taskicon: "images/test.png"),
  ]; 
  }
}
