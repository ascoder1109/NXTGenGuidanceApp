import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nxt_gen_guidance/colors.dart';
import 'package:nxt_gen_guidance/pages/sign_up_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              const Text(
                "Welcome Back!",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 72,
              ),
              Center(
                child: SvgPicture.asset(
                  "assets/images/log_in_image.svg",
                  width: 240,
                  height: 240,
                ),
              ),
              const SizedBox(
                height: 72,
              ),
              const TextField(
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter your Email",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 16,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your Password",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Log In"))),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignUpPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Not a user? Tap here to Sign In!",
                    style: TextStyle(
                        color: kBlueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
