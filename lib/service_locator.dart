import 'package:clean_architecture_flutter_sampang/services/navigation_service.dart';
import 'package:get_it/get_it.dart';
import 'features/auth/presentation/di/auth_di.dart';


final GetIt locator = GetIt.instance;

void di() {
  //Services
  locator.registerLazySingleton<NavigationService>(() => NavigationService());


  //Features
  authDi();


  //Core


  //External

}
