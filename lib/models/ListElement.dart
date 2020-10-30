class ListElement {
  ListElement({
    this.id,
    this.name,
    this.deleted,
    this.amount,
    this.amountWeightedConverted,
    this.stage,
    this.lastStage,
    this.probability,
    this.leadSource,
    this.closeDate,
    this.description,
    this.createdAt,
    this.modifiedAt,
    this.outletHeadSrGm,
    this.vPApproval,
    this.cEoApproval,
    this.employeeId,
    this.region,
    this.outlet,
    this.productCategory,
    this.detailsOfRequirment,
    this.refNo,
    this.cEoRemarks,
    this.vPRemarks,
    this.outletHeadGmRemarks,
    this.cEoApprovedDate,
    this.vPApprovedDate,
    this.outletHeadApprovedDate,
    this.approvalEscalateToVp,
    this.approvalEscalateToCeo,
    this.generateIndent,
    this.purchaseOrderDate,
    this.mobileNumber,
    this.printIndent,
    this.approvalCategory,
    this.indentStatus,
    this.paymentMode,
    this.generateEIndent,
    this.sApcostcenter,
    this.aGmSpareParts,
    this.aGmSparePartsRemarks,
    this.aGmApprovalDate,
    this.regNumber,
    this.channel,
    this.amountCurrency,
    this.amountConverted,
    this.accountId,
    this.accountName,
    this.contactId,
    this.contactName,
    this.campaignId,
    this.campaignName,
    this.originalLeadId,
    this.originalLeadName,
    this.createdById,
    this.createdByName,
    this.modifiedById,
    this.modifiedByName,
    this.assignedUserId,
    this.assignedUserName,
    this.eIndentId,
    this.eIndentName,
  });

  String id;
  NameEnum name;
  bool deleted;
  double amount;
  double amountWeightedConverted;
  Stage stage;
  Stage lastStage;
  int probability;
  String leadSource;
  dynamic closeDate;
  dynamic description;
  DateTime createdAt;
  DateTime modifiedAt;
  AGmSpareParts outletHeadSrGm;
  AGmSpareParts vPApproval;
  AGmSpareParts cEoApproval;
  String employeeId;
  Region region;
  Outlet outlet;
  String productCategory;
  String detailsOfRequirment;
  String refNo;
  String cEoRemarks;
  String vPRemarks;
  String outletHeadGmRemarks;
  DateTime cEoApprovedDate;
  DateTime vPApprovedDate;
  DateTime outletHeadApprovedDate;
  bool approvalEscalateToVp;
  bool approvalEscalateToCeo;
  bool generateIndent;
  dynamic purchaseOrderDate;
  String mobileNumber;
  dynamic printIndent;
  ApprovalCategory approvalCategory;
  IndentStatus indentStatus;
  PaymentMode paymentMode;
  bool generateEIndent;
  SApcostcenter sApcostcenter;
  AGmSpareParts aGmSpareParts;
  String aGmSparePartsRemarks;
  DateTime aGmApprovalDate;
  String regNumber;
  Channel channel;
  AmountCurrency amountCurrency;
  double amountConverted;
  dynamic accountId;
  dynamic accountName;
  dynamic contactId;
  dynamic contactName;
  dynamic campaignId;
  dynamic campaignName;
  String originalLeadId;
  Name originalLeadName;
  Id createdById;
  Name createdByName;
  String modifiedById;
  Name modifiedByName;
  Id assignedUserId;
  Name assignedUserName;
  dynamic eIndentId;
  dynamic eIndentName;

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
        id: json["id"],
        name: nameEnumValues.map[json["name"]],
        deleted: json["deleted"],
        amount: json["amount"].toDouble(),
        amountWeightedConverted: json["amountWeightedConverted"].toDouble(),
        stage: stageValues.map[json["stage"]],
        lastStage: stageValues.map[json["lastStage"]],
        probability: json["probability"],
        leadSource: json["leadSource"],
        closeDate: json["closeDate"],
        description: json["description"],
        createdAt: DateTime.parse(json["createdAt"]),
        modifiedAt: DateTime.parse(json["modifiedAt"]),
        outletHeadSrGm: aGmSparePartsValues.map[json["outletHeadSrGM"]],
        vPApproval: aGmSparePartsValues.map[json["vPApproval"]],
        cEoApproval: aGmSparePartsValues.map[json["cEOApproval"]],
        employeeId: json["employeeId"],
        region: regionValues.map[json["region"]],
        outlet: outletValues.map[json["outlet"]],
        productCategory: json["productCategory"],
        detailsOfRequirment: json["detailsOfRequirment"],
        refNo: json["refNo"],
        cEoRemarks: json["cEORemarks"] == null ? null : json["cEORemarks"],
        vPRemarks: json["vPRemarks"] == null ? null : json["vPRemarks"],
        outletHeadGmRemarks: json["outletHeadGMRemarks"] == null
            ? null
            : json["outletHeadGMRemarks"],
        cEoApprovedDate: DateTime.parse(json["cEOApprovedDate"]),
        vPApprovedDate: DateTime.parse(json["vPApprovedDate"]),
        outletHeadApprovedDate: DateTime.parse(json["outletHeadApprovedDate"]),
        approvalEscalateToVp: json["approvalEscalateToVP"],
        approvalEscalateToCeo: json["approvalEscalateToCEO"],
        generateIndent: json["generateIndent"],
        purchaseOrderDate: json["purchaseOrderDate"],
        mobileNumber: json["mobileNumber"],
        printIndent: json["printIndent"],
        approvalCategory: approvalCategoryValues.map[json["approvalCategory"]],
        indentStatus: indentStatusValues.map[json["indentStatus"]],
        paymentMode: paymentModeValues.map[json["paymentMode"]],
        generateEIndent: json["generateEIndent"],
        sApcostcenter: sApcostcenterValues.map[json["sAPCOSTCENTER"]],
        aGmSpareParts: aGmSparePartsValues.map[json["aGMSpareParts"]],
        aGmSparePartsRemarks: json["aGMSparePartsRemarks"] == null
            ? null
            : json["aGMSparePartsRemarks"],
        aGmApprovalDate: DateTime.parse(json["aGMApprovalDate"]),
        regNumber: json["regNumber"] == null ? null : json["regNumber"],
        channel: channelValues.map[json["channel"]],
        amountCurrency: amountCurrencyValues.map[json["amountCurrency"]],
        amountConverted: json["amountConverted"].toDouble(),
        accountId: json["accountId"],
        accountName: json["accountName"],
        contactId: json["contactId"],
        contactName: json["contactName"],
        campaignId: json["campaignId"],
        campaignName: json["campaignName"],
        originalLeadId:
            json["originalLeadId"] == null ? null : json["originalLeadId"],
        originalLeadName: json["originalLeadName"] == null
            ? null
            : nameValues.map[json["originalLeadName"]],
        createdById: idValues.map[json["createdById"]],
        createdByName: nameValues.map[json["createdByName"]],
        modifiedById:
            json["modifiedById"] == null ? null : json["modifiedById"],
        modifiedByName: json["modifiedByName"] == null
            ? null
            : nameValues.map[json["modifiedByName"]],
        assignedUserId: idValues.map[json["assignedUserId"]],
        assignedUserName: nameValues.map[json["assignedUserName"]],
        eIndentId: json["eINDENTId"],
        eIndentName: json["eINDENTName"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameEnumValues.reverse[name],
        "deleted": deleted,
        "amount": amount,
        "amountWeightedConverted": amountWeightedConverted,
        "stage": stageValues.reverse[stage],
        "lastStage": stageValues.reverse[lastStage],
        "probability": probability,
        "leadSource": leadSource,
        "closeDate": closeDate,
        "description": description,
        "createdAt": createdAt.toIso8601String(),
        "modifiedAt": modifiedAt.toIso8601String(),
        "outletHeadSrGM": aGmSparePartsValues.reverse[outletHeadSrGm],
        "vPApproval": aGmSparePartsValues.reverse[vPApproval],
        "cEOApproval": aGmSparePartsValues.reverse[cEoApproval],
        "employeeId": employeeId,
        "region": regionValues.reverse[region],
        "outlet": outletValues.reverse[outlet],
        "productCategory": productCategory,
        "detailsOfRequirment": detailsOfRequirment,
        "refNo": refNo,
        "cEORemarks": cEoRemarks == null ? null : cEoRemarks,
        "vPRemarks": vPRemarks == null ? null : vPRemarks,
        "outletHeadGMRemarks":
            outletHeadGmRemarks == null ? null : outletHeadGmRemarks,
        "cEOApprovedDate": cEoApprovedDate.toIso8601String(),
        "vPApprovedDate": vPApprovedDate.toIso8601String(),
        "outletHeadApprovedDate": outletHeadApprovedDate.toIso8601String(),
        "approvalEscalateToVP": approvalEscalateToVp,
        "approvalEscalateToCEO": approvalEscalateToCeo,
        "generateIndent": generateIndent,
        "purchaseOrderDate": purchaseOrderDate,
        "mobileNumber": mobileNumber,
        "printIndent": printIndent,
        "approvalCategory": approvalCategoryValues.reverse[approvalCategory],
        "indentStatus": indentStatusValues.reverse[indentStatus],
        "paymentMode": paymentModeValues.reverse[paymentMode],
        "generateEIndent": generateEIndent,
        "sAPCOSTCENTER": sApcostcenterValues.reverse[sApcostcenter],
        "aGMSpareParts": aGmSparePartsValues.reverse[aGmSpareParts],
        "aGMSparePartsRemarks":
            aGmSparePartsRemarks == null ? null : aGmSparePartsRemarks,
        "aGMApprovalDate": aGmApprovalDate.toIso8601String(),
        "regNumber": regNumber == null ? null : regNumber,
        "channel": channelValues.reverse[channel],
        "amountCurrency": amountCurrencyValues.reverse[amountCurrency],
        "amountConverted": amountConverted,
        "accountId": accountId,
        "accountName": accountName,
        "contactId": contactId,
        "contactName": contactName,
        "campaignId": campaignId,
        "campaignName": campaignName,
        "originalLeadId": originalLeadId == null ? null : originalLeadId,
        "originalLeadName": originalLeadName == null
            ? null
            : nameValues.reverse[originalLeadName],
        "createdById": idValues.reverse[createdById],
        "createdByName": nameValues.reverse[createdByName],
        "modifiedById": modifiedById == null ? null : modifiedById,
        "modifiedByName":
            modifiedByName == null ? null : nameValues.reverse[modifiedByName],
        "assignedUserId": idValues.reverse[assignedUserId],
        "assignedUserName": nameValues.reverse[assignedUserName],
        "eINDENTId": eIndentId,
        "eINDENTName": eIndentName,
      };
}

