import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import "package:portfolio_flutter/constants/responsive.dart";

class NavBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const NavBar({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Responsive.pagePadding(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Remi",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          !Responsive.isMobile(context)
              ? Row(
                  children: [
                    navItem("Home"),
                    navItem("About"),
                    navItem("Projects"),
                    navItem("Contacts"),
                  ],
                )
              : InkWell(
                  onTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                  child: Icon(Icons.menu),
                ),
        ],
      ),
    );
  }

  Widget navItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        title,
        style: const TextStyle(fontSize: 16, color: AppColors.lightGray),
      ),
    );
  }
}
