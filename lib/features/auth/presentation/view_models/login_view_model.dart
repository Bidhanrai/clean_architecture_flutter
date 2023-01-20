import 'package:clean_architecture_flutter_sampang/Router.dart';
import 'package:clean_architecture_flutter_sampang/core/error/exception.dart';
import 'package:clean_architecture_flutter_sampang/services/navigation_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import '../../../../constant/constant.dart';
import '../../../../dependency_injector.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/use_case/login_use_case.dart';


class LoginViewModel extends BaseViewModel {
  final LoginUseCase loginUseCase;
  LoginViewModel({required this.loginUseCase});

  String title = "Please login";

  TextEditingController userNameTextController = TextEditingController();

  disposeTextController() {
    userNameTextController.dispose();
  }



  UserEntity? userEntity;
  login() async {
    if(userNameTextController.text.isEmpty) return;
    setBusy(true);
    try {
      userEntity = await loginUseCase(Params(name: userNameTextController.text));
      await locator<NavigationService>().navigateToAndBack(welcomeView, arguments: userEntity!.name);
    } catch(e) {
      if(e is ServerException) {
        setError(serverErrorMessage);
      } else {
        setError(e);
      }
    } finally {
      setBusy(false);
    }
  }
}