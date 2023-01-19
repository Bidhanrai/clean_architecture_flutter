import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity{
  const UserModel({required super.name, required super.id});

  @override
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json["name"],
      id: json["pk"],
    );
  }
}