import 'PortalsNames.dart';

class UpdateResponse {
  UpdateResponse({
    this.id,
    this.name,
    this.deleted,
    this.userName,
    this.type,
    this.salutationName,
    this.firstName,
    this.lastName,
    this.isActive,
    this.title,
    this.emailAddress,
    this.phoneNumber,
    this.createdAt,
    this.modifiedAt,
    this.empid,
    this.region,
    this.outlet,
    this.mobileNumber,
    this.userGroup,
    this.designation,
    this.outletHeadName,
    this.devicetoken,
    this.channel,
    this.middleName,
    this.emailAddressIsOptedOut,
    this.phoneNumberIsOptedOut,
    this.defaultTeamId,
    this.defaultTeamName,
    this.portalsIds,
    this.portalsNames,
    this.portalRolesIds,
    this.portalRolesNames,
    this.contactId,
    this.contactName,
    this.avatarId,
    this.avatarName,
    this.createdById,
    this.createdByName,
  });

  String id;
  String name;
  bool deleted;
  String userName;
  String type;
  String salutationName;
  String firstName;
  String lastName;
  bool isActive;
  dynamic title;
  String emailAddress;
  dynamic phoneNumber;
  DateTime createdAt;
  DateTime modifiedAt;
  String empid;
  String region;
  String outlet;
  String mobileNumber;
  String userGroup;
  dynamic designation;
  String outletHeadName;
  String devicetoken;
  String channel;
  dynamic middleName;
  bool emailAddressIsOptedOut;
  dynamic phoneNumberIsOptedOut;
  String defaultTeamId;
  String defaultTeamName;
  List<dynamic> portalsIds;
  PortalsNames portalsNames;
  List<dynamic> portalRolesIds;
  PortalsNames portalRolesNames;
  dynamic contactId;
  dynamic contactName;
  dynamic avatarId;
  dynamic avatarName;
  String createdById;
  String createdByName;

  factory UpdateResponse.fromJson(Map<String, dynamic> json) => UpdateResponse(
    id: json["id"],
    name: json["name"],
    deleted: json["deleted"],
    userName: json["userName"],
    type: json["type"],
    salutationName: json["salutationName"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    isActive: json["isActive"],
    title: json["title"],
    emailAddress: json["emailAddress"],
    phoneNumber: json["phoneNumber"],
    createdAt: DateTime.parse(json["createdAt"]),
    modifiedAt: DateTime.parse(json["modifiedAt"]),
    empid: json["empid"],
    region: json["region"],
    outlet: json["outlet"],
    mobileNumber: json["mobileNumber"],
    userGroup: json["userGroup"],
    designation: json["designation"],
    outletHeadName: json["outletHeadName"],
    devicetoken: json["devicetoken"],
    channel: json["channel"],
    middleName: json["middleName"],
    emailAddressIsOptedOut: json["emailAddressIsOptedOut"],
    phoneNumberIsOptedOut: json["phoneNumberIsOptedOut"],
    defaultTeamId: json["defaultTeamId"],
    defaultTeamName: json["defaultTeamName"],
    portalsIds: List<dynamic>.from(json["portalsIds"].map((x) => x)),
    portalsNames: PortalsNames.fromJson(json["portalsNames"]),
    portalRolesIds: List<dynamic>.from(json["portalRolesIds"].map((x) => x)),
    portalRolesNames: PortalsNames.fromJson(json["portalRolesNames"]),
    contactId: json["contactId"],
    contactName: json["contactName"],
    avatarId: json["avatarId"],
    avatarName: json["avatarName"],
    createdById: json["createdById"],
    createdByName: json["createdByName"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "deleted": deleted,
    "userName": userName,
    "type": type,
    "salutationName": salutationName,
    "firstName": firstName,
    "lastName": lastName,
    "isActive": isActive,
    "title": title,
    "emailAddress": emailAddress,
    "phoneNumber": phoneNumber,
    "createdAt": createdAt.toIso8601String(),
    "modifiedAt": modifiedAt.toIso8601String(),
    "empid": empid,
    "region": region,
    "outlet": outlet,
    "mobileNumber": mobileNumber,
    "userGroup": userGroup,
    "designation": designation,
    "outletHeadName": outletHeadName,
    "devicetoken": devicetoken,
    "channel": channel,
    "middleName": middleName,
    "emailAddressIsOptedOut": emailAddressIsOptedOut,
    "phoneNumberIsOptedOut": phoneNumberIsOptedOut,
    "defaultTeamId": defaultTeamId,
    "defaultTeamName": defaultTeamName,
    "portalsIds": List<dynamic>.from(portalsIds.map((x) => x)),
    "portalsNames": portalsNames.toJson(),
    "portalRolesIds": List<dynamic>.from(portalRolesIds.map((x) => x)),
    "portalRolesNames": portalRolesNames.toJson(),
    "contactId": contactId,
    "contactName": contactName,
    "avatarId": avatarId,
    "avatarName": avatarName,
    "createdById": createdById,
    "createdByName": createdByName,
  };
}