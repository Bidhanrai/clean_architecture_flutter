import 'package:equatable/equatable.dart';

abstract class BaseUseCase<Type, Params> {
  Future<Type> execute(Params params);
}

// class NoParams extends Equatable {
//   @override
//   // TODO: implement props
//   List<Object?> get props => throw UnimplementedError();
// }

