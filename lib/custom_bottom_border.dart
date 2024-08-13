import 'package:flutter/material.dart';

class BottomBorder extends StatelessWidget {
  final Widget child;

  const BottomBorder({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color.fromARGB(119, 197, 197, 197)),
        ),
      ),
      child: child,
    );
  }
}
