import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:golink/components/custom_button.dart';
import 'package:golink/screens/register_screen.dart';
import 'package:golink/screens/sign_in_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  static String routeName = '/main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Flexible(
              flex: 1,
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    "GOALINK",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  Text("Link Competitions."),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      CustomButtonPrimary(
                          label: "Daftar",
                          onTap: () {
                            context.pushNamed(RegisterScreen.routeName);
                          }),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomButtonPrimary(
                          label: "Login",
                          onTap: () {
                            context.pushNamed(SignInScreen.routeName);
                          }),
                    ],
                  ),
                  const Text("Privacy Policy."),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
