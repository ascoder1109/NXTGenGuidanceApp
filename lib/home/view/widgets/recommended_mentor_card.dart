import 'package:flutter/material.dart';
import 'package:nxt_gen_guidance/colors.dart';
import 'package:nxt_gen_guidance/mentor_details/view/mentor_details_page.dart';

class RecommendedMentorCard extends StatelessWidget {
  const RecommendedMentorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      height: 240,
      child: Card(
        elevation: 0,
        color: kWhiteColor,
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            CircleAvatar(
              radius: 32,
              child: Image.asset(
                "assets/images/avatar_image.png",
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "John Doe",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Senior Software Engineer",
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
            const Text(
              "Amazon",
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(kBlueColor),
                foregroundColor: MaterialStateProperty.all<Color>(kWhiteColor),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MentorDetailsPage(),
                ));
              },
              child: const Text("View Profile"),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
