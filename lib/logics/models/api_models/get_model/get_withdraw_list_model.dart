// class GetWithdrawListModel {
//   String status;
//
//   Withdraws data;
//
//   GetWithdrawListModel({required this.status, required this.data});
//
//   factory GetWithdrawListModel.fromJson(Map<String, dynamic> parsesJson) {
//     return GetWithdrawListModel(
//         status: parsesJson['name'],
//         data: Withdraws.fromJson(parsesJson['subject']));
//   }
// }
//
// class Withdraws {
//   List<String> withdraws;
//
//   Withdraws({required this.withdraws});
//
//   factory Withdraws.fromJson(Map<String, dynamic> parseJson) {
//     return Withdraws(
//       withdraws: toList(parseJson['withdraws']),
//     );
//   }
//
//   static List<String> toList(List<dynamic> list) {
//     return List<String>.from(list);
//   }
// }

class GetWithdrawListModel {
   GetWithdrawListModel({
    required this.id,
    required this.typeWithdraw,
    required this.status,
    required this.amount,
    required this.office,
    required this.recipientEntities,
    required this.bank,
  });

  String id;

  String typeWithdraw;
  String status;
  String amount;
  String office;
  String recipientEntities;
  String bank;


  factory GetWithdrawListModel.fromJson(Map<String, dynamic> formJson) {
    return GetWithdrawListModel(
      id: formJson['_id'],
      typeWithdraw: formJson['typeWithdraw'],
      status: formJson['status'],
      amount: formJson['amount'].toDouble(),
      office: formJson['office'],
      recipientEntities: formJson['recipient'],
      bank: formJson['bank'],
    );
  }
}

class WithdrawOfficeModel {
   WithdrawOfficeModel(
      {required this.id, required this.name, required this.address});

  String id;

  String name;

  String address;

  factory WithdrawOfficeModel.fromJson(Map<String, dynamic> json) {
    return WithdrawOfficeModel(
      id: json['_id'],
      name: json['name'],
      address: json['address'],
    );
  }
}

class BankModel {
  BankModel({
   required this.id,
   required this.accountName,
   required this.accountNumber,
   required this.bankBranch,
   required this.bankName,
  });

 String id;
 String accountName;
 String accountNumber;
 String bankBranch;
 String     bankName;

  factory BankModel.fromJson(Map<String, dynamic> fromJson) {
    return BankModel(
      id: fromJson['_id'],
      accountName: fromJson['accountName'],
      accountNumber: fromJson['accountNumber'],
      bankBranch: fromJson['bankBranch'],
      bankName: fromJson['bankName'],
    );
  }
}

class RecipientModel{
   RecipientModel({
   required this.id,
   required this.name,
   required this.mobile,
   required this.idNumber,
  });

 String id;
 String name;
 String mobile;
 String idNumber;


  factory RecipientModel.fromJson(Map<String, dynamic> json) {
    return RecipientModel(
      id: json['_id'],
      name: json['name'],
      mobile: json['mobile'],
      idNumber: json['idNumber'],
    );
  }
}

/*
class Withdraws {
  String? sId;
  int? amount;
  Office? office;
  String? typeWithdraw;
  String? status;
  Recipient? recipient;
  String? createdAt;
  Bank? bank;

  Withdraws(
      {this.sId,
      this.amount,
      this.office,
      this.typeWithdraw,
      this.status,
      this.recipient,
      this.createdAt,
      this.bank});

  Withdraws.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    amount = json['amount'];
    office =
        json['office'] != null ? new Office.fromJson(json['office']) : null;
    typeWithdraw = json['typeWithdraw'];
    status = json['status'];
    recipient = json['recipient'] != null
        ? new Recipient.fromJson(json['recipient'])
        : null;
    createdAt = json['createdAt'];
    bank = json['bank'] != null ? new Bank.fromJson(json['bank']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['amount'] = this.amount;
    if (this.office != null) {
      data['office'] = this.office!.toJson();
    }
    data['typeWithdraw'] = this.typeWithdraw;
    data['status'] = this.status;
    if (this.recipient != null) {
      data['recipient'] = this.recipient!.toJson();
    }
    data['createdAt'] = this.createdAt;
    if (this.bank != null) {
      data['bank'] = this.bank!.toJson();
    }
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['address'] = this.address;
    return data;
  }
}

 */
