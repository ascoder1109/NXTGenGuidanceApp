import 'package:flutter/material.dart';
import 'package:nxt_gen_guidance/colors.dart';
import 'package:nxt_gen_guidance/widgets/community_card.dart';
import 'package:nxt_gen_guidance/widgets/drawer_widget.dart';
import 'package:nxt_gen_guidance/widgets/recommended_mentor_card.dart';
import 'package:nxt_gen_guidance/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Search'),
    Text('Chat'),
    Text('Settings'),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final backgroundColor =
        isDarkMode ? kAppDarkBackgroundColor : kAppLightBackgroundColor;
    final textColor = isDarkMode ? Colors.white : Colors.black;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text("NXTGenGuidance"),
      ),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(17.0),
              child: SizedBox(
                child: Text(
                  "Recommended Mentors",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
              ),
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
            ),
            const Padding(
              padding: EdgeInsets.all(17.0),
              child: SizedBox(
                child: Text(
                  "Community Mentors",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                children: [
                  CommunityCard(
                    communityImageLocation: "assets/images/ml_community.png",
                  ),
                  CommunityCard(
                    communityImageLocation:
                        "assets/images/flutter_community.png",
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(17.0),
              child: SizedBox(
                child: Text(
                  "Recent",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Color.fromARGB(255, 165, 187, 248),
        selectedItemColor: kBlueColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
