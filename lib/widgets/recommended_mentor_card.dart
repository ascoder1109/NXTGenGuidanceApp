import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecommendedMentorCard extends StatelessWidget {
  final String mentorName;
  final String avatarProfileLocation;
  RecommendedMentorCard(
      {super.key,
      required this.mentorName,
      required this.avatarProfileLocation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color.fromRGBO(66, 119, 142, 0.088),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
          height: 270,
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
              Text(
                "Specializes in:",
                style: TextStyle(fontSize: 15),
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
                      const Color.fromRGBO(66, 119, 142, 1)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 255, 255, 255)),
                ),
              )
            ],
          )),
    );
  }
}

class ChipBelowAvatarImage extends StatelessWidget {
  final String skill;
  const ChipBelowAvatarImage({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Chip(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        label: Text(skill));
  }
}
