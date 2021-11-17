import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/screen/otp/component/otp_form.dart';
import 'package:marketplace/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getPropertionateScreenHeight(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                "Masukkan Kode Verifikasi",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: getPropertionateScreenWidth(20)),
              ),
              Text("Kode telah dikirim melalui SMS ke 0810000000"),
              buildTimer(),
              OtpForm(),
              SizedBox(height: getPropertionateScreenHeight(20)),
              GestureDetector(
                onTap: () {
                  // OTP code resend
                },
                child: Text(
                  "Kirim ulang OTP",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Kode akan experied dalam "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: primaryColor),
          ),
        ),
      ],
    );
  }
}
