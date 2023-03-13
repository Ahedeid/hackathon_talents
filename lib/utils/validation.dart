import 'package:flutter/material.dart';



extension ValidationExt on String {
  String? get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    String? result;
    if (isEmpty) {
      result = 'required field';
    } else if (!(emailRegExp.hasMatch(this))) {
      result = 'invalid data';
    }
    return result;
  }

  String? get isValidName {
    String? result;
    if (isEmpty) {
      result = 'required field';
    }
    return result;
  }

  String? get isValidPassword {
    String? result;

    final passwordRegExp =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (isEmpty) {
      result = '';
    } else if (!(passwordRegExp.hasMatch(this))) {
      result = '';
    }
    return result;
  }

  String? confirmPassword(String password) {
    String? result;
    if (!(password == this)) {
      result = 'not match';
    }
    return result;
  }

  String? get isValidPhone {
    String? result;
    final phoneRegExp = RegExp(r"^\+?[0-9]{9}$");
    if (isEmpty) {
      result = '';
    } else if (!(phoneRegExp.hasMatch(this))) {
      result = '';
    }
    return result;
  }
}

String? isValidEmail(String? value) {
  final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  String? result;
  if (value == null || value.isEmpty) {
    result = '';
  } else if (!(emailRegExp.hasMatch(value))) {
    result = '';
  }
  return result;
}

String? isValidPassword(String? value) {
  String? result;

  final passwordRegExp =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  if (value == null || value.isEmpty) {
    result = '';
  } else if (!(passwordRegExp.hasMatch(value))) {
    result = '';
  }
  return result;
}

String? isValidName(String? value) {
  String? result;
  if (value == null || value.isEmpty || value.length < 3) {
    result = '';
  }
  return result;
}

String? isValidPhone(String? value) {
  String? result;
  final phoneRegExp = RegExp(r"^\+?[0-9]{9}$");
  if (value == null || value.isEmpty) {
    result = '';
  } else if (!(phoneRegExp.hasMatch(value))) {
    result = '';
  }
  return result;
}

late TextEditingController passwordController;

String? confirmPassword(String? confirmPassword) {
  String? result;
  if (!(passwordController.text == confirmPassword)) {
    result = 'not match';
  }
  return result;
}

String? isValidId(String? value) {
  String? result;
  if (value == null || value.isEmpty) {
    result = '';
  }
  return result;
}

String? isNotEmpty(String? value) {
  String? result;
  if (value == null || value.isEmpty) {
    result = '';
  }
  return result;
}

String? isNumber(String? value) {
  String? result;
  final isNumberReg = RegExp(r'^[0-9]+$');
  if (value == null || value.isEmpty) {
    result = '';
  } else if (!(isNumberReg.hasMatch(value))) {
    result = '';
  }
  return result;
}
