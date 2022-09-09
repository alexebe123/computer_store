class ProfileModel {
  String id = "";
  String name = "";
  String imageUrl = "";
  DateTime age = DateTime.fromMillisecondsSinceEpoch(0);
  String gender = "";
  String phone = "";
  List<String> role = [];

  ProfileModel.empty();

  ProfileModel({
    required this.age,
    required this.gender,
    required this.imageUrl,
    required this.name,
    required this.phone,
    required this.role,
  });

  ProfileModel.fromJson(Map<String, dynamic>? json) {
    id = json!['\$id'];
    name = json['name'];
    gender = json['gender'];
    age = DateTime.fromMillisecondsSinceEpoch(json['age']);
    imageUrl = json['imageUrl'];
    phone = json['phone'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['gender'] = gender;
    data['imageUrl'] = imageUrl;
    data['phone'] = phone;
    data['age'] = age.millisecondsSinceEpoch;
    data['role'] = role;
    return data;
  }
}