enum AGmSpareParts { APPROVED, REJECTED, EMPTY }

final aGmSparePartsValues = EnumValues({
  "Approved": AGmSpareParts.APPROVED,
  "": AGmSpareParts.EMPTY,
  "Rejected": AGmSpareParts.REJECTED
});

enum AmountCurrency { INR }

final amountCurrencyValues = EnumValues({"INR": AmountCurrency.INR});

enum ApprovalCategory { OUTLET_HEAD, ALL, OUTLET_VP, OUTLET_SPG_VP_CEO, VP }

final approvalCategoryValues = EnumValues({
  "ALL": ApprovalCategory.ALL,
  "Outlet Head": ApprovalCategory.OUTLET_HEAD,
  "Outlet/SPG/VP/CEO": ApprovalCategory.OUTLET_SPG_VP_CEO,
  "Outlet/VP": ApprovalCategory.OUTLET_VP,
  "VP": ApprovalCategory.VP
});

enum Id {
  THE_5_EB655_ACCCD7_C9_DA3,
  THE_5_EDF17_F9_BF186_D3_B3,
  THE_5_EB656_A81_D7_F7_D5_BB,
  THE_5_EB663_C2_EA2_CEDDCF
}

final idValues = EnumValues({
  "5eb655acccd7c9da3": Id.THE_5_EB655_ACCCD7_C9_DA3,
  "5eb656a81d7f7d5bb": Id.THE_5_EB656_A81_D7_F7_D5_BB,
  "5eb663c2ea2ceddcf": Id.THE_5_EB663_C2_EA2_CEDDCF,
  "5edf17f9bf186d3b3": Id.THE_5_EDF17_F9_BF186_D3_B3
});

