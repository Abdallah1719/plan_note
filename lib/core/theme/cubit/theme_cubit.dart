import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:plan_note/core/services/service_locator.dart';
import 'package:plan_note/core/storage/shared_preferences/cache_helper.dart';
import 'package:plan_note/core/theme/theme.dart';
import 'package:plan_note/core/utils/enums.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  ThemeModeType _currentThemeMode = ThemeModeType.auto;

  ThemeModeType get currentThemeMode => _currentThemeMode;

  Future<void> changeTheme(ThemeModeType themeMode) async {
    _currentThemeMode = themeMode;
    await sl<CacheHelper>().saveData(key: 'themeMode', value: themeMode.index);
    emit(ThemeChanged(themeMode));
  }

  ThemeData currentTheme(BuildContext context) {
    switch (_currentThemeMode) {
      case ThemeModeType.light:
        return AppTheme.lightMode;
      case ThemeModeType.dark:
        return AppTheme.darkMode;
      case ThemeModeType.auto:
        final brightness = MediaQuery.of(context).platformBrightness;
        return brightness == Brightness.dark
            ? AppTheme.darkMode
            : AppTheme.lightMode;
    }
  }

  ThemeMode getThemeMode() {
    switch (_currentThemeMode) {
      case ThemeModeType.light:
        return ThemeMode.light;
      case ThemeModeType.dark:
        return ThemeMode.dark;
      case ThemeModeType.auto:
        return ThemeMode.system;
    }
  }

  Future<void> loadSavedTheme() async {
    final savedThemeIndex =
        await sl<CacheHelper>().getData(key: 'themeMode') ?? 2; // default auto
    _currentThemeMode = ThemeModeType.values[savedThemeIndex];
    emit(ThemeLoaded(_currentThemeMode));
  }
}
