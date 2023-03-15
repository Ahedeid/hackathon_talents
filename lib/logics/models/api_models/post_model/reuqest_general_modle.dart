class ReuqestGeneralModle {
  int? statusCode;
  String? status;
  String? message;

  ReuqestGeneralModle({this.statusCode, this.status, this.message});

  ReuqestGeneralModle.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['statusCode'] = statusCode;
    data['status'] = status;
    data['message'] = message;
    return data;
  }
}