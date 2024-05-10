import 'package:flutter/material.dart';
import 'package:nxt_gen_guidance/colors.dart';

class RecentMentorCard extends StatelessWidget {
  const RecentMentorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Image.asset("assets/images/avatar_image.png"),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "John Doe",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "Senior Software Engineer @Amazon",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ],
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(kBlueColor),
              foregroundColor: MaterialStateProperty.all<Color>(kWhiteColor),
            ),
            onPressed: () {},
            child: const Text("View Profile"),
          ),
        ],
      ),
    );
  }
}
