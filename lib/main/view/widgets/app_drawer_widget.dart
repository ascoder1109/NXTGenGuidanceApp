import 'package:flutter/material.dart';
import 'package:nxt_gen_guidance/colors.dart';

class AppDrawerWidget extends StatelessWidget {
  const AppDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(
            height: 64,
          ),
          CircleAvatar(
            radius: 64,
            child: Image.asset(
              "assets/images/avatar_image.png",
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "User Sharma",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(kBlueColor),
              foregroundColor: MaterialStateProperty.all<Color>(kWhiteColor),
            ),
            onPressed: () {},
            child: const Text("View Profile"),
          )
        ],
      ),
    );
  }
}
