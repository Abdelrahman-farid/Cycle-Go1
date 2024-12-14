// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:highsea1/detailpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
            child: const Row(
              children: [
                Icon(Icons.menu, size: 30, color: Colors.black54),
                Expanded(child: SizedBox()),
                Icon(Icons.pedal_bike, size: 50, color: Colors.black54),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: const Text(
              "Discover",
              style: TextStyle(
                  color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          // ignore: avoid_unnecessary_containers
          Container(
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(text: "Places"),
                Tab(text: "Teams"),
                Tab(text: "Rules"),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 10),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                // Tab 1: Places with Navigation
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    final imagePath = "images/place${index + 1}.jpg";
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detailpage(imagePath: imagePath),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        margin: const EdgeInsets.only(right: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                // Tab 2: Teams
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    final imagePath = "images/team${index + 1}.jpg";
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detailpage(imagePath: imagePath),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        margin: const EdgeInsets.only(right: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                // Tab 3: Rules
                ListView(
                  padding: const EdgeInsets.all(20),
                  children: const [
                    ListTile(
                      leading: Icon(Icons.warning, color: Colors.red),
                      title: Text(
                        "Always wear a helmet during group rides.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.warning, color: Colors.red),
                      title: Text(
                        "Maintain a safe distance from other riders.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.warning, color: Colors.red),
                      title: Text(
                        "Signal your intentions to others clearly.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.warning, color: Colors.red),
                      title: Text(
                        "Avoid sudden stops or sharp turns without notice.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.warning, color: Colors.red),
                      title: Text(
                        "Follow traffic rules and respect pedestrians.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const Row(
              children: [
                Text(
                  "Explore more",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                Expanded(child: SizedBox()),
                Text(
                  "see all",
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                )
              ],
            ),
          ),
          Wrap(
            children: [
              const Expanded(child: SizedBox()),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.build, color: Colors.blueAccent),
                label: const Text(
                  "Bike Repair Station",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.event, color: Colors.blueAccent),
                label: const Text(
                  "Cycling Events",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.health_and_safety_outlined,
                    color: Colors.blueAccent),
                label: const Text(
                  "Safety Precautions",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.people_outline_outlined,
                    color: Colors.blueAccent),
                label: const Text(
                  "Group Rides",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.military_tech, color: Colors.blueAccent),
                label: const Text(
                  "Biking Challenges",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.terrain_outlined,
                    color: Colors.blueAccent),
                label: const Text(
                  "Trail Finder",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String imagePath;

  const DetailPage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
      ),
      body: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}
