import 'package:flutter/material.dart';

import '../styles/textStyles.design.dart';

class DesignText extends StatelessWidget {
  final String text;

  /// An immutable style describing how to format and paint text.
  ///
  /// ! Should only be chosen from [DesignTextStyles]
  final TextStyle textStyle;

  /// Whether and how to align text horizontally.
  final TextAlign? textAlign;

  final int? maxLines;

  /// Optional color to be provided for the text
  final Color? color;

  ///
  /// A Text widget to be used according to the design system's text styles
  ///
  const DesignText({
    Key? key,
    required this.text,
    required this.textStyle,
    this.textAlign,
    this.maxLines,
    this.color,
  }) : super(key: key);

  DesignText.h1(
    this.text, {
    Key? key,
    this.textAlign,
    this.maxLines,
    this.color,
  })  : textStyle = DesignTextStyles.headingOne(),
        super(key: key);

  DesignText.h2(
    this.text, {
    Key? key,
    this.textAlign,
    this.maxLines,
    this.color,
  })  : textStyle = DesignTextStyles.headingTwo(),
        super(key: key);

  DesignText.h3(
    this.text, {
    Key? key,
    this.textAlign,
    this.maxLines,
    this.color,
  })  : textStyle = DesignTextStyles.headingThree(),
        super(key: key);

  DesignText.bText(
    this.text, {
    Key? key,
    this.textAlign,
    this.maxLines,
    this.color,
  })  : textStyle = DesignTextStyles.bText(color: color),
        super(key: key);

  DesignText.body1(
    this.text, {
    Key? key,
    this.textAlign,
    this.maxLines,
    this.color,
  })  : textStyle = DesignTextStyles.bodyOne(),
        super(key: key);

  DesignText.body2(
    this.text, {
    Key? key,
    this.textAlign,
    this.maxLines,
    this.color,
  })  : textStyle = DesignTextStyles.bodyTwo(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
      textAlign: textAlign,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
      maxLines: maxLines,
    );
  }
}
