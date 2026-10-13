import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: const Color(0xFFF5F6FA),
      ),
      home: const HomePage(),
    );
  }
}



//region Home Page
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Profile'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {
              // Navigate to About Me page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutPage(),
                ),
              );
            },
            
            child: const Text(
              'About Me',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),


      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 500,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Student image
                const CircleAvatar(
                  radius: 65,
                  backgroundImage:  AssetImage('assets/profile.png'
                  ),
                ),

                const SizedBox(height: 20),

                // Student name
                const Text(
                  'Tommy Liu',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Diploma in Information Technology',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),

                const SizedBox(height: 20),

                const Text(
                  'Hello! I am a student who enjoys coding, '
                  'web design and learning new technologies.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),

                const SizedBox(height: 25),

                // Button to open About Me page
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AboutPage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.person),
                  label: const Text('More About Me'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//region endpoint



//region About Me Page
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 500,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'My Information',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Student information
                const Text(
                  'Name: Tommy Liu',
                  style: TextStyle(fontSize: 18),
                ),

                const SizedBox(height: 15),

                const Text(
                  'Course: Information Technology',
                  style: TextStyle(fontSize: 18),
                ),

                const SizedBox(height: 15),

                const Text(
                  'Skills',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                // Row displays skill icons and text
                const Row(
                  children: [
                    Icon(Icons.code, color: Colors.indigo),
                    SizedBox(width: 10),
                    Text('HTML, CSS and Dart'),
                  ],
                ),

                const SizedBox(height: 10),

                const Row(
                  children: [
                    Icon(Icons.palette, color: Colors.indigo),
                    SizedBox(width: 10),
                    Text('Digital Art and Design'),
                  ],
                ),

                const SizedBox(height: 25),

                const Text(
                  'My Hobbies',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'I enjoy drawing, playing games and '
                  'learning programming.',
                  style: TextStyle(fontSize: 16),
                ),

                const SizedBox(height: 25),

                // Button to return to Home Page
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.home),
                    label: const Text('Back to Home'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//region endpoint