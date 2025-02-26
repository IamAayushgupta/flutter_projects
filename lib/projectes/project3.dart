import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class project3 extends StatelessWidget {
  const project3({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        centerTitle: true,
        title: Text("AI ChatBot"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Center(child: Image(image: AssetImage('assets/Screenshot_20250226_123505.png'),height: screenHeight/3,width: screenWidth/2,)),
              SizedBox(height: 20,),
              Center(child: Text('Mausam App',style: TextStyle(color: Colors.white,fontSize: 30),)),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Mausam App is a Flutter-based weather application that provides real-time weather updates using data from OpenWeatherMap.org. The app offers users accurate and up-to-date information on temperature, humidity, wind speed, and other meteorological parameters for their selected location. With a sleek and user-friendly interface, Mausam App ensures a seamless experience for checking weather forecasts, whether for daily use or travel planning." ,style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("The app fetches data from OpenWeatherMap’s API, processing it to display detailed weather conditions with intuitive graphics and icons. Users can search for any city, and the app will retrieve precise weather data, including current conditions and multi-day forecasts. Additionally, the app supports geolocation, allowing users to automatically get weather updates based on their current position." ,style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Mausam App is designed with a modern UI, leveraging Flutter’s capabilities for smooth animations and responsive design across multiple devices. It is optimized for both Android and iOS platforms, ensuring accessibility for a wide range of users. The project demonstrates the power of Flutter’s API integration and UI customization, making it a practical and educational application for weather tracking. Future enhancements may include features like severe weather alerts, air quality index, and customizable themes." ,style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              SizedBox(height: 20,),
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