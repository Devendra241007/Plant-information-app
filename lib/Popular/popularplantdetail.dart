import 'package:flutter/material.dart';
import '../colors.dart';

class Popular extends StatelessWidget {
  final String plantname;
  final String plantimages;
  final String description;

  const Popular({
    super.key,
    required this.plantname,
    required this.plantimages,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.darkGreen),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(plantname, style: TextStyle(color: AppColors.darkGreen)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Center(
              child: Image.asset(plantimages, height: 250, fit: BoxFit.cover),
            ),
            SizedBox(height: 16),
            Text(
              description,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
