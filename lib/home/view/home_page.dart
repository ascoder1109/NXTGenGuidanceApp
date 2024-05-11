import 'package:flutter/material.dart';
import 'package:nxt_gen_guidance/home/view/widgets/recent_mentor_card.dart';
import 'package:nxt_gen_guidance/home/view/widgets/recommended_mentor_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Recommended Mentors",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              RecommendedMentorCard(),
              RecommendedMentorCard(),
              RecommendedMentorCard(),
              RecommendedMentorCard(),
              RecommendedMentorCard(),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Recent",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        RecentMentorCard()
      ],
    );
  }
}
