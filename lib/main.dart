import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio1/projectes/project1.dart';
import 'package:myportfolio1/projectes/project2.dart';
import 'package:myportfolio1/projectes/project3.dart';
import 'package:myportfolio1/projectes/project4.dart';
import 'package:myportfolio1/projectes/project5.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    routes: {
      "/project1": (context) => project1(),
      "/project2": (context) => project2(),
      "/project3": (context) => project3(),
      "/project4": (context) => project4(),
      "/project5": (context) => project5(),
    },
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isSmallScreen = screenWidth < 600;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        centerTitle: true,
        title: Text(
          "MY PORTFOLIO",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: isSmallScreen ? 20 : 24),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black38,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.white54),
              child: Padding(
                padding: EdgeInsets.only(top: 20.0, left: isSmallScreen ? 20.0 : 50.0),
                child: Text(
                  "Welcome",
                  style: TextStyle(fontSize: isSmallScreen ? 24 : 40, color: Colors.white),
                ),
              ),
            ),
            ...List.generate(5, (index) {
              return ListTile(
                leading: Icon(Icons.pix_rounded, color: Colors.white),
                title: Text('Project ${index + 1}', style: TextStyle(color: Colors.white)),
                onTap: () => Navigator.pushNamed(context, "/project${index + 1}"),
              );
            }),
          ],
        ),
      ),
      backgroundColor: Colors.black12,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: isSmallScreen ? 20.0 : 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: isSmallScreen ? 40 : 60,
                  child: Icon(Icons.account_circle_rounded, size: isSmallScreen ? 80 : 120),
                ),
                SizedBox(width: isSmallScreen ? 20 : 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Aayush Gupta", style: TextStyle(fontSize: isSmallScreen ? 24 : 40, color: Colors.white)),
                    Text("Andriod Developer", style: TextStyle(fontSize: isSmallScreen ? 16 : 20, color: Colors.white)),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  infoRow(Icons.school, "SGSITS", isSmallScreen),
                  infoRow(Icons.location_on_sharp, "INDORE", isSmallScreen),
                  infoRow(Icons.computer, "BTECH", isSmallScreen),
                  infoRow(Icons.phone, "9691923610", isSmallScreen),
                  infoRow(Icons.email, "ayush00768@gmail.com", isSmallScreen),
                  SizedBox(height: 50,),
                  InkWell(
                    onTap: () {
                      launchUrl(Uri.parse('https://drive.google.com/file/d/1kfdWQzdZC70sjRuj1ePje8IwBG7_fD79/view?usp=drive_link'));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow:const [
                          BoxShadow(color: Colors.blue,offset: Offset(0, -1),blurRadius: 5),
                          BoxShadow(color: Colors.red,offset: Offset(0, 1),blurRadius: 5),
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.pink,
                              Colors.blue.shade900,
                            ]),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: screenWidth/4,),
                          Text(
                            'Download CV',
                            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                color: Colors.white,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.bold),
                          ),
                             const SizedBox(width: 5,),
                          const Icon(FontAwesomeIcons.download,color: Colors.white70,size: 15,)

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Image(image: AssetImage('assets/What_is_Flutter_f648a606af.png')),
                ],
              ),
            ),
            Center(
              child: Text(
                "This app is created by Aayush",
                style: TextStyle(color: Colors.white, fontSize: isSmallScreen ? 12 : 16),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget infoRow(IconData icon, String text, bool isSmallScreen) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: isSmallScreen ? 40 : 60, color: Colors.white),
          SizedBox(width: 10),
          Text(text, style: TextStyle(fontSize: isSmallScreen ? 20 : 30, color: Colors.white)),
        ],
      ),
    );
  }
}
