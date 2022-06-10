import 'package:flutter/material.dart';

class SolariumInput extends StatelessWidget {
  const SolariumInput({
    Key? key,
    required this.hintText,
    this.lines = 1,
  }) : super(key: key);

  final String hintText;
  final int lines;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        maxLines: lines,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText,
        ),
      ),
    );
  }
}
