# EasierTypography

A lightweight Flutter package that simplifies text styling using semantic widgets like `DisplayLg`, `HeadingMd`, `Paragraph`, and `Label`.

## Features

- Predefined typography widgets based on `Theme.of(context)`
- Supports optional `bold`, `gray` and `italic` styling
- Follows Material Design text styles

## Usage

```dart
import 'package:easy_typography/easy_typography.dart';

DisplayLg('Welcome');
HeadingMd('Section Title', bold: true);
Paragraph('This is body text.', italic: true, gray: true);
Label('Small label text');
```
