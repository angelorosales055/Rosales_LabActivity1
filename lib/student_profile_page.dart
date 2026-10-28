import 'package:flutter/material.dart';

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Student Profile',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        elevation: 4,
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                // --- ACT I: The Grand Avatar ---
                Hero(
                  tag: 'profile-avatar',
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.3),
                          blurRadius: 20,
                          spreadRadius: 5,
                          offset: const Offset(0, 10),
                        )
                      ],
                    ),
                    child: const CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.blue,
                      child: Text(
                        'AR', 
                        style: TextStyle(
                          fontSize: 44,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                
                // --- ACT II: The Leading Man ---
                const Text(
                  'Gelo Rosales',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'BS Information Technology',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 36),
                
                // --- ACT III: The Details ---
                Card(
                  elevation: 8,
                  shadowColor: Colors.blue.withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Column(
                      children: [
                        // Scene 1: Student ID
                        ListTile(
                          leading: _buildIcon(Icons.badge),
                          title: const Text(
                            'Student ID',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text('555735'),
                        ),
                        const Divider(indent: 70, endIndent: 20, height: 1), 
                        
                        // Scene 2: Year Level
                        ListTile(
                          leading: _buildIcon(Icons.school),
                          title: const Text(
                            'Year Level',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text('3rd Year - BSIT'),
                        ),
                        const Divider(indent: 70, endIndent: 20, height: 1),

                        // Scene 3: Email
                        ListTile(
                          leading: _buildIcon(Icons.email),
                          title: const Text(
                            'Email',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text('a.rosales.555735@umindanao.edu.ph'),
                        ),
                        const Divider(indent: 70, endIndent: 20, height: 1),

                        // Scene 4: Location
                        ListTile(
                          leading: _buildIcon(Icons.location_on),
                          title: const Text(
                            'Location',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text('Maharlika Village, Maa Davao City, Philippines, 8000'),
                        ),
                        const Divider(indent: 70, endIndent: 20, height: 1),

                        // Scene 5: Contact
                        ListTile(
                          leading: _buildIcon(Icons.phone),
                          title: const Text(
                            'Contact',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text('+63 976 045 9082'), // Update with your actual number
                        ),
                      ],
                    ),
                  ),
                ),
                
                const SizedBox(height: 24),

                // --- ACT IV: About Me, Skills & Hobbies ---
                Card(
                  elevation: 8,
                  shadowColor: Colors.blue.withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // --- About Me Text ---
                        const Row(
                          children: [
                            Icon(Icons.person, color: Colors.blueAccent),
                            SizedBox(width: 8),
                            Text(
                              'About Me',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          "I'm a 3rd-year IT student who thrives on code. Whether I'm designing relational databases in MySQL, structuring MVC backends in C#, or crafting mobile interfaces in Flutter, I enjoy building scalable tools that make a real-world impact. Outside of development, I spend my free time playing online games and traveling to explore new places.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child: Divider(height: 1),
                        ),
                        
                        // --- Tech Stack Section ---
                        const Row(
                          children: [
                            Icon(Icons.code, color: Colors.blueAccent),
                            SizedBox(width: 8),
                            Text(
                              'Tech Stack & Interests',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            _buildSkillChip('Flutter / Dart'),
                            _buildSkillChip('Laravel 11 / PHP'),
                            _buildSkillChip('C# / .NET'),
                            _buildSkillChip('Python'),
                            _buildSkillChip('MySQL'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper widget to keep the code clean and avoid repeating the decoration block
  Widget _buildIcon(IconData iconData) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(iconData, color: Colors.blue),
    );
  }

  // Helper widget for skill chips
  Widget _buildSkillChip(String label) {
    return Chip(
      label: Text(
        label,
        style: const TextStyle(
          color: Colors.blueAccent,
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: Colors.blue.withOpacity(0.1),
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}