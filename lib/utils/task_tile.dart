import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:to_do_app_self_try/utils/slidable_action_button.dart';
import 'package:to_do_app_self_try/utils/text_styles.dart';

// ignore: must_be_immutable
class TaskTile extends StatelessWidget {
  final String headline;
  final String taskDescription;
  bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteTask;
  Function(BuildContext)? editTask;

  TaskTile({
    super.key,
    required this.headline,
    required this.taskDescription,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteTask,
    });

    void printx(BuildContext){
      print("x");
    }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 13, right: 13, left: 13),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), children:[
          SlidableActionButton(onPressed: deleteTask, icon: Icons.delete, backgroundColor: Color.fromRGBO(255, 188, 208,1)),
          
          //SlidableActionButton(onPressed: printx, icon: Icons.edit, backgroundColor: Color.fromRGBO(0, 201, 198,1),)

        ] ),
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 238, 202, 1),
            borderRadius: BorderRadius.all(Radius.elliptical(10, 50)),  
          ),
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //checkbox
              Checkbox(value: taskCompleted, onChanged: onChanged),
        
              //column (headline and task)
        
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(headline,
                style: TextThemes.headline
                ),
                
                Text(taskDescription,
                style: TextThemes.taskDescription,)
              ],)
            ],
            ), 
        ),
      ),
    ); 
  } 
}