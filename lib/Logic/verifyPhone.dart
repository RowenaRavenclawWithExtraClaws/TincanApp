class VerifyPhone {
  static bool validatePhoneNumber(String phoneNumber) {
    if (phoneNumber.isEmpty) {
      return false;
    }

    if (phoneNumber.length < 13) {
      return false;
    }

    // for now, this is only valid for Egyptian carriers.
    if (phoneNumber.startsWith('+201') == false) {
      return false;
    }

    return true;
  }
}
