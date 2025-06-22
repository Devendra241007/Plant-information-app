import 'package:flutter/material.dart';
import 'package:dev_03/colors.dart';

class Plantinformation extends StatelessWidget {
  final String pltname;
  final String pltImag;
  final String description;

  const Plantinformation({
    super.key,
    required this.pltname,
    required this.pltImag,
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
        title: Text(pltname,style: TextStyle(color: AppColors.darkGreen),),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(pltImag, height: 250, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(
              description,
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
