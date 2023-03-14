import 'package:flutter/material.dart';
import 'package:hackathon_talents/routes/screen_name.dart';
import 'package:hackathon_talents/view/screens/balance_screen.dart';
import 'package:hackathon_talents/view/screens/cash_screen.dart';
import 'package:hackathon_talents/view/screens/withdrawl.dart';
import 'package:hackathon_talents/view/screens/withdrawl_preview_screen.dart';

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
      case ScreenName.withdrawalScreen:
        result = const Withdrawal();
        break;
      case ScreenName.cashScreen:
        result = const CashScreen();
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
