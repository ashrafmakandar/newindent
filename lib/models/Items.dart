import 'package:newindent/models/ListElement.dart';


class Items {
  Items({
    this.total,
    this.list,
  });

  int total;
  List<ListElement> list;

  factory Items.fromJson(Map<String, dynamic> json) => Items(
    total: json["total"],
    list: List<ListElement>.from(json["list"].map((x) => ListElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "total": total,
    "list": List<dynamic>.from(list.map((x) => x.toJson())),
  };
}