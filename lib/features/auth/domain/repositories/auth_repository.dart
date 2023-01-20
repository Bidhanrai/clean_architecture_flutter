import '../entities/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity> login({required String name});
}