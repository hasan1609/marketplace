import 'package:flutter/material.dart';
import 'package:marketplace/component/sosmed_card.dart';
import 'package:marketplace/component/switch.dart';
import 'package:marketplace/screen/login/login.dart';
import 'package:marketplace/screen/register/component/register_form.dart';
import 'package:marketplace/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getPropertionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                RegisterForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SosmedCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SosmedCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getPropertionateScreenWidth(20)),
                SwitchTextAkun(
                  text1: "Sudah punya akun?",
                  text2: "Masuk",
                  press: () =>
                      Navigator.pushReplacementNamed(context, Login.routeName),
                ),
                SizedBox(height: getPropertionateScreenWidth(20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
