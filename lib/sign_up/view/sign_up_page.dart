import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nxt_gen_guidance/colors.dart';
import 'package:nxt_gen_guidance/home/view/home_page.dart';
import 'package:nxt_gen_guidance/login/view/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                "Hello There!",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 72,
              ),
              Center(
                child: SvgPicture.asset(
                  "assets/images/sign_up_image.svg",
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
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Re-enter Password",
                    hintText: "Re-enter Password",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Sign Up!"))),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
                  },
                  child: const Text(
                    "Already a user? Tap here to Log In!",
                    style: TextStyle(
                        color: kBlueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                        color: Color.fromARGB(255, 85, 85, 85),
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
