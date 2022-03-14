import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectTitle extends StatelessWidget {
  const ProjectTitle({
    Key? key,
    required this.snapshot,
    required this.index,
  }) : super(key: key);
  final AsyncSnapshot<QuerySnapshot<Object?>> snapshot;
  final int index;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        launch(snapshot.data!.docs[0]["projects"][index]["link"]);
      },
      icon: const Icon(Icons.launch),
      label: Text(
        snapshot.data!.docs[0]["projects"][index]["name"],
        style: context.textTheme.headline6?.copyWith(
          color: Colors.white,
        ),
        maxLines: 1,
      ),
    );
  }
}
