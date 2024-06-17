import 'package:flutter/material.dart';
import 'package:to_do_app_self_try/pages/new_task_page.dart';
import 'package:to_do_app_self_try/utils/task_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
  
}


class _HomePageState extends State<HomePage> {

  final TextEditingController _controllerHeadline = TextEditingController();
  final TextEditingController _controllerDescription = TextEditingController();

    void onPressedSave(){
      List data=[_controllerHeadline.text, _controllerDescription.text, false];
      setState(() {
        tasks.add(data);
      });
      Navigator.of(context).pop();
      _controllerDescription.clear();
      _controllerHeadline.clear(); 
  }

    void onPressedCancel(){
      Navigator.pop(context);
    }

    void deleteTask(int index){
      setState(() {
        tasks.removeAt(index);
        
      });
    }
    
    void editTask(int index){
      
    }

    void onPressedAdd(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewTaskPage(
                onPressedSave: onPressedSave,
                onPressedCancel: onPressedCancel,
                controllerDescription: _controllerDescription,
                controllerHeadline: _controllerHeadline,
                )));
    }
  


    List tasks = [
      ["Welcome to the App","I hope you like it!", false],
      ["If you want to support me","You can donate me on paypal :)", false]
    ];
  @override
  Widget build(BuildContext context) {
    void checkboxChanged(bool? value, int index){
      setState(() {
        tasks[index][2] = !tasks[index][2];
      });
    }


    return Scaffold(
      floatingActionButton: FloatingActionButton(
      onPressed: onPressedAdd,
      child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        leading: const Icon(Icons.note),
        title: const Text("NoteIT")
      
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
       return TaskTile(
        headline: tasks[index][0],
        taskDescription: tasks[index][1],
        taskCompleted: tasks[index][2],
        deleteTask: (p0) => deleteTask(index),
        onChanged: (value) => checkboxChanged(value, index),);
      },
      ),


    );
  }
}