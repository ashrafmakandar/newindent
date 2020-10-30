class ListElement {
  ListElement({
    this.id,
    this.name,
    this.deleted,
    this.isAdmin,
    this.userName,
    this.type,
    this.salutationName,
    this.firstName,
    this.lastName,
    this.isActive,
    this.isPortalUser,
    this.isSuperAdmin,
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
  bool isAdmin;
  String userName;
  String type;
  String salutationName;
  String firstName;
  String lastName;
  bool isActive;
  bool isPortalUser;
  bool isSuperAdmin;
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
  dynamic contactId;
  dynamic contactName;
  dynamic avatarId;
  dynamic avatarName;
  String createdById;
  String createdByName;

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
    id: json["id"],
    name: json["name"],
    deleted: json["deleted"],
    isAdmin: json["isAdmin"],
    userName: json["userName"],
    type: json["type"],
    salutationName: json["salutationName"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    isActive: json["isActive"],
    isPortalUser: json["isPortalUser"],
    isSuperAdmin: json["isSuperAdmin"],
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
    "isAdmin": isAdmin,
    "userName": userName,
    "type": type,
    "salutationName": salutationName,
    "firstName": firstName,
    "lastName": lastName,
    "isActive": isActive,
    "isPortalUser": isPortalUser,
    "isSuperAdmin": isSuperAdmin,
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
    "contactId": contactId,
    "contactName": contactName,
    "avatarId": avatarId,
    "avatarName": avatarName,
    "createdById": createdById,
    "createdByName": createdByName,
  };
}