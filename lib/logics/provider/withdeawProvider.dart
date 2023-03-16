import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_talents/api/withdrawApi.dart';
import '../../api/app_exception.dart';
import '../../utils/helper.dart';
import '../models/api_models/get_model/get_withdraw_list_model.dart';




class WithdrawProvider extends ChangeNotifier {
  List<GetWithdrawListModel> withdrawList = [];
  bool isLoading = false;
  int offset = 10;
  int limit = 10;
  String token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkIjoiNjNlMTA0YWE4YmJhMmNiM2Y3NTRkN2RiIiwicm9sZSI6MH0sImV4cCI6MTY3ODk5OTQwMSwiaWF0IjoxNjc4OTEzMDAxfQ.HttotVha-v6cb8Q1h_aVix6ZCeuPJEh5o4foyeKT-H8';
  
  
  void setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }


  //   isLoadMoreRunning = false;
  //   offset = posts.length;
  //   notifyListeners();
  // }
  //
  // searchPost({required String postName}) {
  //   searchPosts = posts
  //       .where((element) =>
  //           element.text.toUpperCase().startsWith(postName.toUpperCase()))
  //       .toList();
  //
  //   notifyListeners();
  // }

  getAllWithdraw() async {
    setLoading(true);
    try {
      final response =
      await WithdrawApi.getWithdrawalRequestList(offset: offset, limit: limit, token: token);
      if (response.statusCode == 200) {
        final List data = response.data["data"]["withdraws"];
        if (data.isNotEmpty) {
          List<GetWithdrawListModel> moreUsers =
          data.map((e) => GetWithdrawListModel.fromJson(e)).toList();
          withdrawList.addAll(moreUsers);
          setLoading(false);
          //notifyListeners();
        }
      }
      // setLoading(false);
    } on DioError catch (e) {
      setLoading(false);
      final errorMessage = DioExceptions.fromDioError(e);
      UtilsConfig.showSnackBarMessage(message: errorMessage, status: false);
    }
  }

//   deletePost({required String token, required String id}) async {
//     setLoading(true);
//     try {
//       Response response = await PostApi.deletePost(
//         token: token,
//         id: id,
//       );
//       if (response.statusCode == 200) {
//         int index = posts.indexWhere((element) => element.sId == id);
//         posts.removeAt(index);
//         // notifyListeners();
//         UtilsConfig.showSnackBarMessage(
//             message: response.data["message"], status: true);
//         setLoading(false);
//       }
//     } on DioError catch (e) {
//       setLoading(false);
//       final errorMessage = DioExceptions.fromDioError(e);
//       UtilsConfig.showSnackBarMessage(message: errorMessage, status: false);
//     }
//   }
//
//   addPost({
//     required String token,
//     required String postText,
//     // required File file,
//   }) async {
//     // String fileName = file.path.split('/').last;
//     FormData formData = FormData.fromMap({
//       // "image": await MultipartFile.fromFile(
//       //   file.path,
//       //   filename: paths!.first.name,
//       // ),
//       "text": postText,
//     });
//
//     final Response response = await PostApi.addPost(
//       token: token,
//       data: formData,
//     );
//     if (response.statusCode == 201) {
//       refreshPosts(token: token);
//       UtilsConfig.showSnackBarMessage(
//         message: "add successfully",
//         status: true,
//       );
//       AppRouter.back();
//     }
//   }
//
//   editPost({
//     required String token,
//     required String id,
//     required String text,
//     // required File file,
//   }) async {
//     final Response response = await PostApi.editPost(
//       id: id,
//       text: text,
//       token: token,
//     );
//     if (response.statusCode == 200) {
//       int index = posts.indexWhere((element) => element.sId == id);
//       posts[index] = PostModel.fromJson(response.data["data"]);
//       notifyListeners();
//       UtilsConfig.showSnackBarMessage(
//         message: "edit successfully",
//         status: true,
//       );
//       AppRouter.back();
//     }
//   }
//
//   void refreshPosts({required String token}) async {
//     try {
//       final response =
//           await PostApi.getAllPost(offset: 0, limit: count + 2, token: token);
//       if (response.statusCode == 200) {
//         List<dynamic> usersList = response.data["data"]["posts"];
//
//         posts.insert(0, PostModel.fromJson(usersList.last));
//         notifyListeners();
//       }
//       // setLoading(false);
//     } on DioError catch (e) {
//       // setLoading(false);
//       final errorMessage = DioExceptions.fromDioError(e);
//       UtilsConfig.showSnackBarMessage(message: errorMessage, status: false);
//     }
//   }
//
//   sharePost({
//     required String id,
//     required String token,
//     required String email,
//     required String permission,
//   }) async {
//     try {
//       final Response response = await PostApi.sharePost(
//         email: email,
//         id: id,
//         permission: permission,
//         token: token,
//       );
//       if (response.statusCode == 200) {
//         UtilsConfig.showSnackBarMessage(
//             message: response.data["message"], status: true);
//         AppRouter.back();
//       }
//     } on DioError catch (e) {
//       final errorMessage = DioExceptions.fromDioError(e);
//       UtilsConfig.showSnackBarMessage(message: errorMessage, status: false);
//     }
//   }
//
//   String? fileName;
//   List<PlatformFile>? paths;
//   bool validFile = false;
//   late File file;
//   void pickFile() async {
//     try {
//       FilePickerResult result = await FilePicker.platform.pickFiles(
//           type: FileType.custom,
//           allowedExtensions: ['png', 'jpg']) as FilePickerResult;
//       if (result != null) {
//         fileName = result.files.first.name;
//         paths = result.files;
//         file = File(result.files.first.path!);
//         if (paths!.first.size > 2097152) {
//           validFile = false;
//         } else {
//           validFile = true;
//         }
//       }
//
//       notifyListeners();
//     } on Error catch (e) {
//       UtilsConfig.showSnackBarMessage(message: e.toString(), status: false);
//     }
//   }
 }
