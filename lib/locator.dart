import 'package:get_it/get_it.dart';

import 'core/app_view_model.dart';

GetIt locator = GetIt.instance;
void setup() {
  locator.registerLazySingleton<AppViewModel>(() => AppViewModel());
}
