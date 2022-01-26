import 'package:bloc_app/constant/constants.dart';
import 'package:bloc_app/core/hexColor.dart';
import 'package:flutter/material.dart';

class CustomDarwer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20, vertical: 1);
  @override
  Widget build(BuildContext context) {
    const urlImage =
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

    return SizedBox(
      child: Drawer(
        child: Material(
          color: HexColor(drawerColor),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // SizedBox20(),

              buildHeader(
                  urlImage: urlImage, name: "Jan Doe", onClicked: () => {}),
              Container(
                padding: padding,
                child: Column(
                  children: [
                    buildMenuItem(
                      text: 'Home',
                      icon: Icons.home,
                      onClicked: () => selectedItem(context, 0),
                    ),
                    buildMenuItem(
                      text: 'Music',
                      icon: Icons.music_note,
                      onClicked: () => selectedItem(context, 1),
                    ),
                    buildMenuItem(
                      text: 'Weather',
                      icon: Icons.cloud,
                      onClicked: () => selectedItem(context, 2),
                    ),
                    buildMenuItem(
                      text: 'Setting',
                      icon: Icons.settings,
                      onClicked: () => selectedItem(context, 3),
                    ),
                    buildMenuItem(
                      text: 'Policy & FQAs',
                      icon: Icons.policy,
                      onClicked: () => selectedItem(context, 1),
                    ),
                    buildMenuItem(
                      text: 'Log out',
                      icon: Icons.logout,
                      onClicked: () => selectedItem(context, 8),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          color: HexColor(drawerColor),
          height: 180,
          padding: const EdgeInsets.only(top: 40, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(radius: 40, backgroundImage: NetworkImage(urlImage)),
              const SizedBox(height: 10),
              Text(
                name,
                style: drawerHeaderTextStyle,
              ),
              const SizedBox(height: 4),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    onClicked,
  }) {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(right: 50),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(text, style: drawerTextStyle),
        onTap: onClicked,
      ),
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => const Home(),
        // ));
        break;
      case 1:
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => const Music(),
        // ));
        break;
      case 2:
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => const Weather(),
        // ));
        break;
      case 3:
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => Setting(),
        // ));
        break;
    }
  }
}
