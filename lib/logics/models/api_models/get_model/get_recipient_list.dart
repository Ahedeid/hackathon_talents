class GetRecipientListModel {
  int? statusCode;
  String? status;
  String? message;
  Data? data;

  GetRecipientListModel({this.statusCode, this.status, this.message, this.data});

  GetRecipientListModel.fromJson(Map<String, dynamic> json) {
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
  List<Recipients>? recipients;
  int? count;

  Data({this.recipients, this.count});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['recipients'] != null) {
      recipients = <Recipients>[];
      json['recipients'].forEach((v) {
        recipients!.add(Recipients.fromJson(v));
      });
    }
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (recipients != null) {
      data['recipients'] = recipients!.map((v) => v.toJson()).toList();
    }
    data['count'] = count;
    return data;
  }
}

class Recipients {
  String? sId;
  String? name;
  String? mobile;
  String? idNumber;
  String? createdAt;
  String? updatedAt;

  Recipients(
      {this.sId,
        this.name,
        this.mobile,
        this.idNumber,
        this.createdAt,
        this.updatedAt});

  Recipients.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    mobile = json['mobile'];
    idNumber = json['idNumber'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['_id'] = sId;
    data['name'] = name;
    data['mobile'] = mobile;
    data['idNumber'] = idNumber;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}