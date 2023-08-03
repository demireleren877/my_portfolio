import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:kartal/kartal.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/colors/colors.dart';

class BasicDetailsContainer extends StatefulWidget {
  const BasicDetailsContainer({
    Key? key,
    required this.name,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String name;
  final String title;
  final String image;

  @override
  State<BasicDetailsContainer> createState() => _BasicDetailsContainerState();
}

class _BasicDetailsContainerState extends State<BasicDetailsContainer> {
  String cvUrl = "";

  @override
  void initState() {
    FirebaseFirestore.instance.collection("personal_info").get().then((value) {
      value.docs.forEach((element) {
        cvUrl = element["cv_url"];
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 200,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade800,
      ),
      height: context.dynamicHeight(0.35),
      width: context.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(widget.image),
            radius: context.dynamicHeight(0.09),
          ),
          Text(
            widget.name,
            style: context.textTheme.headlineSmall,
          ),
          Text(
            widget.title,
            style: context.textTheme.titleLarge?.copyWith(
              color: AppColors.primaryDark,
            ),
          ),
          ElevatedButton.icon(
            icon: const Icon(
              Icons.download,
              color: Colors.white,
            ),
            style: ElevatedButton.styleFrom(
              minimumSize:
                  Size(context.dynamicWidth(0.12), context.dynamicHeight(0.06)),
            ),
            onPressed: () {
              launchUrl(Uri.parse(cvUrl));
            },
            label: Text(
              'Download CV',
              style:
                  context.textTheme.titleLarge?.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
