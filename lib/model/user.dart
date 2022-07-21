class UserModel {
  final String? phone;
  final String? password;
  final String? fullname;
  final String? email;
  final int? status;
  final String? token;

  UserModel(
      {this.phone,
      this.password,
      this.fullname,
      this.email,
      this.status,
      this.token});

  factory UserModel.fromJson(Map<String, dynamic> jsonData) {
    return UserModel(
      fullname: jsonData['fullname'],
      phone: jsonData['phone'],
      password: jsonData['password'],
      email: jsonData['email'],
      token: jsonData['token'],
      status: jsonData['status'],
    );
  }
}
