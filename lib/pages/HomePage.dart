import 'package:flutter/material.dart';
import 'package:nxt_gen_guidance/widgets/SearchBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 78,
        title: const Text("NXTGenGuidance"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/avatar_image.png"),
              radius: 24,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSearchBar(),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: SizedBox(
                child: Text(
              "Recommended Mentors",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
          ),
          Row(
            children: [
              Card(
                child: Container(
                  child: Text("Hello"),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
