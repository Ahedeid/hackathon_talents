


import 'package:flutter/widgets.dart';

import '../models/bank_model.dart';


class AddBankService extends ChangeNotifier{
  // bool isLoading = false;
  //
  // void setLoading(bool value) {
  //   isLoading = value;
  //   notifyListeners();
  // }

  final List<BankModel> _bankList =  <BankModel>[];

  List<BankModel> get getNote {
    //   if(_note.isEmpty){
    //     setLoading(true);
    //   }else {
    //     setLoading(false);
    //   }
    return _bankList ;
  }


  void addNote (String nameUser,String accountNumberUser){
    // setLoading(true);
    BankModel backDetils = BankModel( name: nameUser, accountNumber: accountNumberUser);
    _bankList.add(backDetils);
    // setLoading(false);
    notifyListeners();
  }


  void removeItem(int index) {
    _bankList.removeAt(index);
    notifyListeners();
  }
}