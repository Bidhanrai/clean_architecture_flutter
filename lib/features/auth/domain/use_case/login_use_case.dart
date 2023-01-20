import 'package:clean_architecture_flutter_sampang/core/use_case/base_use_case.dart';
import 'package:equatable/equatable.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class LoginUseCase extends BaseUseCase<UserEntity, Params>{
  final AuthRepository authRepository;
  LoginUseCase({required this.authRepository});

  @override
  Future<UserEntity> call(Params params) async {
    return await authRepository.login(name: params.name);
  }
}

class Params extends Equatable {
  final String name;

  const Params({required this.name});

  @override
  List<Object?> get props => [name];
}