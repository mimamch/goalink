import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:golink/components/custom_button.dart';
import 'package:golink/components/custom_text_field.dart';
import 'package:golink/screens/home_screen.dart';
import 'package:golink/screens/register_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  static String routeName = '/sign-in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Text(
            "Alamat Email",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomTextField(
            placeHolder: 'Email',
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Kata Sandi",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomTextField(
            placeHolder: 'Kata Sandi',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButtonPrimary(
              label: "Sign In",
              onTap: () {
                context.goNamed(HomeScreen.routeName);
              }),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Dont have an account?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "In that case, you are missing out",
            style: TextStyle(
              // fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomButtonPrimary(
              label: "Register",
              onTap: () {
                context.pushNamed(RegisterScreen.routeName);
              }),
        ],
      ),
    );
  }
}
