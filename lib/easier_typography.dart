library easy_typography;

import 'package:flutter/material.dart';

class EText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final bool bold;
  final bool italic;
  final TextAlign? align;
  final int? maxLines;
  final bool gray;
  final Color? customColor;
  final TextDecoration? decoration;
  final TextDecorationStyle? decorationStyle;
  final TextOverflow? overflow;

  const EText(
    this.text, {
    super.key,
    this.style,
    this.bold = false,
    this.italic = false,
    this.gray = false,
    this.customColor,
    this.align,
    this.maxLines,
    this.overflow,
    this.decoration,
    this.decorationStyle,
  });

  @override
  Widget build(BuildContext context) {
    final baseStyle = style ?? Theme.of(context).textTheme.bodyMedium!;
    final finalStyle = baseStyle.copyWith(
      fontWeight: bold ? FontWeight.bold : baseStyle.fontWeight,
      fontStyle: italic ? FontStyle.italic : baseStyle.fontStyle,
      color: customColor ?? (gray ? Colors.grey : baseStyle.color),
      decoration: decoration ?? baseStyle.decoration,
      decorationStyle: decorationStyle ?? baseStyle.decorationStyle,
    );

    return Text(
      text,
      style: finalStyle,
      textAlign: align,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

// === Display ===
class DisplayLg extends StatelessWidget {
  final String text;
  final bool bold;
  final bool italic;
  final bool gray;
  final Color? customColor;
  final TextAlign? align;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  final TextDecorationStyle? decorationStyle;

  const DisplayLg(
    this.text, {
    super.key,
    this.bold = false,
    this.italic = false,
    this.gray = false,
    this.customColor,
    this.align,
    this.maxLines,
    this.overflow,
    this.decoration,
    this.decorationStyle,
  });

  @override
  Widget build(BuildContext context) {
    return EText(
      text,
      style: Theme.of(context).textTheme.displayLarge,
      bold: bold,
      italic: italic,
      gray: gray,
      customColor: customColor,
      align: align,
      maxLines: maxLines,
      overflow: overflow,
      decoration: decoration,
      decorationStyle: decorationStyle,
    );
  }
}

class DisplayMd extends DisplayLg {
  const DisplayMd(
    super.text, {
    super.key,
    super.bold,
    super.italic,
    super.gray,
    super.customColor,
    super.align,
    super.maxLines,
    super.overflow,
    super.decoration,
    super.decorationStyle,
  });

  @override
  Widget build(BuildContext context) => EText(
        text,
        style: Theme.of(context).textTheme.displayMedium,
        bold: bold,
        italic: italic,
        gray: gray,
        customColor: customColor,
        align: align,
        maxLines: maxLines,
        overflow: overflow,
        decoration: decoration,
        decorationStyle: decorationStyle,
      );
}

class DisplaySm extends DisplayLg {
  const DisplaySm(
    super.text, {
    super.key,
    super.bold,
    super.italic,
    super.gray,
    super.customColor,
    super.align,
    super.maxLines,
    super.overflow,
    super.decoration,
    super.decorationStyle,
  });

  @override
  Widget build(BuildContext context) => EText(
        text,
        style: Theme.of(context).textTheme.displaySmall,
        bold: bold,
        italic: italic,
        gray: gray,
        customColor: customColor,
        align: align,
        maxLines: maxLines,
        overflow: overflow,
        decoration: decoration,
        decorationStyle: decorationStyle,
      );
}

class HeadingLg extends DisplayLg {
  const HeadingLg(
    super.text, {
    super.key,
    super.bold,
    super.italic,
    super.gray,
    super.customColor,
    super.align,
    super.maxLines,
    super.overflow,
    super.decoration,
    super.decorationStyle,
  });

  @override
  Widget build(BuildContext context) => EText(
        text,
        style: Theme.of(context).textTheme.headlineLarge,
        bold: bold,
        italic: italic,
        gray: gray,
        customColor: customColor,
        align: align,
        maxLines: maxLines,
        overflow: overflow,
        decoration: decoration,
        decorationStyle: decorationStyle,
      );
}

class HeadingMd extends HeadingLg {
  const HeadingMd(
    super.text, {
    super.key,
    super.bold,
    super.italic,
    super.gray,
    super.customColor,
    super.align,
    super.maxLines,
    super.overflow,
    super.decoration,
    super.decorationStyle,
  });

  @override
  Widget build(BuildContext context) => EText(
        text,
        style: Theme.of(context).textTheme.headlineMedium,
        bold: bold,
        italic: italic,
        gray: gray,
        customColor: customColor,
        align: align,
        maxLines: maxLines,
        overflow: overflow,
        decoration: decoration,
        decorationStyle: decorationStyle,
      );
}

class HeadingSm extends HeadingLg {
  const HeadingSm(
    super.text, {
    super.key,
    super.bold,
    super.italic,
    super.gray,
    super.customColor,
    super.align,
    super.maxLines,
    super.overflow,
    super.decoration,
    super.decorationStyle,
  });

  @override
  Widget build(BuildContext context) => EText(
        text,
        style: Theme.of(context).textTheme.headlineSmall,
        bold: bold,
        italic: italic,
        gray: gray,
        customColor: customColor,
        align: align,
        maxLines: maxLines,
        overflow: overflow,
        decoration: decoration,
        decorationStyle: decorationStyle,
      );
}

class TitleText extends DisplayLg {
  const TitleText(
    super.text, {
    super.key,
    super.bold,
    super.italic,
    super.gray,
    super.customColor,
    super.align,
    super.maxLines,
    super.overflow,
    super.decoration,
    super.decorationStyle,
  });

  @override
  Widget build(BuildContext context) => EText(
        text,
        style: Theme.of(context).textTheme.titleLarge,
        bold: bold,
        italic: italic,
        gray: gray,
        customColor: customColor,
        align: align,
        maxLines: maxLines,
        overflow: overflow,
        decoration: decoration,
        decorationStyle: decorationStyle,
      );
}

class SubtitleText extends TitleText {
  const SubtitleText(
    super.text, {
    super.key,
    super.bold,
    super.italic,
    super.gray,
    super.customColor,
    super.align,
    super.maxLines,
    super.overflow,
    super.decoration,
    super.decorationStyle,
  });

  @override
  Widget build(BuildContext context) => EText(
        text,
        style: Theme.of(context).textTheme.titleMedium,
        bold: bold,
        italic: italic,
        gray: gray,
        customColor: customColor,
        align: align,
        maxLines: maxLines,
        overflow: overflow,
        decoration: decoration,
        decorationStyle: decorationStyle,
      );
}

class ParagraphLg extends DisplayLg {
  const ParagraphLg(
    super.text, {
    super.key,
    super.bold,
    super.italic,
    super.gray,
    super.customColor,
    super.align,
    super.maxLines,
    super.overflow,
    super.decoration,
    super.decorationStyle,
  });

  @override
  Widget build(BuildContext context) => EText(
        text,
        style: Theme.of(context).textTheme.bodyLarge,
        bold: bold,
        italic: italic,
        gray: gray,
        customColor: customColor,
        align: align,
        maxLines: maxLines,
        overflow: overflow,
        decoration: decoration,
        decorationStyle: decorationStyle,
      );
}

class Paragraph extends ParagraphLg {
  const Paragraph(
    super.text, {
    super.key,
    super.bold,
    super.italic,
    super.gray,
    super.customColor,
    super.align,
    super.maxLines,
    super.overflow,
    super.decoration,
    super.decorationStyle,
  });

  @override
  Widget build(BuildContext context) => EText(
        text,
        style: Theme.of(context).textTheme.bodyMedium,
        bold: bold,
        italic: italic,
        gray: gray,
        customColor: customColor,
        align: align,
        maxLines: maxLines,
        overflow: overflow,
        decoration: decoration,
        decorationStyle: decorationStyle,
      );
}

class ParagraphSm extends ParagraphLg {
  const ParagraphSm(
    super.text, {
    super.key,
    super.bold,
    super.italic,
    super.gray,
    super.customColor,
    super.align,
    super.maxLines,
    super.overflow,
    super.decoration,
    super.decorationStyle,
  });

  @override
  Widget build(BuildContext context) => EText(
        text,
        style: Theme.of(context).textTheme.bodySmall,
        bold: bold,
        italic: italic,
        gray: gray,
        customColor: customColor,
        align: align,
        maxLines: maxLines,
        overflow: overflow,
        decoration: decoration,
        decorationStyle: decorationStyle,
      );
}

class Label extends ParagraphLg {
  const Label(
    super.text, {
    super.key,
    super.bold,
    super.italic,
    super.gray,
    super.customColor,
    super.align,
    super.maxLines,
    super.overflow,
    super.decoration,
    super.decorationStyle,
  });

  @override
  Widget build(BuildContext context) => EText(
        text,
        style: Theme.of(context).textTheme.labelLarge,
        bold: bold,
        italic: italic,
        gray: gray,
        customColor: customColor,
        align: align,
        maxLines: maxLines,
        overflow: overflow,
        decoration: decoration,
        decorationStyle: decorationStyle,
      );
}

class LabelSm extends Label {
  const LabelSm(
    super.text, {
    super.key,
    super.bold,
    super.italic,
    super.gray,
    super.customColor,
    super.align,
    super.maxLines,
    super.overflow,
    super.decoration,
    super.decorationStyle,
  });

  @override
  Widget build(BuildContext context) => EText(
        text,
        style: Theme.of(context).textTheme.labelSmall,
        bold: bold,
        italic: italic,
        gray: gray,
        customColor: customColor,
        align: align,
        maxLines: maxLines,
        overflow: overflow,
        decoration: decoration,
        decorationStyle: decorationStyle,
      );
}
