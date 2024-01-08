class ToDo {
  String? id;
   String? todoText;
   late bool isDone;

   ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false
   });

   static List<ToDo> todoList(){
    return [
      ToDo(id: '01', todoText: 'Morning Exercise', isDone: true),
      ToDo(id: '02', todoText: 'Check Mails', isDone: true),
      ToDo(id: '03', todoText: 'Scroll Linkdin', ),
      ToDo(id: '04', todoText: 'Team Meeting', isDone: true),
      ToDo(id: '05', todoText: 'Practice CyberSecurity for 1 hour',),
      ToDo(id: '06', todoText: 'Learn Flutter', isDone: true),
      ToDo(id: '07', todoText: 'Read Code', isDone: true),

    ];
   }
}