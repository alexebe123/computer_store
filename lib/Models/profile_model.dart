class ProfileModel {
  String id = "";
  String name = "";
  String phone = "";
  String email = "";
  String password = "";
  List<String> role = [];

  ProfileModel.empty();

  ProfileModel({
    required this.name,
    required this.phone,
    required this.role,
    required this.email,
    required this.password,
  });

  ProfileModel.fromJson(Map<String, dynamic>? json) {
    id = json!['\$id'];
    name = json['name'];
    phone = json['phone'];
    role = json['role'];
    password = json['password'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['phone'] = phone;
    data['role'] = role;
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}
