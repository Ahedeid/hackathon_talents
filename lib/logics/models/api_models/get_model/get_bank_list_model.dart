class GetBankListModel {
  int? statusCode;
  String? status;
  String? message;
  Data? data;

  GetBankListModel({this.statusCode, this.status, this.message, this.data});

  GetBankListModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['statusCode'] = statusCode;
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? count;
  List<Banks>? banks;

  Data({this.count, this.banks});

  Data.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    if (json['banks'] != null) {
      banks = <Banks>[];
      json['banks'].forEach((v) {
        banks!.add(Banks.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['count'] = count;
    if (banks != null) {
      data['banks'] = banks!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Banks {
  String? sId;
  String? accountName;
  String? accountNumber;
  String? bankBranch;
  String? bankName;
  String? ledger;
  String? currency;
  String? createdAt;
  String? updatedAt;

  Banks(
      {this.sId,
        this.accountName,
        this.accountNumber,
        this.bankBranch,
        this.bankName,
        this.ledger,
        this.currency,
        this.createdAt,
        this.updatedAt});

  Banks.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    accountName = json['accountName'];
    accountNumber = json['accountNumber'];
    bankBranch = json['bankBranch'];
    bankName = json['bankName'];
    ledger = json['ledger'];
    currency = json['currency'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['_id'] = sId;
    data['accountName'] = accountName;
    data['accountNumber'] = accountNumber;
    data['bankBranch'] = bankBranch;
    data['bankName'] = bankName;
    data['ledger'] = ledger;
    data['currency'] = currency;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}