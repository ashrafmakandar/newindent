
class ListElement {
  ListElement({
    this.id,
    this.name,
    this.deleted,
    this.description,
    this.createdAt,
    this.modifiedAt,
    this.indentStatus,
    this.approvalAuthority,
    this.paymentMode,
    this.outletHeadSrGm,
    this.outletHeadGmRemarks,
    this.vPApproval,
    this.cEoApproval,
    this.mobileNumber,
    this.refNo,
    this.employeeId,
    this.stage,
    this.region,
    this.outlet,
    this.productCategory,
    this.sApcostcenter,
    this.cEoRemarks,
    this.amount,
    this.cFoApproval,
    this.cFoApprovalDate,
    this.cFoApprovalRemarks,
    this.accountsApproval,
    this.accountApprovalDate,
    this.accountsApprovalRemarks,
    this.cEoApprovedDate,
    this.outletHeadApprovedDate,
    this.purchaseOrderDate,
    this.vPApprovedDate,
    this.vPRemarks,
    this.detailsOfRequirment,
    this.paymentType,
    this.voucherCashStatus,
    this.test,
    this.regNumber,
    this.channel,
    this.amountCurrency,
    this.createdById,
    this.createdByName,
    this.modifiedById,
    this.modifiedByName,
    this.assignedUserId,
    this.assignedUserName,
    this.amountConverted,
  });

