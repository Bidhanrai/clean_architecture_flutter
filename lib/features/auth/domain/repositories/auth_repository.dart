import '../entities/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity> getUser({required String name});
}