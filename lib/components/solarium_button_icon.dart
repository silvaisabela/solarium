import 'package:flutter/material.dart';

class SolariumButtonIcon extends StatelessWidget {
  const SolariumButtonIcon({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colorScheme.primary,
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
