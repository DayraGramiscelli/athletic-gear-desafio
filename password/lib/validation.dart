import 'dart:ffi';

bool validate(String password) {
  var hasMinLength = false;
  var hasNumber = false;
  var hasUpperCase = false;
  var hasLowerCase = false;
  var hasSpecialCharacters = false;

  if (password.length >= 7) {
    hasMinLength = true;
  }
  for (var i = 0; i < password.length; i++) {
    var character = password[i];
    if (character == character.toLowerCase()) {
      hasLowerCase = true;
    }
    if (character == character.toUpperCase()) {
      hasUpperCase = true;
    }
    if (!hasNumber) {
      hasNumber = isDigit(character);
    }
  }
  hasSpecialCharacters =
      password.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  return hasMinLength &&
      hasNumber &&
      hasUpperCase &&
      hasLowerCase &&
      hasSpecialCharacters;
}

bool isDigit(String c) {
  return "0".compareTo(c) <= 0 && "9".compareTo(c) >= 0;
}
