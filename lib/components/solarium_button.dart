import 'package:flutter/material.dart';

enum ButtonType { primary, secondary }

class SolariumButton extends StatelessWidget {
  const SolariumButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.type = ButtonType.primary,
  }) : super(key: key);

  final String text;
  final ButtonType type;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    var colors = {
      ButtonType.primary: colorScheme.primary,
      ButtonType.secondary: colorScheme.secondary,
    };

    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 18),
        primary: colors[type],
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16));

    return SizedBox(
      child: ElevatedButton(
        style: style,
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
