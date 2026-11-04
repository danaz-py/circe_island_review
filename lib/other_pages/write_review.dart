
import 'package:flutter/material.dart';
import 'package:circe_island_review/review_classes/reviews.dart';

void main() {
  runApp(WriteReview());
}

// ignore: must_be_immutable
class WriteReview extends StatelessWidget {
  WriteReview({super.key});
  TextEditingController responseController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController ratingController = TextEditingController();
  TextEditingController yearController = TextEditingController();

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
                child: Text("Sign In", style: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
        body: Center(
          child: Container(
            color: const Color.fromARGB(255, 243, 252, 253),
            child: SingleChildScrollView(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(100.0),
                      child: SizedBox(
                        width: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tell us, how was your visit? - TripHelper",
                              
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: ColoredBox(
                                color: const Color.fromARGB(255, 200, 238, 255),
                                child: SizedBox(
                                  height: 300,
                                  width: 300,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/main_beach.jpg',
                                          width: 200,
                                          height: 200,
                                          fit: BoxFit.cover,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 12.0,
                                          ),
                                          child: Text(
                                            "Circe's Island Resort",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                        Text(
                                          "The Wine Dark Seas, Aeaea",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: Text(
                              "How would you rate your experience?",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 100.0),
                            child: SizedBox(
                              height: 50,
                              width: 500,
                              child: TextField(
                                controller: ratingController,
                                decoration: InputDecoration(
                                  labelText: "Input integer between 1-5",
                                ),
                              ),
                            ),
                          ),
                          Text("Name", style: TextStyle(fontSize: 18)),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 50.0),
                            child: SizedBox(
                              height: 50,
                              width: 500,
                              child: TextField(
                                controller: titleController,
                                decoration: InputDecoration(
                                  labelText: "Put a name to your review",
                                ),
                              ),
                            ),
                          ),
                          Text("Year", style: TextStyle(fontSize: 18)),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 100.0),
                            child: SizedBox(
                              height: 50,
                              width: 500,
                              child: TextField(
                                controller: yearController,
                                decoration: InputDecoration(
                                  labelText: "In BCE please",
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: Text(
                              "Write your Review",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 200,
                            width: 500,
                            child: TextField(
                              controller: responseController,
                              minLines: 4,
                              maxLines: 8,
                              decoration: InputDecoration(
                                labelText: "Share your experience...",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
          
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                fixedSize: const Size(200, 50),
                              ),
                              onPressed: () {
                                if (responseController.text.isNotEmpty &&
                                    ratingController.text.isNotEmpty &&
                                    titleController.text.isNotEmpty &&
                                    yearController.text.isNotEmpty) {
                                  final newSession = Review(
                                    name: titleController.text,
                                    year: int.tryParse(yearController.text) ?? 0,
                                    text: responseController.text,
                                    stars:
                                        int.tryParse(ratingController.text) ?? 0,
                                  );
          
                                  Navigator.pop(context, newSession);
                                }
                              },
                              child: Text(
                                "Submit Review",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
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
