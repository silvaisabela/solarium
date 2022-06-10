import 'package:flutter/material.dart';

enum ButtonType { primary, secondary }

class SolariumButtonIcon extends StatelessWidget {
  const SolariumButtonIcon({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.type = ButtonType.primary,
  }) : super(key: key);

  final IconData icon;
  final ButtonType type;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    var colors = {
      ButtonType.primary: colorScheme.primary,
      ButtonType.secondary: colorScheme.secondary,
    };

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colors[type],
        ),
        child: Center(
          child: Icon(
            icon,
            color: colorScheme.onPrimary,
            size: 24,
          ),
        ),
      ),
    );
  }
}
