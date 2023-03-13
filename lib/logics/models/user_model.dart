class UserModel {
  final String accessToken;
  final UserData data;

  UserModel({
    required this.accessToken,
    required this.data,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      accessToken: json['accessToken'],
      data: UserData.fromJson(
        json['data'],
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "accessToken": accessToken,
      "data": data.toJson(),
    };
  }
}

class UserData {
  String sId;
  String name;
  String email;
  int iV;

  UserData({
    required this.sId,
    required this.name,
    required this.email,
    required this.iV,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      sId: json['_id'],
      name: json['name'],
      email: json['email'],
      iV: json['__v'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "_id": sId,
      "name": name,
      "email": email,
      "__v": iV,
    };
  }
}
