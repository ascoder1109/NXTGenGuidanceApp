import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/avatar_image.png"),
            radius: 70,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "User Sharma",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "View Profile",
                style: TextStyle(
                    fontSize: 20, color: Color.fromRGBO(66, 119, 142, 1)),
              ))
        ],
      ),
    );
  }
}
