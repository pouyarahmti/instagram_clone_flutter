import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/common/utils/colors.dart';
import 'package:instagram_clone/screens/mobile/auth/components/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(32),
          width: double.infinity,
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),

              // LOGO
              SvgPicture.asset(
                'assets/icons/ic_instagram.svg',
                color: primaryColor,
              ),

              const SizedBox(
                height: 32,
              ),

              // Form
              const LoginForm(),

              Flexible(
                flex: 2,
                child: Container(),
              ),

              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Don't have an account?"),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Sign up.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