  String id;
  String name;
  bool deleted;
  dynamic description;
  DateTime createdAt;
  DateTime modifiedAt;
  IndentStatus indentStatus;
  ApprovalAuthority approvalAuthority;
  PaymentMode paymentMode;
  CEoApproval outletHeadSrGm;
  dynamic outletHeadGmRemarks;
  CEoApproval vPApproval;
  CEoApproval cEoApproval;
  String mobileNumber;
  String refNo;
  String employeeId;
  Stage stage;
  Region region;
  Outlet outlet;
  String productCategory;
  String sApcostcenter;
  String cEoRemarks;
  double amount;
  CEoApproval cFoApproval;
  DateTime cFoApprovalDate;
  String cFoApprovalRemarks;
  String accountsApproval;
  DateTime accountApprovalDate;
  dynamic accountsApprovalRemarks;
  DateTime cEoApprovedDate;
  DateTime outletHeadApprovedDate;
  DateTime purchaseOrderDate;
  DateTime vPApprovedDate;
  String vPRemarks;
  String detailsOfRequirment;
  PaymentType paymentType;
  String voucherCashStatus;
  dynamic test;
  String regNumber;
  Channel channel;
  AmountCurrency amountCurrency;
  CreatedById createdById;
  CreatedByName createdByName;
  String modifiedById;
  ModifiedByName modifiedByName;
  String assignedUserId;
  String assignedUserName;
  double amountConverted;

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
    id: json["id"],
    name: json["name"],
    deleted: json["deleted"],
    description: json["description"],
    createdAt: DateTime.parse(json["createdAt"]),
    modifiedAt: DateTime.parse(json["modifiedAt"]),
    indentStatus: indentStatusValues.map[json["indentStatus"]],
    approvalAuthority: approvalAuthorityValues.map[json["approvalAuthority"]],
    paymentMode: paymentModeValues.map[json["paymentMode"]],
    outletHeadSrGm: cEoApprovalValues.map[json["outletHeadSrGM"]],
    outletHeadGmRemarks: json["outletHeadGMRemarks"],
    vPApproval: cEoApprovalValues.map[json["vPApproval"]],
    cEoApproval: cEoApprovalValues.map[json["cEOApproval"]],
    mobileNumber: json["mobileNumber"] == null ? null : json["mobileNumber"],
    refNo: json["refNo"],
    employeeId: json["employeeId"],
    stage: stageValues.map[json["stage"]],
    region: regionValues.map[json["region"]],
    outlet: outletValues.map[json["outlet"]],
    productCategory: json["productCategory"],
    sApcostcenter: json["sAPCOSTCENTER"],
    cEoRemarks: json["cEORemarks"] == null ? null : json["cEORemarks"],
    amount: json["amount"].toDouble(),
    cFoApproval: cEoApprovalValues.map[json["cFOApproval"]],
    cFoApprovalDate: DateTime.parse(json["cFOApprovalDate"]),
    cFoApprovalRemarks: json["cFOApprovalRemarks"] == null ? null : json["cFOApprovalRemarks"],
    accountsApproval: json["accountsApproval"],
    accountApprovalDate: DateTime.parse(json["accountApprovalDate"]),
    accountsApprovalRemarks: json["accountsApprovalRemarks"],
    cEoApprovedDate: DateTime.parse(json["cEOApprovedDate"]),
    outletHeadApprovedDate: DateTime.parse(json["outletHeadApprovedDate"]),
    purchaseOrderDate: DateTime.parse(json["purchaseOrderDate"]),
    vPApprovedDate: DateTime.parse(json["vPApprovedDate"]),
    vPRemarks: json["vPRemarks"] == null ? null : json["vPRemarks"],
    detailsOfRequirment: json["detailsOfRequirment"],
    paymentType: paymentTypeValues.map[json["paymentType"]],
    voucherCashStatus: json["voucherCashStatus"],
    test: json["test"],
    regNumber: json["regNumber"] == null ? null : json["regNumber"],
    channel: channelValues.map[json["channel"]],
    amountCurrency: amountCurrencyValues.map[json["amountCurrency"]],
    createdById: createdByIdValues.map[json["createdById"]],
    createdByName: createdByNameValues.map[json["createdByName"]],
    modifiedById: json["modifiedById"] == null ? null : json["modifiedById"],
    modifiedByName: json["modifiedByName"] == null ? null : modifiedByNameValues.map[json["modifiedByName"]],
    assignedUserId: json["assignedUserId"],
    assignedUserName: json["assignedUserName"],
    amountConverted: json["amountConverted"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "deleted": deleted,
    "description": description,
    "createdAt": createdAt.toIso8601String(),
    "modifiedAt": modifiedAt.toIso8601String(),
    "indentStatus": indentStatusValues.reverse[indentStatus],
    "approvalAuthority": approvalAuthorityValues.reverse[approvalAuthority],
    "paymentMode": paymentModeValues.reverse[paymentMode],
    "outletHeadSrGM": cEoApprovalValues.reverse[outletHeadSrGm],
    "outletHeadGMRemarks": outletHeadGmRemarks,
    "vPApproval": cEoApprovalValues.reverse[vPApproval],
    "cEOApproval": cEoApprovalValues.reverse[cEoApproval],
    "mobileNumber": mobileNumber == null ? null : mobileNumber,
    "refNo": refNo,
    "employeeId": employeeId,
    "stage": stageValues.reverse[stage],
    "region": regionValues.reverse[region],
    "outlet": outletValues.reverse[outlet],
    "productCategory": productCategory,
    "sAPCOSTCENTER": sApcostcenter,
    "cEORemarks": cEoRemarks == null ? null : cEoRemarks,
    "amount": amount,
    "cFOApproval": cEoApprovalValues.reverse[cFoApproval],
    "cFOApprovalDate": cFoApprovalDate.toIso8601String(),
    "cFOApprovalRemarks": cFoApprovalRemarks == null ? null : cFoApprovalRemarks,
    "accountsApproval": accountsApproval,
    "accountApprovalDate": accountApprovalDate.toIso8601String(),
    "accountsApprovalRemarks": accountsApprovalRemarks,
    "cEOApprovedDate": cEoApprovedDate.toIso8601String(),
    "outletHeadApprovedDate": outletHeadApprovedDate.toIso8601String(),
    "purchaseOrderDate": purchaseOrderDate.toIso8601String(),
    "vPApprovedDate": vPApprovedDate.toIso8601String(),
    "vPRemarks": vPRemarks == null ? null : vPRemarks,
    "detailsOfRequirment": detailsOfRequirment,
    "paymentType": paymentTypeValues.reverse[paymentType],
    "voucherCashStatus": voucherCashStatus,
    "test": test,
    "regNumber": regNumber == null ? null : regNumber,
    "channel": channelValues.reverse[channel],
    "amountCurrency": amountCurrencyValues.reverse[amountCurrency],
    "createdById": createdByIdValues.reverse[createdById],
    "createdByName": createdByNameValues.reverse[createdByName],
    "modifiedById": modifiedById == null ? null : modifiedById,
    "modifiedByName": modifiedByName == null ? null : modifiedByNameValues.reverse[modifiedByName],
    "assignedUserId": assignedUserId,
    "assignedUserName": assignedUserName,
    "amountConverted": amountConverted,
  };
}

