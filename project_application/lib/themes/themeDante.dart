import "package:flutter/material.dart";

class DanteMaterialTheme{
  final TextTheme textTheme;

  const DanteMaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xffbc0005),
      surfaceTint: Color(0xffc00006),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffea0009),
      onPrimaryContainer: Color(0xfffffbff),
      secondary: Color(0xffb5261c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffff5b4a),
      onSecondaryContainer: Color(0xff610001),
      tertiary: Color(0xff5d5f5f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffe8e8e8),
      onTertiaryContainer: Color(0xff676868),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff2a1613),
      onSurfaceVariant: Color(0xff5f3e3a),
      outline: Color(0xff946e68),
      outlineVariant: Color(0xffeabcb5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff422b27),
      inversePrimary: Color(0xffffb4a9),
      primaryFixed: Color(0xffffdad5),
      onPrimaryFixed: Color(0xff410000),
      primaryFixedDim: Color(0xffffb4a9),
      onPrimaryFixedVariant: Color(0xff930003),
      secondaryFixed: Color(0xffffdad5),
      onSecondaryFixed: Color(0xff410000),
      secondaryFixedDim: Color(0xffffb4a9),
      onSecondaryFixedVariant: Color(0xff920606),
      tertiaryFixed: Color(0xffe2e2e2),
      onTertiaryFixed: Color(0xff1a1c1c),
      tertiaryFixedDim: Color(0xffc6c6c6),
      onTertiaryFixedVariant: Color(0xff454747),
      surfaceDim: Color(0xfff7d2cc),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ee),
      surfaceContainer: Color(0xffffe9e6),
      surfaceContainerHigh: Color(0xffffe2dd),
      surfaceContainerHighest: Color(0xffffdad5),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff740002),
      surfaceTint: Color(0xffc00006),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffdc0008),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff740002),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffca3629),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff353637),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6c6d6d),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff1e0c09),
      onSurfaceVariant: Color(0xff4d2e2a),
      outline: Color(0xff6c4a45),
      outlineVariant: Color(0xff8a645e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff422b27),
      inversePrimary: Color(0xffffb4a9),
      primaryFixed: Color(0xffdc0008),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xffae0004),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffca3629),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xffa71b13),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6c6d6d),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff535555),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe3beb9),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ee),
      surfaceContainer: Color(0xffffe2dd),
      surfaceContainerHigh: Color(0xfffad4cf),
      surfaceContainerHighest: Color(0xffeec9c4),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff610001),
      surfaceTint: Color(0xffc00006),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff980003),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff610001),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff950a08),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2b2c2d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff48494a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff412420),
      outlineVariant: Color(0xff62413c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff422b27),
      inversePrimary: Color(0xffffb4a9),
      primaryFixed: Color(0xff980003),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff6d0002),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff950a08),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff6d0002),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff48494a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff313333),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd4b1ab),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffffedea),
      surfaceContainer: Color(0xffffdad5),
      surfaceContainerHigh: Color(0xfff1ccc6),
      surfaceContainerHighest: Color(0xffe3beb9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb4a9),
      surfaceTint: Color(0xffffb4a9),
      onPrimary: Color(0xff690001),
      primaryContainer: Color(0xffff5543),
      onPrimaryContainer: Color(0xff230000),
      secondary: Color(0xffffb4a9),
      onSecondary: Color(0xff690001),
      secondaryContainer: Color(0xff920606),
      onSecondaryContainer: Color(0xffff9a8c),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff2f3131),
      tertiaryContainer: Color(0xffe2e2e2),
      onTertiaryContainer: Color(0xff636565),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff210e0c),
      onSurface: Color(0xffffdad5),
      onSurfaceVariant: Color(0xffeabcb5),
      outline: Color(0xffb08781),
      outlineVariant: Color(0xff5f3e3a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffffdad5),
      inversePrimary: Color(0xffc00006),
      primaryFixed: Color(0xffffdad5),
      onPrimaryFixed: Color(0xff410000),
      primaryFixedDim: Color(0xffffb4a9),
      onPrimaryFixedVariant: Color(0xff930003),
      secondaryFixed: Color(0xffffdad5),
      onSecondaryFixed: Color(0xff410000),
      secondaryFixedDim: Color(0xffffb4a9),
      onSecondaryFixedVariant: Color(0xff920606),
      tertiaryFixed: Color(0xffe2e2e2),
      onTertiaryFixed: Color(0xff1a1c1c),
      tertiaryFixedDim: Color(0xffc6c6c6),
      onTertiaryFixedVariant: Color(0xff454747),
      surfaceDim: Color(0xff210e0c),
      surfaceBright: Color(0xff4b3330),
      surfaceContainerLowest: Color(0xff1b0907),
      surfaceContainerLow: Color(0xff2a1613),
      surfaceContainer: Color(0xff2f1a17),
      surfaceContainerHigh: Color(0xff3b2421),
      surfaceContainerHighest: Color(0xff472f2b),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd2cb),
      surfaceTint: Color(0xffffb4a9),
      onPrimary: Color(0xff540001),
      primaryContainer: Color(0xffff5543),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffd2cb),
      onSecondary: Color(0xff540001),
      secondaryContainer: Color(0xfffb5947),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff2f3131),
      tertiaryContainer: Color(0xffe2e2e2),
      onTertiaryContainer: Color(0xff464848),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff210e0c),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffd2cb),
      outline: Color(0xffd4a7a1),
      outlineVariant: Color(0xffb08680),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffffdad5),
      inversePrimary: Color(0xff960003),
      primaryFixed: Color(0xffffdad5),
      onPrimaryFixed: Color(0xff2d0000),
      primaryFixedDim: Color(0xffffb4a9),
      onPrimaryFixedVariant: Color(0xff740002),
      secondaryFixed: Color(0xffffdad5),
      onSecondaryFixed: Color(0xff2d0000),
      secondaryFixedDim: Color(0xffffb4a9),
      onSecondaryFixedVariant: Color(0xff740002),
      tertiaryFixed: Color(0xffe2e2e2),
      onTertiaryFixed: Color(0xff0f1112),
      tertiaryFixedDim: Color(0xffc6c6c6),
      onTertiaryFixedVariant: Color(0xff353637),
      surfaceDim: Color(0xff210e0c),
      surfaceBright: Color(0xff583e3a),
      surfaceContainerLowest: Color(0xff120403),
      surfaceContainerLow: Color(0xff2d1815),
      surfaceContainer: Color(0xff38221f),
      surfaceContainerHigh: Color(0xff442d29),
      surfaceContainerHighest: Color(0xff503834),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffece9),
      surfaceTint: Color(0xffffb4a9),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffaea2),
      onPrimaryContainer: Color(0xff230000),
      secondary: Color(0xffffece9),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffaea2),
      onSecondaryContainer: Color(0xff220000),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe2e2e2),
      onTertiaryContainer: Color(0xff282a2b),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff210e0c),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffece9),
      outlineVariant: Color(0xffe6b8b1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffffdad5),
      inversePrimary: Color(0xff960003),
      primaryFixed: Color(0xffffdad5),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb4a9),
      onPrimaryFixedVariant: Color(0xff2d0000),
      secondaryFixed: Color(0xffffdad5),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffb4a9),
      onSecondaryFixedVariant: Color(0xff2d0000),
      tertiaryFixed: Color(0xffe2e2e2),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffc6c6c6),
      onTertiaryFixedVariant: Color(0xff0f1112),
      surfaceDim: Color(0xff210e0c),
      surfaceBright: Color(0xff644a46),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff2f1a17),
      surfaceContainer: Color(0xff422b27),
      surfaceContainerHigh: Color(0xff4e3532),
      surfaceContainerHighest: Color(0xff5a403d),
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
