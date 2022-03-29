import 'dart:ffi';
import 'package:flutter/material.dart';

mixin InputValidationMixin {
  bool isName(String fullname) {
    RegExp regex = RegExp(r"^[a-zA-Z\-]");
    return regex.hasMatch(fullname);
  }

  bool isEmail(String email) {
    RegExp regex = RegExp(r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    return regex.hasMatch(email);
  }

  //  => password.length == 6;
  bool isPassword(String password){
    RegExp regex = RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$");
    return password.length > 5;
    return regex.hasMatch(password);
  }

  bool isIC (String ic){
    RegExp regex = RegExp(r"^\d{6}-\d{2}-\d{4}$");
    return regex.hasMatch(ic);
  }

  bool isPhone (String phone){
    RegExp regex = RegExp(r"^(\+?6?01)[0-46-9]-*[0-9]{7,8}$");
    return regex.hasMatch(phone);
  }

}