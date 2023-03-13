// ignore_for_file: public_member_api_docs, sort_constructors_first
class PostModel {
  final String sId;
  final User user;
  final String text;
  final String? image;

  PostModel(
      {required this.sId,
      required this.user,
      required this.text,
      required this.image});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
        sId: json['_id'],
        user: User.fromJson(json['user']),
        text: json['text'] ?? '',
        image: json['image'] ?? "");
  }

  @override
  String toString() {
    return 'PostModel(sId: $sId, user: $user, text: $text, image: $image)';
  }
}

class User {
  final String sId;
  final String name;
  final String email;
  final int iV;

  User({
    required this.sId,
    required this.name,
    required this.email,
    required this.iV,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        sId: json['_id'],
        name: json['name'],
        email: json['email'],
        iV: json['__v'] ?? 0);
  }

  @override
  String toString() {
    return 'User(sId: $sId, name: $name, email: $email, iV: $iV)';
  }
}
