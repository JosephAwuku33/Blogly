import 'package:flutter/material.dart';
import '../data/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined))
        ],
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.black),
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
              const Text(
                "Hello there,",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Welcome to the flutter class",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 105, 102, 102),
                    fontSize: 16),
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.network(
                    "https://images.unsplash.com/photo-1686956222311-2e1bb5bb1b0a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60"),
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
              ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                physics: const ScrollPhysics(),
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigator.of(context).pop();
                      // Navigator.of(context).pushNamed();
                      // Navigator.of(context).push();
                      // Navigator.of(context).pushReplacement();
                      // Navigator.of(context).pushReplacementNamed();
                      /*Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PageDetails(
                            courses: courses[index],
                          ),
                        ),
                      );
                      */
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 250,
                            width: MediaQuery.of(context).size.width,
                            child: Image.network(
                              courses[index].imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            courses[index].title,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            courses[index].name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
