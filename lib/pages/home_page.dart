import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nxt_gen_guidance/widgets/drawer_widget.dart';
import 'package:nxt_gen_guidance/widgets/recommended_mentor_card.dart';
import 'package:nxt_gen_guidance/widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NXTGenGuidance"),
      ),
      drawer: DrawerWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSearchBar(),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: SizedBox(
                child: Text(
              "Recommended Mentors",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            )),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 6,
              children: [
                RecommendedMentorCard(
                  mentorName: "John Doe",
                  avatarProfileLocation: "assets/images/avatar_image.png",
                ),
                RecommendedMentorCard(
                  mentorName: "Jane Doe",
                  avatarProfileLocation: "assets/images/avatar_image.png",
                ),
                RecommendedMentorCard(
                  mentorName: "Max Mustermann",
                  avatarProfileLocation: "assets/images/avatar_image.png",
                ),
                RecommendedMentorCard(
                  mentorName: "John Doe",
                  avatarProfileLocation: "assets/images/avatar_image.png",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
