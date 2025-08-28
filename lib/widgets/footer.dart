import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.black,
      child: Column(
        children: const [
          Text(
            "Aderemi Abiodun",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Designed with love, all rights reserved for Aderemi Abiodun.",
            style: TextStyle(color: AppColors.lightGray),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.code, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.link, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}
