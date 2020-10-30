class List {

  String id;
  String name;
  bool deleted;
  double amount;
  double amountWeightedConverted;
  String stage;
  String lastStage;
  int probability;
  String leadSource;
  Null closeDate;
  Null description;
  String createdAt;
  String modifiedAt;
  String outletHeadSrGM;
  String vPApproval;
  String cEOApproval;
  String employeeId;
  String region;
  String outlet;
  String productCategory;
  String detailsOfRequirment;
  String refNo;
  String cEORemarks;
  String vPRemarks;
  String outletHeadGMRemarks;
  String cEOApprovedDate;
  String vPApprovedDate;
  String outletHeadApprovedDate;
  bool approvalEscalateToVP;
  bool approvalEscalateToCEO;
  bool generateIndent;
  Null purchaseOrderDate;
  String mobileNumber;
  Null printIndent;
  String approvalCategory;
  String indentStatus;
  String paymentMode;
  bool generateEIndent;
  String sAPCOSTCENTER;
  String aGMSpareParts;
  String aGMSparePartsRemarks;
  String aGMApprovalDate;
  String regNumber;
  String channel;
  String amountCurrency;
  double amountConverted;
  Null accountId;
  Null accountName;
  Null contactId;
  Null contactName;
  Null campaignId;
  Null campaignName;
  String originalLeadId;
  String originalLeadName;
  String createdById;
  String createdByName;
  String modifiedById;
  String modifiedByName;
  String assignedUserId;
  String assignedUserName;
  Null eINDENTId;
  Null eINDENTName;

  List({this.id,
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
    this.outletHeadSrGM,
    this.vPApproval,
    this.cEOApproval,
    this.employeeId,
    this.region,
    this.outlet,
    this.productCategory,
    this.detailsOfRequirment,
    this.refNo,
    this.cEORemarks,
    this.vPRemarks,
    this.outletHeadGMRemarks,
    this.cEOApprovedDate,
    this.vPApprovedDate,
    this.outletHeadApprovedDate,
    this.approvalEscalateToVP,
    this.approvalEscalateToCEO,
    this.generateIndent,
    this.purchaseOrderDate,
    this.mobileNumber,
    this.printIndent,
    this.approvalCategory,
    this.indentStatus,
    this.paymentMode,
    this.generateEIndent,
    this.sAPCOSTCENTER,
    this.aGMSpareParts,
    this.aGMSparePartsRemarks,
    this.aGMApprovalDate,
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
    this.eINDENTId,
    this.eINDENTName});

  List.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    deleted = json['deleted'];
    amount = json['amount'];
    amountWeightedConverted = json['amountWeightedConverted'];
    stage = json['stage'];
    lastStage = json['lastStage'];
    probability = json['probability'];
    leadSource = json['leadSource'];
    closeDate = json['closeDate'];
    description = json['description'];
    createdAt = json['createdAt'];
    modifiedAt = json['modifiedAt'];
    outletHeadSrGM = json['outletHeadSrGM'];
    vPApproval = json['vPApproval'];
    cEOApproval = json['cEOApproval'];
    employeeId = json['employeeId'];
    region = json['region'];
    outlet = json['outlet'];
    productCategory = json['productCategory'];
    detailsOfRequirment = json['detailsOfRequirment'];
    refNo = json['refNo'];
    cEORemarks = json['cEORemarks'];
    vPRemarks = json['vPRemarks'];
    outletHeadGMRemarks = json['outletHeadGMRemarks'];
    cEOApprovedDate = json['cEOApprovedDate'];
    vPApprovedDate = json['vPApprovedDate'];
    outletHeadApprovedDate = json['outletHeadApprovedDate'];
    approvalEscalateToVP = json['approvalEscalateToVP'];
    approvalEscalateToCEO = json['approvalEscalateToCEO'];
    generateIndent = json['generateIndent'];
    purchaseOrderDate = json['purchaseOrderDate'];
    mobileNumber = json['mobileNumber'];
    printIndent = json['printIndent'];
    approvalCategory = json['approvalCategory'];
    indentStatus = json['indentStatus'];
    paymentMode = json['paymentMode'];
    generateEIndent = json['generateEIndent'];
    sAPCOSTCENTER = json['sAPCOSTCENTER'];
    aGMSpareParts = json['aGMSpareParts'];
    aGMSparePartsRemarks = json['aGMSparePartsRemarks'];
    aGMApprovalDate = json['aGMApprovalDate'];
    regNumber = json['regNumber'];
    channel = json['channel'];
    amountCurrency = json['amountCurrency'];
    amountConverted = json['amountConverted'];
    accountId = json['accountId'];
    accountName = json['accountName'];
    contactId = json['contactId'];
    contactName = json['contactName'];
    campaignId = json['campaignId'];
    campaignName = json['campaignName'];
    originalLeadId = json['originalLeadId'];
    originalLeadName = json['originalLeadName'];
    createdById = json['createdById'];
    createdByName = json['createdByName'];
    modifiedById = json['modifiedById'];
    modifiedByName = json['modifiedByName'];
    assignedUserId = json['assignedUserId'];
    assignedUserName = json['assignedUserName'];
    eINDENTId = json['eINDENTId'];
    eINDENTName = json['eINDENTName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['deleted'] = this.deleted;
    data['amount'] = this.amount;
    data['amountWeightedConverted'] = this.amountWeightedConverted;
    data['stage'] = this.stage;
    data['lastStage'] = this.lastStage;
    data['probability'] = this.probability;
    data['leadSource'] = this.leadSource;
    data['closeDate'] = this.closeDate;
    data['description'] = this.description;
    data['createdAt'] = this.createdAt;
    data['modifiedAt'] = this.modifiedAt;
    data['outletHeadSrGM'] = this.outletHeadSrGM;
    data['vPApproval'] = this.vPApproval;
    data['cEOApproval'] = this.cEOApproval;
    data['employeeId'] = this.employeeId;
    data['region'] = this.region;
    data['outlet'] = this.outlet;
    data['productCategory'] = this.productCategory;
    data['detailsOfRequirment'] = this.detailsOfRequirment;
    data['refNo'] = this.refNo;
    data['cEORemarks'] = this.cEORemarks;
    data['vPRemarks'] = this.vPRemarks;
    data['outletHeadGMRemarks'] = this.outletHeadGMRemarks;
    data['cEOApprovedDate'] = this.cEOApprovedDate;
    data['vPApprovedDate'] = this.vPApprovedDate;
    data['outletHeadApprovedDate'] = this.outletHeadApprovedDate;
    data['approvalEscalateToVP'] = this.approvalEscalateToVP;
    data['approvalEscalateToCEO'] = this.approvalEscalateToCEO;
    data['generateIndent'] = this.generateIndent;
    data['purchaseOrderDate'] = this.purchaseOrderDate;
    data['mobileNumber'] = this.mobileNumber;
    data['printIndent'] = this.printIndent;
    data['approvalCategory'] = this.approvalCategory;
    data['indentStatus'] = this.indentStatus;
    data['paymentMode'] = this.paymentMode;
    data['generateEIndent'] = this.generateEIndent;
    data['sAPCOSTCENTER'] = this.sAPCOSTCENTER;
    data['aGMSpareParts'] = this.aGMSpareParts;
    data['aGMSparePartsRemarks'] = this.aGMSparePartsRemarks;
    data['aGMApprovalDate'] = this.aGMApprovalDate;
    data['regNumber'] = this.regNumber;
    data['channel'] = this.channel;
    data['amountCurrency'] = this.amountCurrency;
    data['amountConverted'] = this.amountConverted;
    data['accountId'] = this.accountId;
    data['accountName'] = this.accountName;
    data['contactId'] = this.contactId;
    data['contactName'] = this.contactName;
    data['campaignId'] = this.campaignId;
    data['campaignName'] = this.campaignName;
    data['originalLeadId'] = this.originalLeadId;
    data['originalLeadName'] = this.originalLeadName;
    data['createdById'] = this.createdById;
    data['createdByName'] = this.createdByName;
    data['modifiedById'] = this.modifiedById;
    data['modifiedByName'] = this.modifiedByName;
    data['assignedUserId'] = this.assignedUserId;
    data['assignedUserName'] = this.assignedUserName;
    data['eINDENTId'] = this.eINDENTId;
    data['eINDENTName'] = this.eINDENTName;
    return data;
  }
}