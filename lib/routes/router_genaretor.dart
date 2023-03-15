import 'package:flutter/material.dart';
import 'package:hackathon_talents/routes/screen_name.dart';
import 'package:hackathon_talents/view/screens/add_bank_account_screen.dart';
import 'package:hackathon_talents/view/screens/balance_screen.dart';
import 'package:hackathon_talents/view/screens/cash_withdeaw_screen.dart';
import 'package:hackathon_talents/view/screens/withdraw_request_cash_screen.dart';
import '../view/screens/add_bank_screen.dart';
import '../view/screens/add_recipients_screen.dart';
import '../view/screens/ottp_screen.dart';
import '../view/screens/recipients_screen.dart';
import '../view/screens/withdraw_request_bank_screen.dart';


class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Widget result;
    switch (settings.name) {
      case ScreenName.balanceScreen:
        result = const BalanceScreen();
        break;
      case ScreenName.withdrawRequestBankScreen:
        result = const WithdrawRequestScreenBank();
        break;
        case ScreenName.addBankScreen:
        result = const AddBankScreen();
        break;
        case ScreenName.addBankAccount:
        result =  const AddBankAccount();
        break;
        case ScreenName.oTTPScreen:
        result = const OTTPScreen();
        break;
        case ScreenName.withdrawRequestCashScreen:
        result = const WithdrawRequestScreenCash();
        break;
        case ScreenName.cashWithDrawScreen:
        result = const CashWithDrawScreen();
        break;
        case ScreenName.addRecipentsScreen:
        result = const AddRecipentsScreen();
        break;
        case ScreenName.recipentsScreen:
        result = const RecipientsScreen();
        break;
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
