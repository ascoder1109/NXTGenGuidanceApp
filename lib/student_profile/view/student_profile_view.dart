import 'package:flutter/material.dart';
import 'package:nxt_gen_guidance/colors.dart';
import 'package:nxt_gen_guidance/student_profile/view/widgets/student_about_card.dart';

class StudentProfileView extends StatelessWidget {
  const StudentProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppLightBackgroundColor,
      appBar: AppBar(
        backgroundColor: kAppLightBackgroundColor,
        title: Text("Student Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            Center(
              child: CircleAvatar(
                radius: 64,
                child: Image.asset(
                  "assets/images/avatar_image.png",
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: const Text(
                "User Sharma",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            Center(
              child: const Text(
                "@usersharma69420",
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "About Me",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            StudentAboutCard()
          ],
        ),
      ),
    );
  }
}
