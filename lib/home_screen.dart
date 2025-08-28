import 'package:flutter/material.dart';
import 'package:portfolio_flutter/widgets/about.dart';
import 'package:portfolio_flutter/widgets/contact.dart';
import 'package:portfolio_flutter/widgets/header_main.dart';
// import 'package:portfolio_flutter/constants/font_size.dart';
import 'package:portfolio_flutter/widgets/navbar.dart';
import 'package:portfolio_flutter/widgets/projects.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(key: _scaffoldKey, backgroundColor: Colors.amber),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Column(
            children: [
              NavBar(scaffoldKey: _scaffoldKey),
              // HeaderMain(),
              // AboutSection(),
              // ProjectsSection(),
              ContactSection(),
            ],
          ),
        ),
      ),
    );
  }
}
