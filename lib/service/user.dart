import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
  
    this.name,
    this.username,
    this.id,
    this.phone,
    this.email
    
  });


  String? name;
  String? username;
  String? id;
  String? email;
  String? phone;
 

  factory User.fromJson(Map<String, dynamic> json) => User(
        
        name: json["name"],
        username: json["username"],
        id: json["id"],
        phone: json["phone"],
        email: json["email"],
       
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "username": username,
        "email": email,
        "phone": phone,
        "id": id,
      };
}