import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'project_image.dart';
import 'project_title.dart';

class ProjectContainer extends StatelessWidget {
  const ProjectContainer({
    Key? key,
    required this.snapshot,
    required this.index,
  }) : super(key: key);
  final AsyncSnapshot<QuerySnapshot<Object?>> snapshot;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProjectTitle(
          index: index,
          snapshot: snapshot,
        ),
        context.emptySizedHeightBoxLow,
        ProjectImage(
          index: index,
          snapshot: snapshot,
        ),
      ],
    );
  }
}
