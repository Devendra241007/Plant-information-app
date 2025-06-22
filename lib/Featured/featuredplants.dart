import 'package:dev_03/Featured/Plantinformation.dart';
import 'package:dev_03/colors.dart';
import 'package:flutter/material.dart';

import '../data.dart';

class Featuredplants extends StatelessWidget {
  final List<String> name;
  final List<String> rareplantimage;
  final List<String> description;

  const Featuredplants({
    super.key,
    required this.name,
    required this.rareplantimage,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Featured Plants",
          style: TextStyle(color: AppColors.darkGreen),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: AppColors.darkGreen),
        ),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: rareplantimage.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () async {
                final descriptionList = await loadDescriptionsFromXml();
                print("Tapped on: ${name[index]}");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Plantinformation(
                          pltname: name[index],
                          pltImag: rareplantimage[index],
                          description: descriptionList[index],
                        ),
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
                          rareplantimage[index],
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          name[index],
                          style: TextStyle(
                            color: AppColors.darkGreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            );
          },
      ),
    );
  }
}
