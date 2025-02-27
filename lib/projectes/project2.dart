import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class project2 extends StatelessWidget {
  const project2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tic Tac Toe"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Center(child: Image(image: AssetImage('assets/Screenshot_2025-02-24-22-38-31-912_com.example.tic_tac.jpg'),height: screenHeight/3,width: screenWidth/2,)),
              SizedBox(height: 20,),
              Center(child: Text('Tic Tac Toe ',style: TextStyle(color: Colors.white,fontSize: 30),)),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("My Tic Tac Toe project is a simple yet engaging mobile game developed using Flutter. This project aims to provide an interactive and visually appealing version of the classic game, playable on both Android and iOS devices. The game features a smooth user interface with responsive touch controls, making it easy and fun to play." ,style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("The application includes two-player modes. The two-player mode allows two users to play on the same device, taking turns to place their marks on the grid. The app also highlights winning moves and ensures a seamless gaming experience with smooth animations and sound effects." ,style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Built with Flutter and Dart, the project follows a modular structure, making it easy to maintain and extend with new features. The UI is designed with Material Design principles, ensuring a clean and modern look. This project serves as a great example of Flutter’s capabilities in developing interactive mobile applications and is a perfect blend of fun and learning." ,style: TextStyle(color: Colors.white,fontSize: 20),),
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
