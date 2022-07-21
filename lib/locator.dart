import 'package:get_it/get_it.dart';
import 'package:regal_system_portfolio/services/navigation_services/navigation_services.dart';

GetIt locator = GetIt.instance;

void setupLocator(){
  locator.registerLazySingleton(() => NavigationService());
}