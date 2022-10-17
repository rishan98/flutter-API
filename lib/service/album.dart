import 'dart:convert';

List<Album> userFromJson(String str) =>
    List<Album>.from(json.decode(str).map((x) => Album.fromJson(x)));

String userToJson(List<Album> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Album {
  Album({
    this.title,
    this.userId,
    this.id,
  });

  String? title;
  String? userId;
  String? id;

  factory Album.fromJson(Map<String, dynamic> json) => Album(
        title: json["title"],
        userId: json["userId"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "userId": userId,
        "id": id,
      };
}