enum AmountCurrency { INR }

final amountCurrencyValues = EnumValues({
  "INR": AmountCurrency.INR
});

enum ApprovalAuthority { OUTLET_HEAD, ALL, OUTLET_VP, VP }

final approvalAuthorityValues = EnumValues({
  "ALL": ApprovalAuthority.ALL,
  "Outlet Head": ApprovalAuthority.OUTLET_HEAD,
  "Outlet/VP": ApprovalAuthority.OUTLET_VP,
  "VP": ApprovalAuthority.VP
});

enum CEoApproval { APPROVED, EMPTY, REJECTED }

final cEoApprovalValues = EnumValues({
  "Approved": CEoApproval.APPROVED,
  "": CEoApproval.EMPTY,
  "Rejected": CEoApproval.REJECTED
});

enum Channel { WORKSHOP, EMPTY }

final channelValues = EnumValues({
  "": Channel.EMPTY,
  "Workshop": Channel.WORKSHOP
});

enum CreatedById { SYSTEM }

final createdByIdValues = EnumValues({
  "system": CreatedById.SYSTEM
});

enum CreatedByName { SYSTEM }

final createdByNameValues = EnumValues({
  "System": CreatedByName.SYSTEM
});

enum IndentStatus { OK_FOR_PROCESSING, REJECTED }

final indentStatusValues = EnumValues({
  "Ok for Processing": IndentStatus.OK_FOR_PROCESSING,
  "Rejected": IndentStatus.REJECTED
});

enum ModifiedByName { NAGENDRA_PRASAD, YADHURAJ_M }

final modifiedByNameValues = EnumValues({
  "Nagendra Prasad": ModifiedByName.NAGENDRA_PRASAD,
  "Yadhuraj M": ModifiedByName.YADHURAJ_M
});

enum Outlet { MYR, HOR, MGD, KMG, KNK, BGR, NCH, BRK, RRN, NDN, KRP, BNS, NZP, CPT }

final outletValues = EnumValues({
  "BGR": Outlet.BGR,
  "BNS": Outlet.BNS,
  "BRK": Outlet.BRK,
  "CPT": Outlet.CPT,
  "HOR": Outlet.HOR,
  "KMG": Outlet.KMG,
  "KNK": Outlet.KNK,
  "KRP": Outlet.KRP,
  "MGD": Outlet.MGD,
  "MYR": Outlet.MYR,
  "NCH": Outlet.NCH,
  "NDN": Outlet.NDN,
  "NZP": Outlet.NZP,
  "RRN": Outlet.RRN
});

enum PaymentMode { VOUCHER, FUND_TRANSFER, ADVANCE_SETTLEMENT }

final paymentModeValues = EnumValues({
  "Advance Settlement": PaymentMode.ADVANCE_SETTLEMENT,
  "Fund Transfer": PaymentMode.FUND_TRANSFER,
  "Voucher": PaymentMode.VOUCHER
});

enum PaymentType { VOUCHER, CASH }

final paymentTypeValues = EnumValues({
  "CASH": PaymentType.CASH,
  "VOUCHER": PaymentType.VOUCHER
});

enum Region { BLR, HYD, BLR_NEXA }

final regionValues = EnumValues({
  "BLR": Region.BLR,
  "BLR-NEXA": Region.BLR_NEXA,
  "HYD": Region.HYD
});

enum Stage { PROSPECTING }

final stageValues = EnumValues({
  "Prospecting": Stage.PROSPECTING
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
