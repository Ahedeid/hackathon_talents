import 'package:flutter/material.dart';
import 'package:hackathon_talents/routes/screen_name.dart';
import 'package:hackathon_talents/view/screens/add_recepient.dart';
import 'package:hackathon_talents/view/screens/balance_screen.dart';
import 'package:hackathon_talents/view/screens/cash_screen.dart';
import 'package:hackathon_talents/view/screens/edit_recepient.dart';
import 'package:hackathon_talents/view/screens/withdrawal_cash_screens/withdraw_cash_screen.dart';
import 'package:hackathon_talents/view/screens/withdrawal_bank_screens/withdrawal_canceled.dart';
import 'package:hackathon_talents/view/screens/withdrawal_bank_screens/withdrawal_completed.dart';
import 'package:hackathon_talents/view/screens/withdrawal_bank_screens/withdrawl.dart';
import 'package:hackathon_talents/view/screens/withdrawal_bank_screens/withdrawl_sent.dart';

import 'package:hackathon_talents/view/screens/withdrawal_bank_screens/withdrawl_preview_screen.dart';
import 'package:hackathon_talents/view/screens/withdrawal_cash_screens/withdrawal_canceled.dart';
import 'package:hackathon_talents/view/screens/withdrawal_cash_screens/withdrawal_completed.dart';
import 'package:hackathon_talents/view/screens/withdrawal_cash_screens/withdrawal_ready.dart';
import 'package:hackathon_talents/view/screens/withdrawal_cash_screens/withdrawl_pend.dart';

import '../view/screens/recpients_screen.dart';
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
      case ScreenName.withdrawalPreviewScreen:
        result = const WithdrawlPrevviewScreen();
        break;
      case ScreenName.withdrawalBankScreen:
        result = const WithdrawalBank();
        break;
      case ScreenName.cashScreen:
        result = const CashScreen();
        break;
      case ScreenName.addRecepientScreen:
        result = const AddRecepientScreen();
        break;
      case ScreenName.editRecepientScreen:
        result = const EditRecepientScreen();
        break;
      case ScreenName.recepientsScreen:
        result = const RecipientsScreen();
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
      //   case ScreenName.signInScreen:
      //   result = const SignInScreen();
      //   break;
      //   case ScreenName.signUpScreen:
      //   result = const SignUpScreen();
      //   break;
      //   case ScreenName.searchScreen:
      //   result = const SearchScreen();
      //   break;
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
