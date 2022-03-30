
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

  bool isEmail(String email) {
    RegExp regex = RegExp(r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    return regex.hasMatch(email);
  }

  bool isIC (String ic){
    RegExp regex = RegExp(r"^\d{6}-\d{2}-\d{4}$");
    return regex.hasMatch(ic);
  }

}