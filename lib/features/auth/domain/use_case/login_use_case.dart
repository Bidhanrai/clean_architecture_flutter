import 'package:clean_architecture_flutter_sampang/core/base_use_case.dart';
import 'package:equatable/equatable.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class LoginUseCase extends BaseUseCase<UserEntity, String>{
// class LoginUseCase {
  final AuthRepository authRepository;
  LoginUseCase({required this.authRepository});

  @override
  Future<UserEntity> execute(params) async {
    return await authRepository.getUser(name: params);
  }
}

// class Params extends Equatable {
//   final String name;
//
//   const Params({required this.name});
//
//   @override
//   List<Object?> get props => [name];
// }