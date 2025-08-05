import 'package:flutter/material.dart';
import 'widgets/blog_card.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            BlogCard(),
            BlogCard(),
            BlogCard(),
            BlogCard(),
            BlogCard(),
            BlogCard(),
          ],
        ),
      ),
    );
  }
}