enum Name {
  RAGHAVENDRA_WM,
  MOHAMMED_VASEEM_MYR,
  VITTAL_SHETTY_BSM,
  SURESH_R_BHAT_GM,
  SHALIN_VP,
  SUBHASHCHANDRA_SHETTY_GM,
  VENKAT_CEO,
  YADHURAJ_M
}

final nameValues = EnumValues({
  "Mohammed Vaseem MYR": Name.MOHAMMED_VASEEM_MYR,
  "Raghavendra WM": Name.RAGHAVENDRA_WM,
  "Shalin VP": Name.SHALIN_VP,
  "Subhashchandra Shetty GM": Name.SUBHASHCHANDRA_SHETTY_GM,
  "Suresh R Bhat GM": Name.SURESH_R_BHAT_GM,
  "Venkat CEO": Name.VENKAT_CEO,
  "Vittal Shetty BSM": Name.VITTAL_SHETTY_BSM,
  "Yadhuraj M": Name.YADHURAJ_M
});

enum Channel { WORKSHOP }

final channelValues = EnumValues({"Workshop": Channel.WORKSHOP});

enum IndentStatus { APPROVED, REJECTED, PENDING_FROM_OUTLET_HEAD }

final indentStatusValues = EnumValues({
  "Approved": IndentStatus.APPROVED,
  "Pending from Outlet Head": IndentStatus.PENDING_FROM_OUTLET_HEAD,
  "Rejected": IndentStatus.REJECTED
});

