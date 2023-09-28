import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../textandimage/text_image_screen.dart';

class CustomDetailsTwoItem extends StatelessWidget {
  const CustomDetailsTwoItem({
    super.key,

    required this.nameDetailsTwo,
 
    required this.titleDetailsTwo,
    required this.urlImageDetailsTwo,
  });
 
  
  final String nameDetailsTwo;

  final String titleDetailsTwo;
  final String urlImageDetailsTwo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 5,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => TextImageScreem(
                title: titleDetailsTwo,
                urlImage: urlImageDetailsTwo,
                nameDetailsTwo: nameDetailsTwo,
              ),
            ),
          );
        },
        child: Container(
          width: double.infinity,
          height: 80,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 5,
          ),
          decoration: BoxDecoration(
            color: blue400,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              nameDetailsTwo,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
