
import 'package:clean_architecture_flutter_sampang/core/error/exception.dart';
import '../models/user_model.dart';

abstract class AuthDataSource {
  Future<UserModel> getUser({required String name});
}

class AuthDataSourceImpl implements AuthDataSource {
  @override
  Future<UserModel> getUser({required String name}) async {
    try {
      // final url = Uri.parse("");
      // final response = await http.get("some url");
      int response = 400;
      await Future.delayed(const Duration(seconds: 3), () {
        //TODO: Change the response, if you want error
        response = 200;
      });
      if(response == 200) {
        // return UserModel.fromJson(json.decode(response.body));
        return UserModel(name: name, id: 1);
      } else {
        throw ServerException();
      }
    } catch(e) {
      rethrow;
    }
  }
}