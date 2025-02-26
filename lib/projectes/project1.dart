import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class project1 extends StatelessWidget {
  const project1({super.key});


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
              Center(child: Image(image: AssetImage('assets/Screenshot_2025-02-24-22-36-36-150_com.example.ai_chatbot.jpg'),height: screenHeight/3,width: screenWidth/2,)),
              SizedBox(height: 20,),
              Text('AI Chatbot using Gemini API',style: TextStyle(color: Colors.white,fontSize: 30),),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("AI Chatbot using Gemini API, is an intelligent chatbot application designed to provide seamless and dynamic conversations. Built using Flutter, this cross-platform app ensures smooth performance on both Android and iOS devices. The chatbot leverages Google's Gemini API, a powerful AI model, to process natural language inputs and generate human-like responses." ,style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("The app features a sleek and intuitive user interface, enhancing user engagement with real-time responses and contextual understanding. It supports multiple conversation modes, allowing users to interact naturally while the chatbot adapts based on queries. Additionally, the project integrates voice input, making it more accessible and user-friendly." ,style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Security and efficiency are key focuses, with API requests optimized for faster response times. The chatbot can be used for general Q&A, personal assistance, and even task automation. With its AI-driven capabilities, the app provides an innovative solution for users seeking an interactive and intelligent virtual assistant. Future updates may include additional customization options and expanded functionalities, making it a versatile and evolving AI-powered chatbot." ,style: TextStyle(color: Colors.white,fontSize: 20),),
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