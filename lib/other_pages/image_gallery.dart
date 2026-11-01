import 'package:circe_island_review/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ImageGallery());
}

class ImageGallery extends StatelessWidget {
  const ImageGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 200, 238, 255),
          title: Row(
            children: [
              Text(
                "TripHelper",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(175.0),
                child: Text(
                  "Discover More",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "Plan a Trip",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            //MAKE IT WORKABLE
            SizedBox(
              //SEARHC BAR
              width: 300,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                ),
              ),
            ),
            // Sign In Button
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 8.0,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  //NOT WORKABLE
                },
                child: Text("Sign In", style: TextStyle(color: Colors.black),),
              ),
            ),
          ],
        ),
        body: Center(
          child: Container(
            color: const Color.fromARGB(255, 243, 252, 253),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                        onPressed: () {
                          Navigator.pop(context, CirceReviewApp());
                        },
                        child: Text("Go Back to Overview", style: TextStyle(color: Colors.black)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding( //H300 W500
                          padding: const EdgeInsets.all(30),
                          child: Image.asset(
                                  'assets/images/Whitesands-Sunset-2.jpg',
                                  width: 500,
                                  height: 300,
                                  fit: BoxFit.cover,
                                ),
                        ),
                        Padding( //H300, W290
                          padding: const EdgeInsets.only(
                            top: 30,
                            bottom: 30,
                            right: 30,
                          ),
                          child: ColoredBox(
                            color: const Color.fromARGB(255, 200, 238, 255),
                            child: Image.asset(
                                  'assets/images/c7db90136e201b24dba8ae5b971377cc.jpg',
                                  width: 290,
                                  height: 300,
                                  fit: BoxFit.cover,
                                ),
                          ),
                        ),
                        Padding( //H300, W290
                          padding: const EdgeInsets.only(
                            top: 30,
                            bottom: 30,
                            right: 30,
                          ),
                          child: Image.asset(
                                  'assets/images/beach-front-i-kurtz-homes-naples-img~79c189d20277d733_14-7191-1-ed726ed.jpg',
                                  width: 290,
                                  height: 300,
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding( //H600, W500
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 30,
                            bottom: 30,
                          ),
                          child: Image.asset(
                                  'assets/images/ke-aloha-kaanapali-beach-sunset.jpg',
                                  width: 500,
                                  height: 600,
                                  fit: BoxFit.cover,
                                ),
                        ),
                        Column(
                          children: [
                            Padding( //H300, W610
                              padding: const EdgeInsets.only(right: 30, bottom: 30),
                              child: Image.asset(
                                  'assets/images/1_BoracayIsland_WhiteBeach_Philippines_shutterstock_401484094.jpg',
                                  width: 610,
                                  height: 300,
                                  fit: BoxFit.cover,
                                ),
                            ),
                            Row(
                              children: [
                                Padding( //H270, W610
                                  padding: const EdgeInsets.only(right: 30, bottom: 30),
                                  child: Image.asset(
                                  'assets/images/main_beach.jpg',
                                  width: 610,
                                  height: 270,
                                  fit: BoxFit.cover,
                                ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
