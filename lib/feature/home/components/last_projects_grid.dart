import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/services/responsive.dart';
import 'project_container.dart';

class LastProjectsGrid extends StatelessWidget {
  const LastProjectsGrid({
    Key? key,
    required this.snapshot,
  }) : super(key: key);
  final AsyncSnapshot<QuerySnapshot<Object?>> snapshot;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: context.paddingMedium,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: Responsive.isDesktop(context)
            ? context.width / 3
            : Responsive.isTablet(context)
                ? context.width / 2
                : context.width,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemCount: snapshot.data!.docs[0]["projects"].length,
      itemBuilder: (BuildContext context, int index) {
        return ProjectContainer(
          index: index,
          snapshot: snapshot,
        );
      },
    );
  }
}
