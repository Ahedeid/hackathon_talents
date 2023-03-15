class GetOfficeListModel {
  int? statusCode;
  String? status;
  String? message;
  List<Data>? data;

  GetOfficeListModel({this.statusCode, this.status, this.message, this.data});

  GetOfficeListModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? name;
  String? address;
  int? fees;
  String? startingHour;
  String? endingHour;

  Data(
      {this.sId,
        this.name,
        this.address,
        this.fees,
        this.startingHour,
        this.endingHour});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    address = json['address'];
    fees = json['fees'];
    startingHour = json['startingHour'];
    endingHour = json['endingHour'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['_id'] = sId;
    data['name'] = name;
    data['address'] = address;
    data['fees'] = fees;
    data['startingHour'] = startingHour;
    data['endingHour'] = endingHour;
    return data;
  }
}