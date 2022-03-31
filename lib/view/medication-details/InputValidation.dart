
mixin InputValidationMixin {
  bool isName(String fullname) {
    RegExp regex = RegExp(r"^[a-zA-Z\-]");
    return regex.hasMatch(fullname);
  }

  bool isPhone (String phone){
    RegExp regex = RegExp(r"^(\+?6?01)[0-46-9]-*[0-9]{7,8}$");
    return regex.hasMatch(phone);
  }

  bool isNumber (String number) {
    RegExp regex = RegExp(r"^[0-9]");
    return regex.hasMatch(number);
  }

}