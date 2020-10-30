class Document {
  Document({
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
    this.itemList,
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
    this.contactsIds,
    this.contactsNames,
    this.contactsColumns,
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
    this.teamsIds,
    this.teamsNames,
    this.eIndentId,
    this.eIndentName,
    this.requiredDocumentsIds,
    this.requiredDocumentsNames,
    this.isFollowed,
    this.requiredDocumentsTypes,
  });

  String id;
  String name;
  bool deleted;
  double amount;
  double amountWeightedConverted;
  String stage;
  String lastStage;
  int probability;
  String leadSource;
  dynamic closeDate;
  dynamic description;
  DateTime createdAt;
  DateTime modifiedAt;
  List<dynamic> itemList;
  String outletHeadSrGm;
  String vPApproval;
  String cEoApproval;
  String employeeId;
  String region;
  String outlet;
  String productCategory;
  String detailsOfRequirment;
  String refNo;
  dynamic cEoRemarks;
  dynamic vPRemarks;
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
  String approvalCategory;
  String indentStatus;
  String paymentMode;
  bool generateEIndent;
  String sApcostcenter;
  String aGmSpareParts;
  dynamic aGmSparePartsRemarks;
  DateTime aGmApprovalDate;
  String regNumber;
  String channel;
  String amountCurrency;
  double amountConverted;
  dynamic accountId;
  dynamic accountName;
  List<dynamic> contactsIds;
  Contacts contactsNames;
  Contacts contactsColumns;
  dynamic contactId;
  dynamic contactName;
  dynamic campaignId;
  dynamic campaignName;
  String originalLeadId;
  String originalLeadName;
  String createdById;
  String createdByName;
  String modifiedById;
  String modifiedByName;
  String assignedUserId;
  String assignedUserName;
  List<String> teamsIds;
  TeamsNames teamsNames;
  dynamic eIndentId;
  dynamic eIndentName;
  List<String> requiredDocumentsIds;
  RequiredDocuments requiredDocumentsNames;
  bool isFollowed;
  RequiredDocuments requiredDocumentsTypes;

  factory Document.fromJson(Map<String, dynamic> json) => Document(
        id: json["id"],
        name: json["name"],
        deleted: json["deleted"],
        amount: json["amount"] + 0.0,
        amountWeightedConverted: json["amountWeightedConverted"] + 0.0,
        stage: json["stage"],
        lastStage: json["lastStage"],
        probability: json["probability"],
        leadSource: json["leadSource"],
        closeDate: json["closeDate"],
        description: json["description"],
        createdAt: DateTime.parse(json["createdAt"]),
        modifiedAt: DateTime.parse(json["modifiedAt"]),
        itemList: List<dynamic>.from(json["itemList"].map((x) => x)),
        outletHeadSrGm: json["outletHeadSrGM"],
        vPApproval: json["vPApproval"],
        cEoApproval: json["cEOApproval"],
        employeeId: json["employeeId"],
        region: json["region"],
        outlet: json["outlet"],
        productCategory: json["productCategory"],
        detailsOfRequirment: json["detailsOfRequirment"],
        refNo: json["refNo"],
        cEoRemarks: json["cEORemarks"],
        vPRemarks: json["vPRemarks"],
        outletHeadGmRemarks: json["outletHeadGMRemarks"],
        cEoApprovedDate: DateTime.parse(json["cEOApprovedDate"]),
        vPApprovedDate: DateTime.parse(json["vPApprovedDate"]),
        outletHeadApprovedDate: DateTime.parse(json["outletHeadApprovedDate"]),
        approvalEscalateToVp: json["approvalEscalateToVP"],
        approvalEscalateToCeo: json["approvalEscalateToCEO"],
        generateIndent: json["generateIndent"],
        purchaseOrderDate: json["purchaseOrderDate"],
        mobileNumber: json["mobileNumber"],
        printIndent: json["printIndent"],
        approvalCategory: json["approvalCategory"],
        indentStatus: json["indentStatus"],
        paymentMode: json["paymentMode"],
        generateEIndent: json["generateEIndent"],
        sApcostcenter: json["sAPCOSTCENTER"],
        aGmSpareParts: json["aGMSpareParts"],
        aGmSparePartsRemarks: json["aGMSparePartsRemarks"],
        aGmApprovalDate: DateTime.parse(json["aGMApprovalDate"]),
        regNumber: json["regNumber"],
        channel: json["channel"],
        amountCurrency: json["amountCurrency"],
        amountConverted: json["amountConverted"] + 0.0,
        accountId: json["accountId"],
        accountName: json["accountName"],
        contactsIds: List<dynamic>.from(json["contactsIds"].map((x) => x)),
        contactsNames: Contacts.fromJson(json["contactsNames"]),
        contactsColumns: Contacts.fromJson(json["contactsColumns"]),
        contactId: json["contactId"],
        contactName: json["contactName"],
        campaignId: json["campaignId"],
        campaignName: json["campaignName"],
        originalLeadId: json["originalLeadId"],
        originalLeadName: json["originalLeadName"],
        createdById: json["createdById"],
        createdByName: json["createdByName"],
        modifiedById: json["modifiedById"],
        modifiedByName: json["modifiedByName"],
        assignedUserId: json["assignedUserId"],
        assignedUserName: json["assignedUserName"],
        teamsIds: List<String>.from(json["teamsIds"].map((x) => x)),
        teamsNames: TeamsNames.fromJson(json["teamsNames"]),
        eIndentId: json["eINDENTId"],
        eIndentName: json["eINDENTName"],
        requiredDocumentsIds:
            List<String>.from(json["requiredDocumentsIds"].map((x) => x)),
        requiredDocumentsNames:
            RequiredDocuments.fromJson(json["requiredDocumentsNames"]),
        isFollowed: json["isFollowed"],
        requiredDocumentsTypes:
            RequiredDocuments.fromJson(json["requiredDocumentsTypes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "deleted": deleted,
        "amount": amount,
        "amountWeightedConverted": amountWeightedConverted,
        "stage": stage,
        "lastStage": lastStage,
        "probability": probability,
        "leadSource": leadSource,
        "closeDate": closeDate,
        "description": description,
        "createdAt": createdAt.toIso8601String(),
        "modifiedAt": modifiedAt.toIso8601String(),
        "itemList": List<dynamic>.from(itemList.map((x) => x)),
        "outletHeadSrGM": outletHeadSrGm,
        "vPApproval": vPApproval,
        "cEOApproval": cEoApproval,
        "employeeId": employeeId,
        "region": region,
        "outlet": outlet,
        "productCategory": productCategory,
        "detailsOfRequirment": detailsOfRequirment,
        "refNo": refNo,
        "cEORemarks": cEoRemarks,
        "vPRemarks": vPRemarks,
        "outletHeadGMRemarks": outletHeadGmRemarks,
        "cEOApprovedDate": cEoApprovedDate.toIso8601String(),
        "vPApprovedDate": vPApprovedDate.toIso8601String(),
        "outletHeadApprovedDate": outletHeadApprovedDate.toIso8601String(),
        "approvalEscalateToVP": approvalEscalateToVp,
        "approvalEscalateToCEO": approvalEscalateToCeo,
        "generateIndent": generateIndent,
        "purchaseOrderDate": purchaseOrderDate,
        "mobileNumber": mobileNumber,
        "printIndent": printIndent,
        "approvalCategory": approvalCategory,
        "indentStatus": indentStatus,
        "paymentMode": paymentMode,
        "generateEIndent": generateEIndent,
        "sAPCOSTCENTER": sApcostcenter,
        "aGMSpareParts": aGmSpareParts,
        "aGMSparePartsRemarks": aGmSparePartsRemarks,
        "aGMApprovalDate": aGmApprovalDate.toIso8601String(),
        "regNumber": regNumber,
        "channel": channel,
        "amountCurrency": amountCurrency,
        "amountConverted": amountConverted,
        "accountId": accountId,
        "accountName": accountName,
        "contactsIds": List<dynamic>.from(contactsIds.map((x) => x)),
        "contactsNames": contactsNames.toJson(),
        "contactsColumns": contactsColumns.toJson(),
        "contactId": contactId,
        "contactName": contactName,
        "campaignId": campaignId,
        "campaignName": campaignName,
        "originalLeadId": originalLeadId,
        "originalLeadName": originalLeadName,
        "createdById": createdById,
        "createdByName": createdByName,
        "modifiedById": modifiedById,
        "modifiedByName": modifiedByName,
        "assignedUserId": assignedUserId,
        "assignedUserName": assignedUserName,
        "teamsIds": List<dynamic>.from(teamsIds.map((x) => x)),
        "teamsNames": teamsNames.toJson(),
        "eINDENTId": eIndentId,
        "eINDENTName": eIndentName,
        "requiredDocumentsIds":
            List<dynamic>.from(requiredDocumentsIds.map((x) => x)),
        "requiredDocumentsNames": requiredDocumentsNames.toJson(),
        "isFollowed": isFollowed,
        "requiredDocumentsTypes": requiredDocumentsTypes.toJson(),
      };
}

class Contacts {
  Contacts();

  factory Contacts.fromJson(Map<String, dynamic> json) => Contacts();

  Map<String, dynamic> toJson() => {};
}

class RequiredDocuments {
  RequiredDocuments({
    this.the5F02Cc43745D57D2C,
    this.the5F02Cc4377831428E,
  });

  String the5F02Cc43745D57D2C;
  String the5F02Cc4377831428E;

  factory RequiredDocuments.fromJson(Map<String, dynamic> json){
   return  RequiredDocuments(
      the5F02Cc43745D57D2C: json["5f02cc43745d57d2c"],
      the5F02Cc4377831428E: json["5f02cc4377831428e"],
    );
  }


  Map<String, dynamic> toJson() => {
        "5f02cc43745d57d2c": the5F02Cc43745D57D2C,
        "5f02cc4377831428e": the5F02Cc4377831428E,
      };
}



class TeamsNames {
  TeamsNames({
    this.the5Eaff42C17856904A,
  });

  String the5Eaff42C17856904A;

  factory TeamsNames.fromJson(Map<String, dynamic> json) => TeamsNames(
        the5Eaff42C17856904A: json["5eaff42c17856904a"],
      );

  Map<String, dynamic> toJson() => {
        "5eaff42c17856904a": the5Eaff42C17856904A,
      };
}
