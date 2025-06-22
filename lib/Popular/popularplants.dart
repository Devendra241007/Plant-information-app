import 'package:dev_03/Popular/popularplantdetail.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import '../data.dart';

class Popularplantsinfor extends StatefulWidget {
  final List<String> p_name;
  final List<String> p_image;
  final List<String> p_description;

  const Popularplantsinfor(
      {super.key, required this.p_name, required this.p_image, required this.p_description});

  @override
  State<Popularplantsinfor> createState() => _PopularplantsinforState();
}

class _PopularplantsinforState extends State<Popularplantsinfor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          "Popular Plants",
          style: TextStyle(color: AppColors.darkGreen),
        ),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back, color: AppColors.darkGreen,)),
      ),
      body:GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: widget.p_image.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () async {
              final descriptionList = await loadPopularDescriptionsFromXml();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
Popular(plantname: widget.p_name[index], plantimages: widget.p_image[index], description: widget.p_description[index])
                ),
              );
            },
            child: Container(
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
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        widget.p_image[index],
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        widget.p_name[index],
                        style: TextStyle(
                          color: AppColors.darkGreen,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
