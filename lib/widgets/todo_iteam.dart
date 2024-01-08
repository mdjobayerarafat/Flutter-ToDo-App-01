import 'package:flutter/material.dart';
import '../constants/colors.dart';

import '../model/todo.dart';

class ToDoIteam extends StatelessWidget {
    ToDoIteam({Key? key, required this.todo , required this.onToDoChanged , required this.onDeleteIteam, }) : super(key: key);
  final ToDo todo;
  final onToDoChanged;
  final onDeleteIteam;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: (){
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5,),
        tileColor: tdBGi,
        leading: Icon( todo.isDone ?   Icons.check_box : Icons.check_box_outline_blank ,
        color: tdBule,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(fontSize: 16,
          color: tdBlack,
          decoration: todo.isDone? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: (){
              onDeleteIteam(todo.id);
            },
          ),
        ),
      ),
    );
  }
}