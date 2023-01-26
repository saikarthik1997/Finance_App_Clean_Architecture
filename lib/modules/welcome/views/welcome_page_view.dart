import 'package:flutter/material.dart';
import 'package:mms_assignment/common/widgets/buttons.dart';

class WelcomePageView extends StatelessWidget {
  const WelcomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          child: Column(
            children: [
              Text("Welcome Page"),
              PrimaryButton(buttonText: "Open an Account", onTap: () {}),
              const SizedBox(
                height: 16.0,
              ),
              SecondaryButton(buttonText: "Sign In", onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
