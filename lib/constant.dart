import 'package:flutter/material.dart';
import 'package:marketplace/size_config.dart';

const primaryColor = Color(0xFF0077C5);
const primaryLightColor = Color(0xFFFFECDF);
const primaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF0077C5), Color(0xFF1789D4)],
);
const secondaryColor = Color(0xFF979797);
const textColor = Color(0xFF757575);
const animationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getPropertionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getPropertionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getPropertionateScreenWidth(15)),
    borderSide: BorderSide(color: textColor),
  );
}

// form error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

// tes
const double defaultMargin = 20;

Color mainColor = Color(0xFF05AA10);
Color accentColor1 = Color(0xFF0077C5);
Color accentColor2 = Color(0xFFE74E40);
Color accentColor3 = Color(0xFF9FA6B0);
const blackTextFont = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);
const whiteTextFont = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);
const greyTextFont = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: Colors.grey,
);
const greenTextFont = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: Colors.green,
);
