import 'package:get_it/get_it.dart';
import 'package:plan_note/core/storage/shared_preferences/cache_helper.dart';
import 'package:plan_note/core/theme/cubit/theme_cubit.dart';
import 'package:plan_note/l10n/cubit/locale_cubit.dart';

final sl = GetIt.instance;
void setupServiceLocator() {
  //==================== shared preferences ====================
  sl.registerSingleton<CacheHelper>(CacheHelper());
  //==================== theme cubit ====================
  sl.registerFactory<ThemeCubit>(() => ThemeCubit());
  //==================== locale cubit ====================
  sl.registerFactory<LocaleCubit>(() => LocaleCubit());
}
