import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class project4 extends StatelessWidget {
  const project4({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        centerTitle: true,
        title: Text("SGSITS APP"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Center(child: Image(image: AssetImage('assets/Screenshot_20250226_131109.png'),height: screenHeight/3,width: screenWidth/2,)),
              SizedBox(height: 20,),
              Center(child: Text('SGSITS Mobile App',style: TextStyle(color: Colors.white,fontSize: 30),)),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("SGSITS Mobile App is a comprehensive Flutter-based college application designed to enhance the academic experience of students. The app allows students to seamlessly track their academic progress, monitor attendance, and stay updated with their class schedules. One of its standout features is the smart notification system, which sends timely reminders 10 minutes before a class, ensuring students never miss a session" ,style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Beyond attendance and scheduling, the app provides various essential functionalities tailored to streamline student life. With an intuitive and user-friendly interface, it simplifies access to important college updates, academic records, and announcements. The SGSITS Mobile App acts as a personal academic assistant, helping students stay organized and make the most out of their college journey." ,style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Designed with efficiency in mind, the app leverages Flutter’s powerful UI capabilities to ensure smooth navigation and responsiveness across different devices. Whether you're managing your coursework, checking attendance, or preparing for your next class, SGSITS Mobile App is the perfect companion to keep you on track and informed at all times." ,style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  launchUrl(Uri.parse('https://github.com/IamAayushgupta/SGSITS.git'));
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
                        'GitHub link',
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
            ],
          ),
        ),
      ),

    );

  }
}