import 'package:clean_architecture_flutter_sampang/Router.dart';
import 'package:clean_architecture_flutter_sampang/service_locator.dart';
import 'package:clean_architecture_flutter_sampang/services/navigation_service.dart';
import 'package:flutter/cupertino.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/use_case/login_use_case.dart';


class LoginViewModel extends ChangeNotifier {
  final LoginUseCase loginUseCase;
  LoginViewModel({required this.loginUseCase});

  String title = "Please login";

  TextEditingController userNameTextController = TextEditingController();

  disposeTextController() {
    userNameTextController.dispose();
  }

  bool _loading = false;
  bool get loading => _loading;
  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }


  UserEntity? userEntity;
  login() async {
    if(userNameTextController.text.isEmpty) return;

    setLoading(true);
    try {
      userEntity = await loginUseCase.execute(userNameTextController.text);
      await locator<NavigationService>().navigateToAndBack(welcomeView, arguments: userEntity!.name);
    } catch(e) {
      throw Error();
    } finally {
      setLoading(false);
    }
  }
}