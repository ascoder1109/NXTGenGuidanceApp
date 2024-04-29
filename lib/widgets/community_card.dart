import 'package:flutter/material.dart';

class CommunityCard extends StatelessWidget {
  final String communityImageLocation;
  const CommunityCard({super.key, required this.communityImageLocation});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Community Tap");
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          height: 200,
          width: 400,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(communityImageLocation))),
        ),
      ),
    );
  }
}
