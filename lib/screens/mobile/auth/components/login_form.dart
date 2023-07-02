import 'package:flutter/material.dart';
import 'package:instagram_clone/common/components/custom_text_field.dart';

import '../../../../common/components/buttons/fillButton.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formkey = GlobalKey<FormState>();

  // Controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFieldInput(
            controller: _emailController,
            hintText: "Enter your email",
            type: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 16,
          ),
          TextFieldInput(
            controller: _passwordController,
            hintText: "Enter your password",
            type: TextInputType.text,
            isObscureText: true,
          ),
          const SizedBox(
            height: 32,
          ),
          FillButton(
            buttonText: "Log In",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
