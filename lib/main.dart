import 'package:circe_island_review/other_pages/image_gallery.dart';
import 'package:circe_island_review/other_pages/write_review.dart';
import 'package:circe_island_review/review_classes/reviews.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: CirceReviewApp(),
      theme: ThemeData(fontFamily: 'Poppins'),
    ),
  );
}

class CirceReviewApp extends StatefulWidget {
  const CirceReviewApp({super.key});

  @override
  State<CirceReviewApp> createState() => _CirceReviewAppState();
}

class _CirceReviewAppState extends State<CirceReviewApp> {
  var heart_color = Colors.white;
  final manager = ReviewsManager(); //reviewsss

  double get excellentReviews => 25 / 1000;
  double get goodReviews => 50 / 1000;
  double get averageReviews => 25 / 1000;
  double get poorReviews => 100 / 1000;
  double get terribleReviews => 800 / 1000;
  @override
  void initState() {
    //build() gets called MANY times, not just once.
    super.initState();

    manager.addReview(
      Review(
        name: "Odysseus",
        year: 1190,
        text:
            "Aeaea is the most beautiful tropical getaway in the wine dark sea. The host, Circe, is incredibly attentive (and sexy) once you get to know her! She serves top-tier wine and dishes that are out of this world. The accommodations are opulent, surrounded by mountain lions and wolves that are tame. My crew and I only planned to stay for a weekend, but we ended up extending our trip for a whole year. Just a quick heads-up: make sure to bring some Moly herb if you want to keep your head clear. Highly recommend!",
        stars: 5,
        response:
            "Thank you for the glowing review, Odysseus! It was truly a pleasure hosting you and your... lively crew for the year. I’m glad you appreciated the local wildlife and the hospitality, even if you did cheat a little with the Moly herb! You're welcome back on Aeaea anytime!",
      ),
    );

    manager.addReview(
      Review(
        name: "Eurylochus",
        year: 1199,
        text:
            'I tried to warn everyone. I literally stood outside the front doors and said, "Hey, maybe we shouldnt walk into the mysterious house in the middle of the woods where a woman is singing eerie songs," but did anyone listen to me? No. What was supposed to be a quick stopover turned into an entire year of our captain sitting around in luxury while the rest of us just wanted to go home to Ithaca.\nPros: The food (once it stopped being laced with transformation potions) was actually pretty good.\nCons: High risk of being turned into swine. The host is an immortal sorceress with major boundary issues.',
        stars: 1,
        response:
            "Dear Eurylochus, I’m so sorry my humble estate didn’t live up to your standards! Next time, feel free to guard the ship outside in the rain while the rest of your crew enjoys the 5-star meal. As for the whole 'swine' incident, you are what you eat! Best of luck on the rest of your voyage home. I hear Scylla and Charybdis love a guest with an attitude!",
      ),
    );

    manager.addReview(
      Review(
        name: "Alexandros",
        year: 1199,
        text:
            "The wine tasted a little weird, and before I could even finish my cup, she pulled out a wand, tapped me on the shoulder, and turned me into a literal pig. Next thing I knew, I was locked in a wooden sty eating acorns with the rest of the scouting party. No privacy, terrible amenities, zero customer service. We were stuck in pig form for days until our captain had to come threaten her with a magical herb just to get us turned back into humans. Also, there are wild lions and wolves just roaming the property. They don't attack, but they brush up against you like giant housecats, which is super unnerving. Would not recommend to any weary travelers. Avoid at all costs!",
        stars: 1,
        response:
            "Hello Alexandros, thank you for taking the time to leave feedback! Regarding the wine: my specialized concoctions are an acquired taste, though I find the swine form suited your charming personality far better anyway. As for the lions and wolves, they are impeccably well-mannered.",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //CUSTOMIZE to have the regular website stuff like searhc bar and shi
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
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
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
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 243, 252, 253),
          child: Column(
            children: [
              //THIS IS THE HEADING
              Row(
                //spaceBetween to push left and right columns to opposite sides
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Circe's Island Resort",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("#80 out of 100 Resorts in Greece "),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Row(children: [Text("1.2"), Icon(Icons.star)]),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (heart_color == Colors.red) {
                                      heart_color = Colors.white;
                                    } else {
                                      heart_color = Colors.red;
                                    }
                                  });
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      "Save  ",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Icon(Icons.favorite, color: heart_color),
                                  ],
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                setState(() async {
                                  final newReview = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => WriteReview(),
                                    ),
                                  );
                                  if (newReview != null) {
                                    setState(() {
                                      manager.addReview(newReview);
                                    });
                                  }
                                });
                              },
                              child: Row(
                                children: [
                                  Text(
                                    "Review  ",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Icon(
                                    Icons.create_outlined,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20,
                        right: 5,
                        left: 20,
                        top: 20,
                      ), //assets/images/beach-front-i-kurtz-homes-naples-img~79c189d20277d733_14-7191-1-ed726ed.jpg
                      child: Card(
                        elevation: 20, // Controls the shadow size
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            12,
                          ), // Match your image/container corners
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ImageGallery(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/main_beach.jpg',
                                width: 1000,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImageGallery(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape:
                            const CircleBorder(), // Makes the button a circle
                        padding: const EdgeInsets.all(
                          16,
                        ), // Adjusts the button size / padding
                        backgroundColor: Colors.white,
                      ),

                      child: const Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.black,
                        size:
                            28, // Makes the icon bigger (change number to fit your preference)
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: ColoredBox(
                          color: const Color.fromARGB(255, 200, 238, 255),
                          child: SizedBox(
                            width: 480,
                            height: 200,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    "About",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    "Aeaea, an exclusive island retreat hosted by the goddess Circe, offers an unforgettable transformation in Greek hospitality. Featuring enchanted concoctions and lavish banquets crafted by Circe herself, the estate takes a bold approach to fine dining and secluded luxury—using only the finest local herbs, wild swine, and magical elixirs.",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: ColoredBox(
                          color: const Color.fromARGB(255, 200, 238, 255),
                          child: SizedBox(
                            width: 480,
                            height: 250,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Features",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "-  Dietary Options: Herbivore Friendly, Carnivore Options, Magic-Free Options available (upon request with Moly)",
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 8,
                                          bottom: 8,
                                        ),
                                        child: Text(
                                          "-  Amenities: Enchanted Grounds, Tamed Predators, Complimentary Baths, Fine Weaving Workshops",
                                        ),
                                      ),
                                      Text(
                                        "-  Guest Services: Beautiful Massage Nympths, Guided Island Navigation, Long-Term Stay Packages (up to a Lifetime)",
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ColoredBox(
                      color: const Color.fromARGB(255, 200, 238, 255),
                      child: SizedBox(
                        width: 480,
                        height: 325,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                "Location",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined),
                                        Text(
                                          "  Location: Unknown Coordinates, Aeaea",
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.waves),
                                        Text(
                                          "  Region: The Wine Dark Enchanted Seas",
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.directions_boat_outlined),
                                        Text(
                                          "  Navigation: Follow the Smoke from Circe’s Hearth",
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/images/Aeaea_map.jpg',
                              width: 350,
                              height: 125,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //REVIEWS!!
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  right: 110,
                  left: 110,
                  bottom: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Reviews",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () async {
                        final newReview = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WriteReview(),
                          ),
                        );
                        if (newReview != null) {
                          setState(() {
                            manager.addReview(newReview);
                          });
                        }
                      },
                      child: Row(
                        children: [
                          Text(
                            "Write Review",
                            style: TextStyle(color: Colors.black),
                          ),
                          Icon(Icons.create_outlined),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //RATING BOX!!
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: ColoredBox(
                  color: const Color.fromARGB(255, 200, 238, 255),
                  child: SizedBox(
                    height: 200,
                    width: 1000,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ColoredBox(
                            color: Colors.white,
                            child: SizedBox(
                              width: 180,
                              height: 180,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "1.2",
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Terrible",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(
                                      "(682)",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 12),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 6,
                                    top: 6,
                                  ),
                                  child: Text("Excellent"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 6,
                                    top: 6,
                                  ),
                                  child: Text("Good"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 6,
                                    top: 6,
                                  ),
                                  child: Text("Average"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 6,
                                    top: 6,
                                  ),
                                  child: Text("Poor"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 6,
                                    top: 6,
                                  ),
                                  child: Text("Terrible"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //reviews bars
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 22,
                            bottom: 10,
                            left: 12,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 10,
                                  top: 10,
                                ),
                                child: SizedBox(
                                  //when i didnt put it in a sized box it errored so..
                                  width: 400,
                                  child: LinearProgressIndicator(
                                    value: excellentReviews,
                                    backgroundColor: const Color.fromARGB(
                                      255,
                                      255,
                                      249,
                                      229,
                                    ),
                                    valueColor: AlwaysStoppedAnimation(
                                      const Color.fromARGB(255, 127, 169, 241),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 15,
                                  top: 15,
                                ),
                                child: SizedBox(
                                  //when i didnt put it in a sized box it errored so..
                                  width: 400,
                                  child: LinearProgressIndicator(
                                    value: goodReviews,
                                    backgroundColor: const Color.fromARGB(
                                      255,
                                      255,
                                      249,
                                      229,
                                    ),
                                    valueColor: AlwaysStoppedAnimation(
                                      const Color.fromARGB(255, 127, 169, 241),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 15,
                                  top: 15,
                                ),
                                child: SizedBox(
                                  //when i didnt put it in a sized box it errored so..
                                  width: 400,
                                  child: LinearProgressIndicator(
                                    value: averageReviews,
                                    backgroundColor: const Color.fromARGB(
                                      255,
                                      255,
                                      249,
                                      229,
                                    ),
                                    valueColor: AlwaysStoppedAnimation(
                                      const Color.fromARGB(255, 127, 169, 241),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 15,
                                  top: 15,
                                ),
                                child: SizedBox(
                                  //when i didnt put it in a sized box it errored so..
                                  width: 400,
                                  child: LinearProgressIndicator(
                                    value: poorReviews,
                                    backgroundColor: const Color.fromARGB(
                                      255,
                                      255,
                                      249,
                                      229,
                                    ),
                                    valueColor: AlwaysStoppedAnimation(
                                      const Color.fromARGB(255, 127, 169, 241),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 15,
                                  top: 15,
                                ),
                                child: SizedBox(
                                  //when i didnt put it in a sized box it errored so..
                                  width: 400,
                                  child: LinearProgressIndicator(
                                    value: terribleReviews,
                                    backgroundColor: const Color.fromARGB(
                                      255,
                                      255,
                                      249,
                                      229,
                                    ),
                                    valueColor: AlwaysStoppedAnimation(
                                      const Color.fromARGB(255, 127, 169, 241),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                            bottom: 12,
                            left: 12,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 6,
                                    top: 6,
                                  ),
                                  child: Text("Service"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 12,
                                    top: 12,
                                  ),
                                  child: Text("Food"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 6,
                                    top: 6,
                                  ),
                                  child: Text("Atmosphere"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 12),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 6,
                                    top: 6,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star_half,
                                        color: const Color.fromARGB(
                                          255,
                                          111,
                                          195,
                                          116,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 6,
                                    top: 6,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: const Color.fromARGB(
                                          255,
                                          111,
                                          195,
                                          116,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: const Color.fromARGB(
                                          255,
                                          111,
                                          195,
                                          116,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: const Color.fromARGB(
                                          255,
                                          111,
                                          195,
                                          116,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: const Color.fromARGB(
                                          255,
                                          111,
                                          195,
                                          116,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star_half,
                                        color: const Color.fromARGB(
                                          255,
                                          111,
                                          195,
                                          116,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 6,
                                    top: 6,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: const Color.fromARGB(
                                          255,
                                          111,
                                          195,
                                          116,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star_half,
                                        color: const Color.fromARGB(
                                          255,
                                          111,
                                          195,
                                          116,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 6,
                                  top: 6,
                                ),
                                child: Text(
                                  "0.5",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 15,
                                  top: 15,
                                ),
                                child: Text(
                                  "4.5",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 6,
                                  top: 6,
                                ),
                                child: Text(
                                  "1.3",
                                  style: TextStyle(fontSize: 12),
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
              //TRAVELER WARNING
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Container(
                
                  width: 900,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                        child: Row(
                          children: [
                            Text(
                              "TRAVELER WARNING",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 17, 0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Icon(Icons.warning),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 15),
                        child: Text(
                          "Several recent guest reviews report unannounced physical transformations and sudden livestock confinement. Travelers are advised to exercise caution when dining with the host.",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              for (var review in manager.getReviews())
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    //height: 200,
                    width: 800,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          //REIVEWS
                          child: Wrap(
                            spacing: 8.0,
                            runSpacing: 8.0,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.account_circle),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 3.0,
                                          right: 8,
                                        ),
                                        child: Text(
                                          review.name,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      for (int i = 0; i < review.stars; i++)
                                        Icon(
                                          Icons.star,
                                          color: const Color.fromARGB(
                                            255,
                                            111,
                                            195,
                                            116,
                                          ),
                                        ),
                                    ],
                                  ),
                                  Row(children: [Text("${review.year} BCE")]),
                                ],
                              ),
                              Text(review.text),
                              //IF CIRCES RESPONSE
                              if (review.response != null &&
                                  review.response!.isNotEmpty)
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 30,
                                    top: 30,
                                    bottom: 30,
                                    right: 30,
                                  ),
                                  child: Container(
                                    width: 700,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Wrap(
                                        //keeps formatting
                                        spacing: 8.0,
                                        runSpacing: 8.0,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Icon(Icons.account_circle),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                          left: 3.0,
                                                          right: 8,
                                                        ),
                                                    child: Text(
                                                      "Circe (OWNER)",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text("${review.year} BCE"),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Text(review.response.toString()),
                                          Text(
                                            "This response is the subjective opinion of the management representative and not of TripHelper LLC nor of its partners.",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
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
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text(
                    "See More Reviews",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} //962 LINES!!!!!
