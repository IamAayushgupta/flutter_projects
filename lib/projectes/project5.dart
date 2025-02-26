import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class project5 extends StatelessWidget {
  const project5({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Recipo"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Center(child: Image(image: AssetImage('assets/Screenshot_20250226_235338.png'),height: screenHeight/3,width: screenWidth/2,)),
              SizedBox(height: 20,),
              Center(child: Text('Recipo App',style: TextStyle(color: Colors.white,fontSize: 30),)),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Recipo is a Flutter-based mobile application designed to simplify meal planning and cooking by providing users with a vast collection of recipes. Powered by the Edamam API, the app fetches detailed recipe information, including ingredients, nutritional values, and step-by-step cooking instructions. Users can search for recipes based on dietary preferences, cuisine types, and ingredient availability, making it an excellent tool for health-conscious individuals and cooking enthusiasts." ,style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("The app features an intuitive UI that enhances the user experience, allowing easy navigation and recipe discovery. Users can save their favorite recipes, create personalized meal plans, and even generate shopping lists based on selected ingredients. The integration with the Edamam API ensures access to an extensive database of diverse and healthy recipes, catering to different dietary needs such as vegetarian, keto, and gluten-free options" ,style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Additionally, Recipo supports advanced filtering, enabling users to find recipes that match specific calorie counts, cooking times, or allergen restrictions. With its seamless performance and user-friendly design, the app serves as a perfect companion for home cooks, fitness enthusiasts, and anyone looking to explore new culinary experiences. Whether you're a beginner or an expert chef, Recipo makes cooking easier, healthier, and more enjoyable." ,style: TextStyle(color: Colors.white,fontSize: 20),),
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
