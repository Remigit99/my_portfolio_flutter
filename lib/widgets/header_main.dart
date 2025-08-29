import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/constants/responsive.dart';

class HeaderMain extends StatelessWidget {
  const HeaderMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Responsive.pagePadding(context),
      child: Responsive.isMobile(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _buildContent(),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _buildContent(),
            ),
    );
  }

  List<Widget> _buildContent() {
    return [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Hello.",
            style: TextStyle(fontSize: 32, color: AppColors.primary),
          ),
          const SizedBox(height: 10),
          const Text(
            "I’m Aderemi Abiodun",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          const Text("Software Developer", style: TextStyle(fontSize: 28)),
          const SizedBox(height: 20),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                ),
                onPressed: () {},
                child: const Text(
                  "Got a project?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 10),
              OutlinedButton(
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () {},
                child: const Text("My resume"),
              ),
            ],
          ),
        ],
      ),
      // Responsive.isMobile() ? SizedBox(height: 60) : null,
      SizedBox(height: 60),
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset("assets/images/Remi_2.jpg", width: 250),
      ),
    ];
  }
}
