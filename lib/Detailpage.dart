import 'package:flutter/material.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key, required String imagePath});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  bool isHeartSelected = false; // Variable to track heart icon state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // First Container with the Image
          Container(
            height: 350,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/place2.jpg"), // Ensure the asset path is correct.
              ),
            ),
          ),
          // Second Container with Information
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        "Utah",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "5\$",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 0),
                  const Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "USA, Moab",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(4, (index) {
                          return const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          );
                        }),
                      ),
                      const Icon(
                        Icons.star_border_outlined,
                        color: Colors.black54,
                      ),
                      const Text("(4.0)")
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "People",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      Text(
                        "Number of people you want in your group",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Wrap(
                        spacing: 10,
                        children: List.generate(5, (index) {
                          int number = (index + 1) * 5;
                          return Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "$number",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Column(
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      Text(
                        "Moab, Utah features stunning red rock trails, year-round biking, diverse terrain, and breathtaking views, perfect for cycling adventures.",
                        style: TextStyle(color: Colors.black54, fontSize: 14),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row( 
                    children: [
                      // Heart Button inside a square Container
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[200], // Constant background color
                          borderRadius: BorderRadius.circular(8), // Square shape with slight rounding
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: isHeartSelected ? Colors.red : Colors.blueGrey,
                          ),
                          onPressed: () {
                            setState(() {
                              isHeartSelected = !isHeartSelected; // Toggle heart icon color
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 40),
                      // Booking Button
                      TextButton.icon(
                        style: ButtonStyle(
                          backgroundColor:const WidgetStatePropertyAll (Colors.blueGrey),
                          shape: WidgetStatePropertyAll (
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        onPressed: () {
                          // Add booking functionality here
                        },
                        icon: const Icon(
                          Icons.keyboard_double_arrow_right,
                          color: Colors.white,
                        ),
                        label: const Text(
                          "Book your trip",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
