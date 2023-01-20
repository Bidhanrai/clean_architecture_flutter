import 'package:clean_architecture_flutter_sampang/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:clean_architecture_flutter_sampang/features/auth/domain/repositories/auth_repository.dart';
import 'package:clean_architecture_flutter_sampang/features/auth/domain/use_case/login_use_case.dart';
import '../../../../dependency_injector.dart';
import '../../data/data_source/auth_data_source.dart';
import '../view_models/login_view_model.dart';


void authDi() {

  //View Models
  locator.registerFactory(() => LoginViewModel(loginUseCase: locator()));

  //Use cases
  locator.registerLazySingleton(() => LoginUseCase(authRepository: locator()));

  //Repository
  locator.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(authDataSource: locator()));

  //Data sources
  locator.registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl());


}