import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course Cards UI',
      debugShowCheckedModeBanner: false,
      home: CourseGridScreen(),
    );
  }
}

class CourseGridScreen extends StatelessWidget {
  final List<Map<String, String>> courses = [
    {
      'title': 'Full Stack Web Development with JavaScript (MERN)',
      'image': 'https://i.ibb.co/pfpxB9N/mern.jpg',
      'batch': 'ব্যাচ ৯৯',
      'duration': '৬ মাস ব্যাচ',
      'hours': '৬ ঘণ্টা ব্যাচ'
    },
    {
      'title': 'Full Stack Web Development with Python, Django & React',
      'image': 'https://i.ibb.co/RzLrjbt/python-django.jpg',
      'batch': 'ব্যাচ ৬',
      'duration': '৪০ দিন ব্যাচ',
      'hours': '৮৬ ঘণ্টা ব্যাচ'
    },
    {
      'title': 'Full Stack Web Development with ASP.Net Core',
      'image': 'https://i.ibb.co/gMfh0rM/aspnetcore.jpg',
      'batch': 'ব্যাচ ৭',
      'duration': '৩৯ দিন ব্যাচ',
      'hours': '৭৫ ঘণ্টা ব্যাচ'
    },
    {
      'title': 'SQA: Manual & Automated Testing',
      'image': 'https://i.ibb.co/2KcMgKz/sqa.jpg',
      'batch': 'ব্যাচ ২৩',
      'duration': '৪৯ দিন ব্যাচ',
      'hours': '৫৫ ঘণ্টা ব্যাচ'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Courses"),
        centerTitle: true,
        backgroundColor: Colors.teal[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: courses.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // ✅ 2 cards per row
            childAspectRatio: 0.70, // Adjust card height
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final course = courses[index];
            return CourseCard(course: course);
          },
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final Map<String, String> course;

  const CourseCard({required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image section
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              course['image']!,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 6),
          // Details section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _infoChip(course['batch']!),
                    const SizedBox(width: 4),
                    _infoChip(course['hours']!),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    _infoChip(course['duration']!),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  course['title']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13.5,
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 35),
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("বিস্তারিত দেখুন →"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 10.5, fontWeight: FontWeight.w500),
      ),
    );
  }
}
