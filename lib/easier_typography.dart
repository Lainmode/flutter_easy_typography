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

  final TextOverflow? overflow;

  const EText(
    this.text, {
    super.key,
    this.style,
    this.bold = false,
    this.italic = false,
    this.gray = false,
    this.align,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    final baseStyle = style ?? Theme.of(context).textTheme.bodyMedium!;
    final finalStyle = baseStyle.copyWith(
      fontWeight: bold ? FontWeight.bold : baseStyle.fontWeight,
      fontStyle: italic ? FontStyle.italic : baseStyle.fontStyle,
      color: gray ? Colors.grey : baseStyle.color,
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

  const DisplayLg(this.text,
      {super.key, this.bold = false, this.italic = false, this.gray = false});

  @override
  Widget build(BuildContext context) {
    return EText(
      text,
      style: Theme.of(context).textTheme.displayLarge,
      bold: bold,
      italic: italic,
    );
  }
}

class DisplayMd extends StatelessWidget {
  final String text;
  final bool bold;
  final bool italic;
  final bool gray;

  const DisplayMd(this.text,
      {super.key, this.bold = false, this.italic = false, this.gray = false});

  @override
  Widget build(BuildContext context) {
    return EText(
      text,
      style: Theme.of(context).textTheme.displayMedium,
      bold: bold,
      italic: italic,
      gray: gray,
    );
  }
}

class DisplaySm extends StatelessWidget {
  final String text;
  final bool bold;
  final bool italic;
  final bool gray;

  const DisplaySm(this.text,
      {super.key, this.bold = false, this.italic = false, this.gray = false});

  @override
  Widget build(BuildContext context) {
    return EText(
      text,
      style: Theme.of(context).textTheme.displaySmall,
      bold: bold,
      italic: italic,
      gray: gray,
    );
  }
}

// === Headings ===
class HeadingLg extends StatelessWidget {
  final String text;
  final bool bold;
  final bool italic;
  final bool gray;

  const HeadingLg(this.text,
      {super.key, this.bold = false, this.italic = false, this.gray = false});

  @override
  Widget build(BuildContext context) {
    return EText(
      text,
      style: Theme.of(context).textTheme.headlineLarge,
      bold: bold,
      italic: italic,
      gray: gray,
    );
  }
}

class HeadingMd extends StatelessWidget {
  final String text;
  final bool bold;
  final bool italic;
  final bool gray;
  const HeadingMd(this.text,
      {super.key, this.bold = false, this.italic = false, this.gray = false});

  @override
  Widget build(BuildContext context) {
    return EText(
      text,
      style: Theme.of(context).textTheme.headlineMedium,
      bold: bold,
      italic: italic,
      gray: gray,
    );
  }
}

class HeadingSm extends StatelessWidget {
  final String text;
  final bool bold;
  final bool italic;
  final bool gray;

  const HeadingSm(this.text,
      {super.key, this.bold = false, this.italic = false, this.gray = false});

  @override
  Widget build(BuildContext context) {
    return EText(
      text,
      style: Theme.of(context).textTheme.headlineSmall,
      bold: bold,
      italic: italic,
      gray: gray,
    );
  }
}

// === Title / Subtitle ===
class TitleText extends StatelessWidget {
  final String text;
  final bool bold;
  final bool italic;
  final bool gray;
  const TitleText(this.text,
      {super.key, this.bold = false, this.italic = false, this.gray = false});

  @override
  Widget build(BuildContext context) {
    return EText(
      text,
      style: Theme.of(context).textTheme.titleLarge,
      bold: bold,
      italic: italic,
      gray: gray,
    );
  }
}

class SubtitleText extends StatelessWidget {
  final String text;
  final bool bold;
  final bool italic;
  final bool gray;

  const SubtitleText(this.text,
      {super.key, this.bold = false, this.italic = false, this.gray = false});

  @override
  Widget build(BuildContext context) {
    return EText(
      text,
      style: Theme.of(context).textTheme.titleMedium,
      bold: bold,
      italic: italic,
      gray: gray,
    );
  }
}

// === Paragraphs ===
class ParagraphLg extends StatelessWidget {
  final String text;
  final bool bold;
  final bool italic;
  final bool gray;

  const ParagraphLg(this.text,
      {super.key, this.bold = false, this.italic = false, this.gray = false});

  @override
  Widget build(BuildContext context) {
    return EText(
      text,
      style: Theme.of(context).textTheme.bodyLarge,
      bold: bold,
      italic: italic,
      gray: gray,
    );
  }
}

class Paragraph extends StatelessWidget {
  final String text;
  final bool bold;
  final bool italic;
  final bool gray;
  const Paragraph(this.text,
      {super.key, this.bold = false, this.italic = false, this.gray = false});

  @override
  Widget build(BuildContext context) {
    return EText(
      text,
      style: Theme.of(context).textTheme.bodyMedium,
      bold: bold,
      italic: italic,
      gray: gray,
    );
  }
}

class ParagraphSm extends StatelessWidget {
  final String text;
  final bool bold;
  final bool italic;
  final bool gray;

  const ParagraphSm(this.text,
      {super.key, this.bold = false, this.italic = false, this.gray = false});

  @override
  Widget build(BuildContext context) {
    return EText(
      text,
      style: Theme.of(context).textTheme.bodySmall,
      bold: bold,
      italic: italic,
      gray: gray,
    );
  }
}

// === Labels / Captions ===
class Label extends StatelessWidget {
  final String text;
  final bool bold;
  final bool italic;
  final bool gray;
  const Label(this.text,
      {super.key, this.bold = false, this.italic = false, this.gray = false});

  @override
  Widget build(BuildContext context) {
    return EText(
      text,
      style: Theme.of(context).textTheme.labelLarge,
      bold: bold,
      italic: italic,
      gray: gray,
    );
  }
}

class LabelSm extends StatelessWidget {
  final String text;
  final bool bold;
  final bool italic;
  final bool gray;

  const LabelSm(this.text,
      {super.key, this.bold = false, this.italic = false, this.gray = false});

  @override
  Widget build(BuildContext context) {
    return EText(
      text,
      style: Theme.of(context).textTheme.labelSmall,
      bold: bold,
      italic: italic,
      gray: gray,
    );
  }
}
