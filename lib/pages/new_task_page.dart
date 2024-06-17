import 'package:flutter/material.dart';
import 'package:to_do_app_self_try/utils/save_cancel_button.dart';
import 'package:to_do_app_self_try/utils/text_styles.dart';

// ignore: must_be_immutable
class NewTaskPage extends StatelessWidget {
  Function() onPressedSave;
  Function() onPressedCancel;
  final TextEditingController controllerHeadline;
  final TextEditingController controllerDescription;

  NewTaskPage({
    super.key,
    required this.onPressedSave,
    required this.onPressedCancel,
    required this.controllerHeadline,
    required this.controllerDescription,
    
    });
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Task"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top:10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: [
        
            //Headline
            TextField(
              controller: controllerHeadline,
              decoration: const InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: "Please Enter Your Headline",
              ),
              
              style: TextThemes.headline,
            ),
            // Divider(
            //   height: 0,
            //   thickness: 2,
            //   indent: 3,
            //   endIndent: 150,
            //   color: Color.fromRGBO(71, 69, 84,1),
            // ),

            //const Spacer(flex:1),
            // Description
            TextField(
              controller: controllerDescription,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                hintText: "Please type your task",
              ),
              style: TextThemes.taskDescription
              
            ),
        
            // Save&Cancel

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SaveCancelButton(label: "Save", onPressed: onPressedSave),
                SaveCancelButton(label: "Cancel", onPressed: onPressedCancel)
              ],
            )
        
        
          ],),
      ),
      );
  }
}