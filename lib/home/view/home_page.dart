import 'package:double_tap_to_exit/double_tap_to_exit.dart';
import 'package:flutter/material.dart';
import 'package:nxt_gen_guidance/colors.dart';
import 'package:nxt_gen_guidance/home/view/widgets/recent_mentor_card.dart';
import 'package:nxt_gen_guidance/home/view/widgets/recommended_mentor_card.dart';
import 'package:nxt_gen_guidance/home/view/widgets/app_drawer_widget.dart';
import 'package:nxt_gen_guidance/notification/view/notification_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DoubleTapToExit(
      snackBar: SnackBar(content: Text("Swipe/Tap Back Again to Exit!")),
      child: Scaffold(
        backgroundColor: kAppLightBackgroundColor,
        appBar: AppBar(
          backgroundColor: kAppLightBackgroundColor,

          // automaticallyImplyLeading: false,
          title: const Text(
            "NXTGenGuidance",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications), // Bell icon
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationPage()),
                );
              },
            ),
          ],
        ),
        drawer: AppDrawerWidget(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: SearchBar(
                  hintText: "Search",
                  leading: Icon(Icons.search),
                ),
              ),
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
          ),
        ),
      ),
    );
  }
}
