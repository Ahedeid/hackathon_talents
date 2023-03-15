import '../get_model/get_bank_list_model.dart';

class AddBankAccountModel {
  int? statusCode;
  String? status;
  String? message;
  Data? data;

  AddBankAccountModel({this.statusCode, this.status, this.message, this.data});

  AddBankAccountModel.fromJson(Map<String, dynamic> json) {
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