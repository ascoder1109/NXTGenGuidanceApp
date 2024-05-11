import 'package:flutter/material.dart';
import 'package:nxt_gen_guidance/colors.dart';
import 'package:nxt_gen_guidance/meet/view/meet_page.dart';
import 'package:nxt_gen_guidance/settings/view/settings_page.dart';
import 'package:nxt_gen_guidance/student_profile/view/student_profile_view.dart';

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
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const StudentProfileView(),
                ),
              );
            },
            child: const Text("View Profile"),
          ),
          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text("Chat"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.compass_calibration),
            title: const Text("Discover"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.monitor),
            title: const Text("Meet"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MeetPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SettingPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
