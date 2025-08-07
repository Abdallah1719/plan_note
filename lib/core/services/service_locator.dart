import 'package:get_it/get_it.dart';
import 'package:plan_note/core/storage/shared_preferences/cache_helper.dart';

final sl = GetIt.instance;
void setupServiceLocator() {
   //==================== shared preferences ====================
  sl.registerSingleton<CacheHelper>(CacheHelper());
}
