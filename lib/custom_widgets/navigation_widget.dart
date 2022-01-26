import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget {
  Widget buildNavigationIcons(IconData icon, VoidCallback onPressed) =>
      InkWell(onTap: onPressed, child: Icon(icon));

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(color: Colors.grey),
            ],
            color: Theme.of(context).primaryColor,
            // borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Icon(Icons.home_rounded),
              // Icon(Icons.search),
              // Icon(Icons.camera_alt),
              // Icon(Icons.notifications),
              // Icon(Icons.person)
              buildNavigationIcons(Icons.home_rounded, () {}),
              buildNavigationIcons(Icons.search, () {}),
              buildNavigationIcons(Icons.camera_alt, () {}),
              buildNavigationIcons(Icons.notifications, () {}),
              buildNavigationIcons(Icons.person, () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Profile()));
              }),
            ],
          ),
        ),
      );
}
