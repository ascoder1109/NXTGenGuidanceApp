import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nxt_gen_guidance/pages/mentor_profile_page.dart';

class RecommendedMentorCard extends StatelessWidget {
  final String mentorName;
  final String avatarProfileLocation;
  RecommendedMentorCard(
      {super.key,
      required this.mentorName,
      required this.avatarProfileLocation});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => MentorProfilePage()));
      },
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          height: 300,
          width: 210,
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              CircleAvatar(
                backgroundImage: AssetImage(avatarProfileLocation),
                radius: 40,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                mentorName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Senior Software Engineer at Amazon",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 5,
                  children: [
                    ChipBelowAvatarImage(
                      skill: "DSA",
                    ),
                    ChipBelowAvatarImage(
                      skill: "MERN Stack",
                    ),
                    ChipBelowAvatarImage(
                      skill: "Competitive Programming",
                    ),
                    ChipBelowAvatarImage(
                      skill: "Machine Learning",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Book Mentorship"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 10, 38, 118)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 255, 255, 255)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChipBelowAvatarImage extends StatelessWidget {
  final String skill;
  const ChipBelowAvatarImage({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Chip(
        backgroundColor: Color.fromARGB(255, 236, 237, 240),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        side: BorderSide.none,
        label: Text(skill));
  }
}
