import "package:flutter/material.dart";

class VergilMaterialTheme {
  final TextTheme textTheme;

  const VergilMaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff0454cc),
      surfaceTint: Color(0xff0c56cf),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff356ee6),
      onPrimaryContainer: Color(0xfffefcff),
      secondary: Color(0xff4c5d8c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffb7c8fe),
      onSecondaryContainer: Color(0xff425381),
      tertiary: Color(0xff5d5f5f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffe2e2e2),
      onTertiaryContainer: Color(0xff636465),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffaf8ff),
      onSurface: Color(0xff191b23),
      onSurfaceVariant: Color(0xff434654),
      outline: Color(0xff737785),
      outlineVariant: Color(0xffc3c6d6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3038),
      inversePrimary: Color(0xffb2c5ff),
      primaryFixed: Color(0xffdae2ff),
      onPrimaryFixed: Color(0xff001848),
      primaryFixedDim: Color(0xffb2c5ff),
      onPrimaryFixedVariant: Color(0xff0040a1),
      secondaryFixed: Color(0xffdae2ff),
      onSecondaryFixed: Color(0xff031945),
      secondaryFixedDim: Color(0xffb4c5fb),
      onSecondaryFixedVariant: Color(0xff344573),
      tertiaryFixed: Color(0xffe2e2e2),
      onTertiaryFixed: Color(0xff1a1c1c),
      tertiaryFixedDim: Color(0xffc6c6c6),
      onTertiaryFixedVariant: Color(0xff454747),
      surfaceDim: Color(0xffd9d9e4),
      surfaceBright: Color(0xfffaf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3fd),
      surfaceContainer: Color(0xffededf8),
      surfaceContainerHigh: Color(0xffe7e7f2),
      surfaceContainerHighest: Color(0xffe1e2ec),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00317f),
      surfaceTint: Color(0xff0c56cf),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2a66de),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff223461),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff5b6c9c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff353637),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6c6d6d),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffaf8ff),
      onSurface: Color(0xff0f1118),
      onSurfaceVariant: Color(0xff323643),
      outline: Color(0xff4e5260),
      outlineVariant: Color(0xff696d7b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3038),
      inversePrimary: Color(0xffb2c5ff),
      primaryFixed: Color(0xff2a66de),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff004dbe),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff5b6c9c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff425382),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6c6d6d),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff535555),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc5c6d0),
      surfaceBright: Color(0xfffaf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3fd),
      surfaceContainer: Color(0xffe7e7f2),
      surfaceContainerHigh: Color(0xffdcdce6),
      surfaceContainerHighest: Color(0xffd0d1db),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00276a),
      surfaceTint: Color(0xff0c56cf),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff0042a6),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff172a56),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff364875),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2b2c2d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff48494a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffaf8ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff282c38),
      outlineVariant: Color(0xff454956),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3038),
      inversePrimary: Color(0xffb2c5ff),
      primaryFixed: Color(0xff0042a6),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff002d77),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff364875),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff1f315d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff48494a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff313333),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb7b8c2),
      surfaceBright: Color(0xfffaf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f0fa),
      surfaceContainer: Color(0xffe1e2ec),
      surfaceContainerHigh: Color(0xffd3d4de),
      surfaceContainerHighest: Color(0xffc5c6d0),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb2c5ff),
      surfaceTint: Color(0xffb2c5ff),
      onPrimary: Color(0xff002b73),
      primaryContainer: Color(0xff5b8cff),
      onPrimaryContainer: Color(0xff001744),
      secondary: Color(0xffb4c5fb),
      onSecondary: Color(0xff1c2f5b),
      secondaryContainer: Color(0xff344573),
      onSecondaryContainer: Color(0xffa3b4e8),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff2f3131),
      tertiaryContainer: Color(0xffe2e2e2),
      onTertiaryContainer: Color(0xff636465),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff11131a),
      onSurface: Color(0xffe1e2ec),
      onSurfaceVariant: Color(0xffc3c6d6),
      outline: Color(0xff8d909f),
      outlineVariant: Color(0xff434654),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2ec),
      inversePrimary: Color(0xff0c56cf),
      primaryFixed: Color(0xffdae2ff),
      onPrimaryFixed: Color(0xff001848),
      primaryFixedDim: Color(0xffb2c5ff),
      onPrimaryFixedVariant: Color(0xff0040a1),
      secondaryFixed: Color(0xffdae2ff),
      onSecondaryFixed: Color(0xff031945),
      secondaryFixedDim: Color(0xffb4c5fb),
      onSecondaryFixedVariant: Color(0xff344573),
      tertiaryFixed: Color(0xffe2e2e2),
      onTertiaryFixed: Color(0xff1a1c1c),
      tertiaryFixedDim: Color(0xffc6c6c6),
      onTertiaryFixedVariant: Color(0xff454747),
      surfaceDim: Color(0xff11131a),
      surfaceBright: Color(0xff373941),
      surfaceContainerLowest: Color(0xff0c0e15),
      surfaceContainerLow: Color(0xff191b23),
      surfaceContainer: Color(0xff1d1f27),
      surfaceContainerHigh: Color(0xff282a31),
      surfaceContainerHighest: Color(0xff32343c),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffd1dbff),
      surfaceTint: Color(0xffb2c5ff),
      onPrimary: Color(0xff00215d),
      primaryContainer: Color(0xff5b8cff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffd1dbff),
      onSecondary: Color(0xff10234f),
      secondaryContainer: Color(0xff7e8fc2),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff2f3131),
      tertiaryContainer: Color(0xffe2e2e2),
      onTertiaryContainer: Color(0xff464848),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff11131a),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd9dbec),
      outline: Color(0xffaeb1c1),
      outlineVariant: Color(0xff8c909f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2ec),
      inversePrimary: Color(0xff0041a4),
      primaryFixed: Color(0xffdae2ff),
      onPrimaryFixed: Color(0xff000f32),
      primaryFixedDim: Color(0xffb2c5ff),
      onPrimaryFixedVariant: Color(0xff00317f),
      secondaryFixed: Color(0xffdae2ff),
      onSecondaryFixed: Color(0xff000f32),
      secondaryFixedDim: Color(0xffb4c5fb),
      onSecondaryFixedVariant: Color(0xff223461),
      tertiaryFixed: Color(0xffe2e2e2),
      onTertiaryFixed: Color(0xff101112),
      tertiaryFixedDim: Color(0xffc6c6c6),
      onTertiaryFixedVariant: Color(0xff353637),
      surfaceDim: Color(0xff11131a),
      surfaceBright: Color(0xff42444c),
      surfaceContainerLowest: Color(0xff05070e),
      surfaceContainerLow: Color(0xff1b1d25),
      surfaceContainer: Color(0xff25282f),
      surfaceContainerHigh: Color(0xff30323a),
      surfaceContainerHighest: Color(0xff3b3d45),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffedefff),
      surfaceTint: Color(0xffb2c5ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffacc1ff),
      onPrimaryContainer: Color(0xff000926),
      secondary: Color(0xffedefff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb0c1f7),
      onSecondaryContainer: Color(0xff000926),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe2e2e2),
      onTertiaryContainer: Color(0xff282a2a),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff11131a),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffedefff),
      outlineVariant: Color(0xffbfc2d2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2ec),
      inversePrimary: Color(0xff0041a4),
      primaryFixed: Color(0xffdae2ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffb2c5ff),
      onPrimaryFixedVariant: Color(0xff000f32),
      secondaryFixed: Color(0xffdae2ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb4c5fb),
      onSecondaryFixedVariant: Color(0xff000f32),
      tertiaryFixed: Color(0xffe2e2e2),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffc6c6c6),
      onTertiaryFixedVariant: Color(0xff101112),
      surfaceDim: Color(0xff11131a),
      surfaceBright: Color(0xff4e5058),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1d1f27),
      surfaceContainer: Color(0xff2e3038),
      surfaceContainerHigh: Color(0xff393b43),
      surfaceContainerHighest: Color(0xff45464f),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
