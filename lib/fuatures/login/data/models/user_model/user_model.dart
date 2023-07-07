import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 2)
class UserModel extends HiveObject{
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? passwordHash;
  @HiveField(2)
  String? role;
  @HiveField(3)
  int? branchId;
  @HiveField(4)
  bool? balance;
  @HiveField(5)
  String? username;
  @HiveField(6)
  int? id;
  @HiveField(7)
  String? token;
  @HiveField(8)
  int? phone;
  @HiveField(9)
  bool? status;

  UserModel(
      {this.name,
      this.passwordHash,
      this.role,
      this.branchId,
      this.balance,
      this.username,
      this.id,
      this.token,
      this.phone,
      this.status});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    passwordHash = json['password_hash'];
    role = json['role'];
    branchId = json['branch_id'];
    balance = json['balance'];
    username = json['username'];
    id = json['id'];
    token = json['token'];
    phone = json['phone'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['password_hash'] = this.passwordHash;
    data['role'] = this.role;
    data['branch_id'] = this.branchId;
    data['balance'] = this.balance;
    data['username'] = this.username;
    data['id'] = this.id;
    data['token'] = this.token;
    data['phone'] = this.phone;
    data['status'] = this.status;
    return data;
  }
}
