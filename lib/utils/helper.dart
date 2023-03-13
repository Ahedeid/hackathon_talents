import 'package:flutter/material.dart';

class UtilsConfig {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static final GlobalKey<ScaffoldMessengerState> scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();

  static showSnackBarMessage({required String message, required bool status}) {
    return scaffoldKey.currentState!.showSnackBar(SnackBar(
      duration: const Duration(seconds: 3),
      content: Text(message),
      elevation: 0,
      backgroundColor: status ? Colors.green : Colors.black45,
    ));
  }

  static Future<bool?> showAlertDialog() async {
    bool? result = await showDialog(
        context: navigatorKey.currentContext!,
        builder: (ctx) {
          return AlertDialog(
            content: const Text('Are you sure?'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(ctx, true),
                  child: const Text('Yes')),
              TextButton(
                  onPressed: () => Navigator.pop(ctx, false),
                  child: const Text('No')),
            ],
          );
        });
    return result;
  }
}
