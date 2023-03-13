// import 'dart:convert';
//
//
// import 'package:shared_preferences/shared_preferences.dart';
//
//
// enum PrefKeys { user, token, logedIn }
//
// class SharedPrefController {
//   static final _instance = SharedPrefController._();
//
//   factory SharedPrefController() {
//     return _instance;
//   }
//
//   late SharedPreferences preferences;
//   SharedPrefController._();
//
//   Future<void> init() async {
//     preferences = await SharedPreferences.getInstance();
//   }
//
//   save(UserModel user) async {
//     String userEncoded = jsonEncode(user.toJson());
//     await preferences.setString(
//       PrefKeys.user.toString(),
//       userEncoded,
//     );
//   }
//
//   setLogedin() async {
//     await preferences.setBool(PrefKeys.logedIn.toString(), true);
//   }
//
//   bool getLogedin() =>
//       preferences.getBool(PrefKeys.logedIn.toString()) ?? false;
//
//   UserModel getUser() {
//     String userJson = preferences.getString(PrefKeys.user.toString()) ?? '';
//     final userObject = jsonDecode(userJson);
//     return UserModel.fromJson(userObject);
//   }
//
//   clear() {
//     preferences.clear();
//   }
// }
