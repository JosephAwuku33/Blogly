import 'package:blogly/providers/courses_provider.dart';
import 'package:blogly/pages/profile_page.dart';
import 'package:blogly/pages/single_page_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final coursesProvider =
        Provider.of<CoursesProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
              icon: const Icon(Icons.person_2_rounded)),
          Switch(
            value: Provider.of<ThemeModel>(context).themeData.brightness ==
                Brightness.light,
            onChanged: (value) {
              Provider.of<ThemeModel>(context, listen: false).toggleTheme();
            },
          )
        ],
        centerTitle: false,
        //iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Welcome to Blogly",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Center(
                child: Text(
                  "Blogy, A minimal tech blog site on the go!!",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 105, 102, 102),
                      fontStyle: FontStyle.italic,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.network(
                    "https://images.unsplash.com/photo-1617040619263-41c5a9ca7521?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Top Courses",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(193, 0, 0, 0),
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              FutureBuilder<void>(
                  future: coursesProvider.loadCourses(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator(); // Show a loading indicator
                    } else if (snapshot.hasError) {
                      return const Text('Error loading courses');
                    } else {
                      return Consumer<CoursesProvider>(
                          builder: (context, coursesProvider, _) {
                        return ListView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.only(top: 15, bottom: 15),
                          physics: const ScrollPhysics(),
                          itemCount: coursesProvider.courses.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                // Navigator.of(context).pop();
                                // Navigator.of(context).pushNamed();
                                // Navigator.of(context).push();
                                // Navigator.of(context).pushReplacement();
                                // Navigator.of(context).pushReplacementNamed();
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => SinglePageDetails(
                                      courses: coursesProvider.courses[index],
                                    ),
                                  ),
                                );
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, bottom: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width,
                                      child: Image.network(
                                        coursesProvider.courses[index].imageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      coursesProvider.courses[index].title,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      coursesProvider.courses[index].name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      });
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
