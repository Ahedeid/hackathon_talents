import 'package:flutter/material.dart';
import 'package:hackathon_talents/routes/screen_name.dart';
import 'package:hackathon_talents/view/screens/add_bank_account_screen.dart';
import 'package:hackathon_talents/view/screens/balance_screen.dart';
import 'package:hackathon_talents/view/screens/cash_withdeaw_screen.dart';
import 'package:hackathon_talents/view/screens/withdraw_request_cash_screen.dart';
import '../view/screens/add_bank_screen.dart';
import '../view/screens/add_recipients_screen.dart';
import '../view/screens/edit_recepient.dart';
import '../view/screens/ottp_screen.dart';
import '../view/screens/recipients_screen.dart';
import '../view/screens/withdraw_request_bank_screen.dart';
import '../view/screens/withdrawal_bank_screens/withdrawal_canceled.dart';
import '../view/screens/withdrawal_bank_screens/withdrawal_completed.dart';
import '../view/screens/withdrawal_bank_screens/withdrawl.dart';
import '../view/screens/withdrawal_bank_screens/withdrawl_preview_screen.dart';
import '../view/screens/withdrawal_bank_screens/withdrawl_sent.dart';
import '../view/screens/withdrawal_cash_screens/withdraw_cash_screen.dart';
import '../view/screens/withdrawal_cash_screens/withdrawal_canceled.dart';
import '../view/screens/withdrawal_cash_screens/withdrawal_completed.dart';
import '../view/screens/withdrawal_cash_screens/withdrawal_ready.dart';
import '../view/screens/withdrawal_cash_screens/withdrawl_pend.dart';


class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Widget result;
    switch (settings.name) {
      case ScreenName.balanceScreen:
        result =  BalanceScreen();
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
        //------------------------------------------------------------
      // case ScreenName.withdrawRequestScreen:
      //   result = const WithdrawRequestScreen();
      //   break;
      case ScreenName.withdrawalPreviewScreen:
        result = const WithdrawlPrevviewScreen();
        break;
      case ScreenName.withdrawalBankScreen:
        result = const WithdrawalBank();
        break;
      case ScreenName.editRecepientScreen:
        result = const EditRecepientScreen();
        break;
      case ScreenName.withdrawalCashScreen:
        result = const WithdrawlCashScreen();
        break;
      case ScreenName.withdrawalSentBankScreen:
        result = const WithdrawalSentBank();
        break;
      case ScreenName.withdrawalBankCompletedScreen:
        result = const WithdrawalCompletedBank();
        break;
      case ScreenName.withdrawalBankCanceledScreen:
        result = const WithdrawalCanceledBank();
        break;
      case ScreenName.withdrawalPendCashScreen:
        result = const WithdrawalCashPend();
        break;
      case ScreenName.withdrawalCashCompletedScreen:
        result = const WithdrawalCompletedCash();
        break;
      case ScreenName.withdrawalCashCanceledScreen:
        result = const WithdrawalCanceledCash();
        break;
      case ScreenName.withdrawalCashReadyScreen:
        result = const WithdrawalCashReady();
        break;
    //--------------------------------------------------------------------
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
