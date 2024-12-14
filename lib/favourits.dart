import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min, // Ensures Column takes only necessary space
        children: [
          // Top Image Container
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
          // Card with Custom Layout
          Card(
            margin: const EdgeInsets.all(16), // Adds padding around the card
            child: Padding(
              padding: const EdgeInsets.all(12.0), // Adds padding inside the card
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Heart Icon
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 30,
                  ),
                  const SizedBox(width: 12), // Spacing between icon and text
                  // Title and Subtitle
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Utah",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "USA, Moab",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8), // Spacing between text and stars
                  // Star Ratings
                  Wrap(
                    children: List.generate(4, (index) {
                      return const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      );
                    })
                      ..add(
                        const Icon(
                          Icons.star_border_outlined,
                          color: Colors.black54,
                          size: 20,
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
