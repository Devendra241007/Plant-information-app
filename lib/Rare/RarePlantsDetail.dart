import 'package:dev_03/colors.dart';
import 'package:flutter/material.dart';

class Rareplantsdetail extends StatelessWidget {
  final String title;
  final String RareImage;
  final String Description;

  const Rareplantsdetail({
    super.key,
    required this.title,
    required this.RareImage,
     required this.Description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0.0,
        title: Text(title,style: TextStyle(color: AppColors.darkGreen),),
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: AppColors.darkGreen,)),
      ),
      body:SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Center(
              child: Image.asset(RareImage, height: 250, fit: BoxFit.cover),
            ),
            SizedBox(height: 16),
            Text(
              Description,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
