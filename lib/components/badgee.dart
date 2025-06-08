import 'package:flutter/material.dart';

class Badgee extends StatelessWidget {
  final Widget child;
  final String value;
  final Color? color;

  const Badgee({super.key, required this.child, required this.value, this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
      Positioned(
        right: 5,
        top: 2,
        child: Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color ?? Theme.of(context).colorScheme.secondary
          ),
          constraints: BoxConstraints(
            minHeight: 10,
            minWidth: 14,
          ),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12, color: Colors.white
            ),
            ),
        ),
        )
      ],
    );
  }
}