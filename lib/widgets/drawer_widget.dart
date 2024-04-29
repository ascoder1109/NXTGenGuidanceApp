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
          ElevatedButton(
            onPressed: () {},
            child: Text("View Profile"),
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
    );
  }
}
