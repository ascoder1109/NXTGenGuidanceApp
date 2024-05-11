import 'package:double_tap_to_exit/double_tap_to_exit.dart';
import 'package:flutter/material.dart';
import 'package:nxt_gen_guidance/colors.dart';
import 'package:nxt_gen_guidance/home/view/home_page.dart';
import 'package:nxt_gen_guidance/meet/view/meet_page.dart';
import 'package:nxt_gen_guidance/notifications/view/notification_page.dart';
import 'package:nxt_gen_guidance/search/view/search_page.dart';
import 'package:nxt_gen_guidance/settings/view/settings_page.dart';
import 'package:nxt_gen_guidance/main/view/widgets/app_drawer_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> pages = [
    const HomePage(),
    const MeetPage(),
    const SearchPage(),
    const ChatPage(),
    const NotificationPage()
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return DoubleTapToExit(
      snackBar: const SnackBar(content: Text("Tap/Swipe back again to exit!")),
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              "NXTGenGuidance",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          drawer: const AppDrawerWidget(),
          body: pages[currentPage],
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: kAppLightBackgroundColor,
              selectedItemColor: kBlueColor,
              unselectedItemColor: const Color.fromARGB(255, 126, 126, 126),
              currentIndex: currentPage,
              onTap: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.monitor), label: "Meet"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.message), label: "Chat"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications), label: "Notifications")
              ])),
    );
  }
}
