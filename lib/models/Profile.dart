// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

import 'dart:convert';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
  Profile({
    required this.token,
    required this.user,
  });

  String token;
  User user;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        token: json["token"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "user": user.toJson(),
      };
}

class User {
  User({
    required this.active,
    required this.id,
    required this.name,
    required this.lastname,
    required this.email,
    required this.phoneNumber,
    required this.role,
    required this.password,
    required this.avatar,
    required this.date,
  });

  bool active;
  String id;
  String name;
  String lastname;
  String email;
  String phoneNumber;
  int role;
  String password;
  String avatar;
  DateTime date;

  factory User.fromJson(Map<String, dynamic> json) => User(
        active: json["active"],
        id: json["_id"],
        name: json["name"],
        lastname: json["lastname"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        role: json["role"],
        password: json["password"],
        avatar: json["avatar"],
        date: DateTime.parse(json["date"]),
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "_id": id,
        "name": name,
        "lastname": lastname,
        "email": email,
        "phone_number": phoneNumber,
        "role": role,
        "password": password,
        "avatar": avatar,
        "date": date.toIso8601String(),
      };
}
