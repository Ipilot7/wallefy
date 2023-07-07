import 'package:hive/hive.dart';

part 'login_model.g.dart';

@HiveType(typeId: 1)
class LoginModel extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? accessToken;
  @HiveField(2)
  String? tokenType;
  @HiveField(3)
  String? role;
  @HiveField(4)
  int? branchId;

  LoginModel(
      {this.id, this.accessToken, this.tokenType, this.role, this.branchId});

  LoginModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    role = json['role'];
    branchId = json['branch_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['access_token'] = accessToken;
    data['token_type'] = tokenType;
    data['role'] = role;
    data['branch_id'] = branchId;
    return data;
  }
}
