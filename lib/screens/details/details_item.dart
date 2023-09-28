import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../details2/details2_screen.dart';

class CustomDetailsItem extends StatelessWidget {
  const CustomDetailsItem({
    super.key,
    required this.stringitemDetails,
    required this.categorydocId,
    required this.detailsdocId,

  });
  final String stringitemDetails;
  final String categorydocId;
  final String detailsdocId;


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
                builder: (context) => DetailsTwoScreen(
                    categoeyId: categorydocId,
                    detailsId: detailsdocId,
                    nameDetails: stringitemDetails)),
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
            color: blueColors,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(stringitemDetails,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                )),
          ),
        ),
      ),
    );
  }
}
