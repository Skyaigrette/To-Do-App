

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SaveCancelButton extends StatelessWidget {
  final String label;
  Function() onPressed;
  SaveCancelButton({
    super.key,
    required this.label,
    required this.onPressed  
    });
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 125,
      child: Padding(
        padding: const EdgeInsets.only(top:5,left: 5, right: 5),
        child: ElevatedButton(
          onPressed: onPressed,
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(Color.fromRGBO(95, 92, 109,1)),
            padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(10)),
            minimumSize: WidgetStatePropertyAll<Size>(Size.fromHeight(15))
          ),
          child: Text(label,
          style: const TextStyle(color: Colors.white),)
        ),
      ),
    );
  }
}