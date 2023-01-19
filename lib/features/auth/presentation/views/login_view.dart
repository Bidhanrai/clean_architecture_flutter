import 'package:clean_architecture_flutter_sampang/features/auth/presentation/view_models/login_view_model.dart';
import 'package:clean_architecture_flutter_sampang/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/use_case/login_use_case.dart';


class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginViewModel>(
      create: (context) => LoginViewModel(loginUseCase: locator<LoginUseCase>()),
      // create: (context) => locator<LoginViewModel>(),
      builder: (context,child) {
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
                context.watch<LoginViewModel>().userEntity!=null
                    ? Text("You have logged in ${context.watch<LoginViewModel>().userEntity!.name}", style: const TextStyle(color: Colors.green, fontSize: 24, fontWeight: FontWeight.w400),)
                    : Text(context.watch<LoginViewModel>().title, style: const TextStyle(fontSize: 30),),
                const SizedBox(height: 20),
                TextField(
                  controller: context.read<LoginViewModel>().userNameTextController,
                  decoration: const InputDecoration(
                    hintText: "Enter username",
                  ),
                ),

                const SizedBox(height: 20),

                context.watch<LoginViewModel>().loading
                    ? const Center(child: CircularProgressIndicator.adaptive())
                    : TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {
                          context.read<LoginViewModel>().login();
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