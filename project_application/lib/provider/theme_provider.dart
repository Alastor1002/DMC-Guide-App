import 'package:flutter/material.dart';
import 'package:project_application/entity/soundmager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:project_application/themes/themeDante.dart';
import 'package:project_application/themes/themeVergil.dart';

enum AppTheme {
  dante,
  vergil,
}

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = DanteMaterialTheme(Typography.material2021().white).darkMediumContrast();
  AppTheme _current = AppTheme.dante;

  ThemeData get themeData => _themeData;
  AppTheme get currentTheme => _current;

  ThemeProvider() {
    _loadTheme();
  }

  void _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final theme = prefs.getString('app_theme') ?? 'dante';
    setTheme(theme == 'vergil' ? AppTheme.vergil : AppTheme.dante);
  }

  void setTheme(AppTheme theme) async {
    final prefs = await SharedPreferences.getInstance();
    _current = theme;

    switch (theme) {
      case AppTheme.dante:
        _themeData = DanteMaterialTheme(Typography.material2021().white).darkMediumContrast();
        await SoundManager().playJackpot();
        prefs.setString('app_theme', 'dante');
        break;
      case AppTheme.vergil:
        _themeData = VergilMaterialTheme(Typography.material2021().white).darkMediumContrast();
        await SoundManager().playNeedMorePower();
        prefs.setString('app_theme', 'vergil');
        break;
    }

    notifyListeners();
  }
}

