class GetWithDrawReqests {
  int? statusCode;
  String? status;
  String? message;
  Data? data;

  GetWithDrawReqests({this.statusCode, this.status, this.message, this.data});

  GetWithDrawReqests.fromJson(Map<String, dynamic> json) {
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
  Withdraw? withdraw;
  bool? isWithdrawBankPermissionGranted;

  Data({this.withdraw, this.isWithdrawBankPermissionGranted});

  Data.fromJson(Map<String, dynamic> json) {
    withdraw = json['withdraw'] != null
        ? Withdraw.fromJson(json['withdraw'])
        : null;
    isWithdrawBankPermissionGranted = json['isWithdrawBankPermissionGranted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (withdraw != null) {
      data['withdraw'] = withdraw!.toJson();
    }
    data['isWithdrawBankPermissionGranted'] =
        isWithdrawBankPermissionGranted;
    return data;
  }
}

class Withdraw {
  String? sId;
  int? amount;
  Office? office;
  String? typeWithdraw;
  String? status;
  Recipient? recipient;
  String? createdAt;

  Withdraw(
      {this.sId,
        this.amount,
        this.office,
        this.typeWithdraw,
        this.status,
        this.recipient,
        this.createdAt});

  Withdraw.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    amount = json['amount'];
    office =
    json['office'] != null ? Office.fromJson(json['office']) : null;
    typeWithdraw = json['typeWithdraw'];
    status = json['status'];
    recipient = json['recipient'] != null
        ? Recipient.fromJson(json['recipient'])
        : null;
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['_id'] = sId;
    data['amount'] = amount;
    if (office != null) {
      data['office'] = office!.toJson();
    }
    data['typeWithdraw'] = typeWithdraw;
    data['status'] = status;
    if (recipient != null) {
      data['recipient'] = recipient!.toJson();
    }
    data['createdAt'] = createdAt;
    return data;
  }
}

class Office {
  String? sId;
  String? name;
  String? address;

  Office({this.sId, this.name, this.address});

  Office.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['_id'] = sId;
    data['name'] = name;
    data['address'] = address;
    return data;
  }
}

class Recipient {
  String? sId;
  String? name;
  String? mobile;
  String? idNumber;

  Recipient({this.sId, this.name, this.mobile, this.idNumber});

  Recipient.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    mobile = json['mobile'];
    idNumber = json['idNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['_id'] = sId;
    data['name'] = name;
    data['mobile'] = mobile;
    data['idNumber'] = idNumber;
    return data;
  }
}