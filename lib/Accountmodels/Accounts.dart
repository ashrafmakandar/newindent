import 'package:newindent/Accountmodels/ListElement.dart';

class Accounts{

  Accounts({
    this.total,
    this.list,
  });

  int total;
  List<ListElement> list;

  factory Accounts.fromJson(Map<String, dynamic> json) => Accounts(
    total: json["total"],
    list: List<ListElement>.from(json["list"].map((x) => ListElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "total": total,
    "list": List<dynamic>.from(list.map((x) => x.toJson())),
  };

}