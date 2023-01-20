import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../data_source/auth_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource authDataSource;
  AuthRepositoryImpl({required this.authDataSource});

  @override
  Future<UserEntity> login({required String name}) async {
    try {
      final response = await authDataSource.getUser(name: name);
      return response;
    } catch(e) {
      rethrow;
    }
  }
}