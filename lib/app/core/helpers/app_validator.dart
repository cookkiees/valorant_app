enum ValidationType {
  email,
  passwordLength,
  passwordUppercase,
  passwordhasNumber,
  text,
  phone
}

extension StringValidationExtension on String? {
  bool get isValid {
    return validate().isEmpty;
  }

  String validate(
      {ValidationType type = ValidationType.text, bool isRequired = false}) {
    if (!isRequired && (this?.isEmpty ?? true)) {
      return '';
    }

    if (this?.isNotEmpty == true) {
      late String pattern;

      switch (type) {
        case ValidationType.email:
          pattern =
              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
          break;
        case ValidationType.passwordLength:
          pattern = r'^.{8,}$';
          break;
        case ValidationType.passwordUppercase:
          pattern = r'[A-Z]';
          break;
        case ValidationType.passwordhasNumber:
          pattern = r'[0-9]';
          break;
        case ValidationType.text:
          pattern = r'^[a-zA-Z]+$';
          break;
        case ValidationType.phone:
          if ((this?.length ?? 0) > 16 || (this?.length ?? 0) < 6) {
            return 'Invalid phone number length';
          }
          pattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
          break;
      }

      final regExp = RegExp(pattern);
      if (!regExp.hasMatch(this!)) {
        return getErrorMessage(type);
      }
    }

    return '';
  }

  String getErrorMessage(ValidationType type) {
    switch (type) {
      case ValidationType.email:
        return 'Invalid email address';
      case ValidationType.passwordLength:
        return 'Password must contain at least one uppercase letter, one number, and be at least 8 characters long';
      case ValidationType.passwordUppercase:
        return 'Password must contain at least one uppercase letter, one number, and be at least 8 characters long';
      case ValidationType.passwordhasNumber:
        return 'Password must contain at least one uppercase letter, one number, and be at least 8 characters long';
      case ValidationType.text:
        return 'Invalid text format';
      case ValidationType.phone:
        return 'Invalid phone number format';
    }
  }
}
