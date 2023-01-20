import 'package:clean_architecture_flutter_sampang/features/auth/presentation/view_models/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../dependency_injector.dart';


class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => locator<LoginViewModel>(),
      builder: (context, viewModel, _) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Clean Architecture"),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                viewModel.hasError
                    ? Text(viewModel.modelError.toString())
                    : viewModel.userEntity != null
                        ? Text(
                            "You have logged in ${viewModel.userEntity!.name}",
                            style: const TextStyle(
                                color: Colors.green,
                                fontSize: 24,
                                fontWeight: FontWeight.w400),
                          )
                        : Text(
                            viewModel.title,
                            style: const TextStyle(fontSize: 30),
                          ),
                const SizedBox(height: 20),
                TextField(
                  controller:
                  viewModel.userNameTextController,
                  decoration: const InputDecoration(
                    hintText: "Enter your name",
                  ),
                ),
                const SizedBox(height: 20),
                viewModel.isBusy
                    ? const Center(child: CircularProgressIndicator.adaptive())
                    : TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {
                          viewModel.login();
                        },
                        child: const Text("login"),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}