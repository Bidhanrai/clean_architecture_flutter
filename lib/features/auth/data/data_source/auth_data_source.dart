
import '../models/user_model.dart';

abstract class AuthDataSource {
  Future<UserModel> getUser({required String name});
}

class AuthDataSourceImpl implements AuthDataSource {
  @override
  Future<UserModel> getUser({required String name}) async {
    // final url = Uri.parse("");
    // final response = await http.get(url);
    int response = 400;
    await Future.delayed(const Duration(seconds: 3), () {
      response = 200;
    });
    if(response == 200) {
      // return UserModel.fromJson(json.decode(response.body));
      return UserModel(name: name, id: 1);
    } else {
      throw Error();
    }
  }
}