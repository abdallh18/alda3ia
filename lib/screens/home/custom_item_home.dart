import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../details/details_screen.dart';

class CustomItemHome extends StatelessWidget {
  const CustomItemHome({super.key, required this.name, required this.id});
  final String name;
  final String id;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailsScreen(
            name: name,
            categoeyId: id,
          ),
        ));
      },
      child: Container(
        width: 170,
        height: 180,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        decoration: BoxDecoration(
          color: blueColors,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
