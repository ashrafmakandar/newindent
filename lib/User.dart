import 'ListElement.dart';

class User {
  User({
    this.total,
    this.list,
  });

  int total;
  List<ListElement> list;

  factory User.fromJson(Map<String, dynamic> json) => User(
    total: json["total"],
    list: List<ListElement>.from(json["list"].map((x) => ListElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "total": total,
    "list": List<dynamic>.from(list.map((x) => x.toJson())),
  };
}