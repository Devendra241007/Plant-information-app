import 'package:dev_03/Rare/RarePlantsDetail.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import '../data.dart';

class Rareplantslist extends StatefulWidget {
  final List<String> r_name;
  final List<String> r_image;
  final List<String> r_description;
  const Rareplantslist({super.key,required this.r_name, required this.r_image, required this.r_description});

  @override
  State<Rareplantslist> createState() => _RareplantslistState();
}

class _RareplantslistState extends State<Rareplantslist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          "Rare Plants",
          style: TextStyle(color: AppColors.darkGreen),
        ),
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: AppColors.darkGreen,)),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: widget.r_image.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () async {
              final descriptionList = await   loadRareDescriptionsFromXml();
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                     Rareplantsdetail(title: widget.r_name[index], RareImage: widget.r_image[index], Description: widget.r_description[index])
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
                        widget.r_image[index],
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        widget.r_name[index],
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