enum Stage { PROSPECTING }

final stageValues = EnumValues({"Prospecting": Stage.PROSPECTING});

enum NameEnum { RAGHAVENDRA, MOHAMMED_VASEEM, VITTAL_SHETTY, SURESH_R_BHAT }

final nameEnumValues = EnumValues({
  "Mohammed Vaseem": NameEnum.MOHAMMED_VASEEM,
  "Raghavendra": NameEnum.RAGHAVENDRA,
  "Suresh R Bhat": NameEnum.SURESH_R_BHAT,
  "Vittal Shetty": NameEnum.VITTAL_SHETTY
});

enum Outlet { MYR }

final outletValues = EnumValues({"MYR": Outlet.MYR});

enum PaymentMode {
  VOUCHER,
  PURCHASE_ORDER,
  FUND_TRANSFER,
  ADVANCE_SETTLEMENT,
  CASH_PAYMENT,
  CASH_VOUCHER
}

final paymentModeValues = EnumValues({
  "Advance Settlement": PaymentMode.ADVANCE_SETTLEMENT,
  "Cash Payment": PaymentMode.CASH_PAYMENT,
  "Cash Voucher": PaymentMode.CASH_VOUCHER,
  "Fund Transfer": PaymentMode.FUND_TRANSFER,
  "Purchase Order": PaymentMode.PURCHASE_ORDER,
  "Voucher": PaymentMode.VOUCHER
});

enum Region { BLR }

final regionValues = EnumValues({"BLR": Region.BLR});

enum SApcostcenter { MRWS_SERVICE, MRWS_SPARES, MRWS_BODY_SHOP }

final sApcostcenterValues = EnumValues({
  "MRWS-Body Shop": SApcostcenter.MRWS_BODY_SHOP,
  "MRWS-Service": SApcostcenter.MRWS_SERVICE,
  "MRWS-Spares": SApcostcenter.MRWS_SPARES
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
