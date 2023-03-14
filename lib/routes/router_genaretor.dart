import 'package:flutter/material.dart';
import 'package:hackathon_talents/routes/screen_name.dart';
import 'package:hackathon_talents/view/screens/add_bank_account.dart';
import 'package:hackathon_talents/view/screens/balance_screen.dart';

import '../view/screens/add_bank.dart';
import '../view/screens/ottp_screen.dart';
import '../view/screens/withdraw_request.dart';


class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Widget result;

    switch (settings.name) {
      case ScreenName.balanceScreen:
        result = const BalanceScreen();
        break;
      case ScreenName.withdrawRequestScreen:
        result = const WithdrawRequestScreen();
        break;
        case ScreenName.addBankScreen:
        result = const AddBankScreen();
        break;
        case ScreenName.addBankAccount:
        result =  AddBankAccount();
        break;
        case ScreenName.oTTPScreen:
        result = const OTTPScreen();
        break;
      //   case ScreenName.favoriteScreen:
      //   result = const FavoriteScreen();
      //   break;
      default:
        result = const Scaffold(
          body: Center(
            child: Text(
              'Wrong path',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
    }
    return MaterialPageRoute(builder: (context) => result);
  }
}
