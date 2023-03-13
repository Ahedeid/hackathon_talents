// import 'package:dio/dio.dart';
//
//
// import '../../api/app_exception.dart';
// import '../../api/auth_api.dart';
// import '../../utils/helper.dart';
// import 'package:flutter/material.dart';
//
// class AuthProvider extends ChangeNotifier {
//   bool isLoading = false;
//
//   void setLoading(bool value) {
//     isLoading = value;
//     notifyListeners();
//   }
//
//   login({required String email,}) async {
//     setLoading(true);
//     try {
//       final response = await AuthApi.logIn(
//         email: email,
//       );
//       if (response.statusCode == 200) {
//
//         SharedPrefController().save(UserModel.fromJson(response.data["data"],));
//         UtilsConfig.showSnackBarMessage(
//             message: 'Login Successfully', status: true);
//         AppRouter.goAndRemove(ScreenName.postScreen);
//       }
//       setLoading(false);
//     } on DioError catch (e) {
//       setLoading(false);
//       final errorMessage = DioExceptions.fromDioError(e);
//       UtilsConfig.showSnackBarMessage(message: errorMessage, status: false);
//     }
//   }
//
//   singUp({required String name, required String email,}) async {
//     setLoading(true);
//     try {
//       final response = await AuthApi.singUp(
//         name: name,
//         email: email,
//       );
//       if (response.statusCode == 201) {
//         UtilsConfig.showSnackBarMessage(
//             message: 'SingUp Successfully', status: true);
//         AppRouter.goTo(ScreenName.loginScreen);
//       }
//       setLoading(false);
//     } on DioError catch (e) {
//       setLoading(false);
//       final errorMessage = DioExceptions.fromDioError(e);
//       UtilsConfig.showSnackBarMessage(message: errorMessage, status: false);
//     }
//   }
// }
