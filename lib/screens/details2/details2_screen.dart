import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

import 'custom_detailstwo_item.dart';

class DetailsTwoScreen extends StatefulWidget {
  const DetailsTwoScreen(
      {super.key,
      required this.categoeyId,
      required this.detailsId,
      required this.nameDetails});
  final String nameDetails;
  final String categoeyId;
  final String detailsId;

  @override
  State<DetailsTwoScreen> createState() => _DetailsTwoScreenState();
}

class _DetailsTwoScreenState extends State<DetailsTwoScreen> {
  List<QueryDocumentSnapshot> data = [];
  bool isLoading = true;
  getDataTwo() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("categories")
        .doc(widget.categoeyId)
        .collection("details")
        .doc(widget.detailsId)
        .collection("detailstwo").orderBy("time")
        .get();
    data.addAll(querySnapshot.docs);
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    getDataTwo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.nameDetails),
        toolbarHeight: 70,
      ),
      body: isLoading == true
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) => CustomDetailsTwoItem(
                          nameDetailsTwo: data[index]["detailstwo"],
                          titleDetailsTwo: data[index]["title"],
                          urlImageDetailsTwo: data[index]["url"],
                        )),
              ),
            ),
    );
  }
}
