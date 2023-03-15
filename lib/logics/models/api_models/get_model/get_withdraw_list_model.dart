


class GetWithdrawListModel {
  int? statusCode;
  String? status;
  String? message;
  Data? data;

  GetWithdrawListModel({this.statusCode, this.status, this.message, this.data});

  GetWithdrawListModel.fromJson(Map<String, dynamic> json) {
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
  List? withdraws;

  Data({this.count, this.withdraws});

  Data.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    if (json['withdraws'] != null) {
      withdraws = [];
      json['withdraws'].forEach((v) {
        withdraws!.add(GetWithdrawListModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['count'] = count;
    if (withdraws != null) {
      data['withdraws'] = withdraws!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}