class GetBankDetailsModel {
  int? statusCode;
  String? status;
  String? message;
  Data? data;

  GetBankDetailsModel({this.statusCode, this.status, this.message, this.data});

  GetBankDetailsModel.fromJson(Map<String, dynamic> json) {
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
  String? sId;
  String? accountName;
  String? accountNumber;
  String? bankBranch;
  String? bankName;
  String? ledger;
  String? currency;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.sId,
        this.accountName,
        this.accountNumber,
        this.bankBranch,
        this.bankName,
        this.ledger,
        this.currency,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
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