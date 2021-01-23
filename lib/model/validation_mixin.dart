class ValidationMixin {
  String emailValidationMixin(String value) {

    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regex = new RegExp(pattern);
    if (value.isEmpty) {
      return 'Please enter email';
    } else if (!regex.hasMatch(value)) return "Please enter valid email address";
    return null;
  }

  String passwordValidationMixin(String value) {
    if(value.isEmpty){
      return 'Please enter password';
    }else if (value.length < 8) return 'Password must be atleast 8 characters';
    return null;
  }

  String validateMobile(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{11}$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return 'Please enter mobile number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }
}
