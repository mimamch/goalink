import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:golink/components/custom_button.dart';
import 'package:golink/components/custom_text_field.dart';
import 'package:golink/core/dio.dart';
import 'package:golink/screens/sign_in_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static String routeName = '/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isLoading = false;
  String? error;

  send() async {
    isLoading = true;

    try {
      await DioClient().dio.post('/');
      if (!mounted) return;
    } catch (e) {
      error = e.toString();
    } finally {
      isLoading = false;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Text(
            "Nama",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomTextField(
            placeHolder: 'Nama Lengkap',
          ),
          const SizedBox(
            height: 10,
          ),
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
              label: "Register",
              onTap: () {
                // send();
                context.replaceNamed(SignInScreen.routeName);
              }),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
