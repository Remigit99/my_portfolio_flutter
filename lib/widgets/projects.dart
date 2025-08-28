import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/models/project_model.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Projects",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: Project.projects.map((p) => _ProjectCard(p)).toList(),
          ),
        ],
      ),
    );
  }
}

class _ProjectCard extends StatelessWidget {
  final Project project;
  const _ProjectCard(this.project);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(project.image, height: 150, fit: BoxFit.cover),
          const SizedBox(height: 10),
          Text(
            project.title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            project.description,
            style: const TextStyle(color: AppColors.lightGray),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                ),
                onPressed: () {},
                child: const Text("View Github"),
              ),
              const SizedBox(width: 10),
              OutlinedButton(
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () {},
                child: const Text("View project"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
