import 'package:flutter/material.dart';

enum TitleSize {
  small,
  medium,
  large,
}

class SolariumTitle extends StatelessWidget {
  const SolariumTitle({
    Key? key,
    required this.text,
    this.size = TitleSize.medium,
  }) : super(key: key);

  final String text;
  final TitleSize size;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    var styles = {
      TitleSize.small: textTheme.bodyText1,
      TitleSize.medium: textTheme.headline2,
      TitleSize.large: textTheme.headline1,
    };

    return Text(text, style: styles[size]);
  }
}
