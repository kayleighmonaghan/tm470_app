import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Action when card is tapped
      },
      child: Card(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image at the top, full width
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://images.unsplash.com/photo-1617093727343-374698b1b08d?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Article Title',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                children: const [
                  Icon(Icons.person, size: 16),
                  SizedBox(width: 4),
                  Text('John Smith'),
                  SizedBox(width: 12),
                  Icon(Icons.timer, size: 16),
                  SizedBox(width: 4),
                  Text('10 minute read'),
                ],
              ),
              const SizedBox(height: 8),
              const Text('Article abstract goes here.'),
            ],
          ),
        ),
      ),
    );
  }
}