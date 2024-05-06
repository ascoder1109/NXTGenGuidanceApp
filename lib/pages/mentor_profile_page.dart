import 'package:flutter/material.dart';

class MentorProfilePage extends StatelessWidget {
  const MentorProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(249, 250, 251, 255),
      appBar: AppBar(
        title: const Text("Mentor Profile"),
      ),
      body: const Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/avatar_image.png"),
                radius: 100,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: const Text(
                "John Doe",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Senior Software Engineer at Amazon",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "ML Research Scientist gone Entrepreneur helping SWE, SDM, and MLEs getting deeper into research.",
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 10, 38, 118)),
            ),
          ],
        ),
      ),
    );
  }
}
