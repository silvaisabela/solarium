import 'package:flutter/material.dart';

class SolariumInput extends StatelessWidget {
  final String hintText;
  final int lines;
  final TextEditingController? userInputController;
  final FocusNode? focusNode;

  SolariumInput(
      {Key? key,
      required this.hintText,
      this.lines = 1,
      this.userInputController,
      this.focusNode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        focusNode: focusNode,
        controller: userInputController,
        maxLines: lines,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText,
        ),
      ),
    );
  }
}
