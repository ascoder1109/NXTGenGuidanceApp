import 'package:flutter/material.dart';
import 'package:nxt_gen_guidance/widgets/recent_mentor_card.dart';
import 'package:nxt_gen_guidance/widgets/recommended_mentor_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
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
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              "Recent",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          RecentMentorCard()
        ],
      ),
    );
  }
}
