
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class SlidableActionButton extends StatelessWidget {
  Function(BuildContext)? onPressed;
  IconData icon;
  Color backgroundColor;
  
  SlidableActionButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.backgroundColor
  });



  @override
  Widget build(BuildContext context) {
    return SlidableAction(
            backgroundColor: backgroundColor,
            icon: icon,
            onPressed: onPressed,
            borderRadius: const BorderRadius.all(Radius.elliptical(10, 50)),
    );
  }
}