part of 'theme_cubit.dart';

@immutable
sealed class ThemeState {}

final class ThemeInitial extends ThemeState {}

class ThemeChanged extends ThemeState {
  final ThemeModeType themeMode;
  ThemeChanged(this.themeMode);
}

class ThemeLoaded extends ThemeState {
  final ThemeModeType themeMode;
  
  ThemeLoaded(this.themeMode);
}
