import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            child: Image.asset(
              "assets/images/avatar_image.png",
            ),
            radius: 64,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
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
