import 'package:dev_03/Featured/Plantinformation.dart';
import 'package:dev_03/Rare/RarePlantsDetail.dart';
import 'package:dev_03/Rare/RarePlantslist.dart';
import 'package:dev_03/colors.dart';
import 'package:dev_03/Featured/featuredplants.dart';
import 'package:dev_03/Popular/popularplantdetail.dart';
import 'package:dev_03/Popular/popularplants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:xml/xml.dart';
import 'data.dart';
import 'login_page.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<String> categories = [
    'Medicinal',
    'Tree',
    'Flower',
    'Herbs',
    'Shrubs',
  ];
  final List<IconData> catIcon = [
    Icons.home,
    Icons.home,
    Icons.home,
    Icons.home,
    Icons.home,
  ];

  final List<String> plantNames = [
    'Flowering Plants',
    'Medicinal Plants',
    'Succulent Plants',
    'Fruit Plants',
    'Vegetable Plants',
  ];
  final List<String> Popularplants = [
    'Rose',
    'Lavender',
    'Palm',
    'Aloe Vera',
    'Tulsi',
    'Marigold',
    'Snake',
    'Mango',
    'Peace Lily',
    'Spider',
  ];
  final List<String> Rareplants = [
    'Rafflesia Arnoldii',
    'Titan Arum',
    'Ghost Orchid',
    'Blue Puya',
    'Kadupul flower',
    'Middlemist red',
    'Pitcher Plant',
    'Welwitschia Mirabilis',
    'Franklin Tree',
    'Youtan Poluo',
  ];
  final List<String> rareplantsimg = [
    'assets/images/Rafflesia_arnoldii.png',
    'assets/images/Titan_Arum.png',
    'assets/images/Ghost_Orchid.png',
    'assets/images/blue_puya.png',
    'assets/images/Kadupul_Flower.png',
    'assets/images/middlemist_red.png',
    'assets/images/Pitcher_Plant.png',
    'assets/images/Welwitschia_mirabilis.jpg',
    'assets/images/Franklin_Tree.png',
    'assets/images/Youtan_Poluo.png',
  ];
  final List<String> popularplantsimg = [
    'assets/images/rose.jpg',
    'assets/images/Lavender.jpg',
    'assets/images/plam.png',
    'assets/images/aloe_vera.jpg',
    'assets/images/tulsi.jpg',
    'assets/images/marigold.png',
    'assets/images/snake.png',
    'assets/images/mango.png',
    'assets/images/Peace_Lily.png',
    'assets/images/Spider.png',
  ];
  final List<String> plantImg = [
    'assets/images/rose.jpg',
    'assets/images/aloe_vera.jpg',
    'assets/images/succulent.png',
    'assets/images/frute.png',
    'assets/images/vegetable.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0.0,
        scrolledUnderElevation: 0.0,
        backgroundColor: AppColors.background,
        title: Text(
          'Plant Care',
          style: TextStyle(
            fontSize: 25,
            color: AppColors.darkGreen,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: IconButton(
                icon: Icon(Icons.menu, size: 28, color: AppColors.darkGreen),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer Header
            DrawerHeader(
              decoration: BoxDecoration(color: AppColors.darkGreen),
              child: Text(
                'Hello, User!',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 44),
              ),
            ),

            // Drawer Items
            ListTile(
              leading: Icon(Icons.home, color: AppColors.darkGreen),
              title: Text('Indor Plants'),
              onTap: () {
                // Close drawer and do something
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.share, color: AppColors.darkGreen),
              title: Text('Share'),
              onTap: () {
                Share.share(
                  'Hey! I found this great app for plant care 🌿. Try it here:\nhttps://play.google.com/store/apps/details?id=com.yourcompany.yourapp',
                  subject: 'Plant Care App 🌱',
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: AppColors.darkGreen),
              title: Text('Logout'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Center(
                      child: Text(
                        "Logout",
                        style: TextStyle(
                          color: AppColors.darkGreen,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    content: Text(
                      "Are You Sure ?",
                      textAlign: TextAlign.center,
                    ),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => LoginPage()),
                              );
                            },
                            child: Text(
                              "Yas",
                              style: TextStyle(color: AppColors.darkGreen),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "No",
                              style: TextStyle(color: AppColors.darkGreen),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Let's grow",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.headingText,
                    ),
                  ),
                  Text(
                    "Discover plant species",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.subheadingText,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 20),
              child: SizedBox(
                height: 50,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.search_outlined,
                        size: 30,
                        color: AppColors.iconColor,
                      ),
                    ),
                    hintText: "Search plants..",
                    hintStyle: TextStyle(color: AppColors.placeholderText),
                    filled: true,
                    fillColor: AppColors.searchFieldBackground,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                title: Text(
                  "Featured Plants",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                trailing: InkWell(
                  onTap: () async {
                    final descriptionList = await loadDescriptionsFromXml();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Featuredplants(
                          name: plantNames,
                          rareplantimage: plantImg,
                          description: descriptionList,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "See all",
                    style: TextStyle(color: AppColors.darkGreen, fontSize: 16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(plantNames.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () async {
                          final descriptionList =
                              await loadDescriptionsFromXml();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Plantinformation(
                                pltname: plantNames[index],
                                pltImag: plantImg[index],
                                description: descriptionList[index],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: 170,
                          margin: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 6,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  plantImg[index],
                                  height: 140,
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    plantNames[index],
                                    style: TextStyle(
                                      color: AppColors.darkGreen,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  "Popular plants",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                trailing: InkWell(
                  onTap: () async {
                    final descriptionList =
                        await loadPopularDescriptionsFromXml();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Popularplantsinfor(
                          p_name: Popularplants,
                          p_image: popularplantsimg,
                          p_description: descriptionList,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "See all",
                    style: TextStyle(color: AppColors.darkGreen, fontSize: 16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(Popularplants.length, (index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            final populardescriptionList =
                                await loadPopularDescriptionsFromXml();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Popular(
                                  plantname: Popularplants[index],
                                  plantimages: popularplantsimg[index],
                                  description: populardescriptionList[index],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: 80,
                            margin: const EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 6,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  popularplantsimg[index],
                                  height: 80,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6, left: 10),
                          child: Text(
                            Popularplants[index],
                            style: TextStyle(
                              color: AppColors.headingText,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  "Rare plants",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                trailing: InkWell(
                  onTap: () async {
                    final descriptionList = await loadRareDescriptionsFromXml();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Rareplantslist(
                          r_name: Rareplants,
                          r_image: rareplantsimg,
                          r_description: descriptionList,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "See all",
                    style: TextStyle(color: AppColors.darkGreen, fontSize: 16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(Popularplants.length, (index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            final raredescriptionList =
                                await loadRareDescriptionsFromXml();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Rareplantsdetail(
                                  title: Rareplants[index],
                                  RareImage: rareplantsimg[index],
                                  Description: raredescriptionList[index],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: 140,
                            margin: const EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 6,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  rareplantsimg[index],
                                  height: 140,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6, left: 10),
                          child: Text(
                            Rareplants[index],
                            style: TextStyle(
                              color: AppColors.headingText,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
