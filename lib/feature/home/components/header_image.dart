import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:kartal/kartal.dart';

import '../../../core/services/responsive.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    Key? key,
    required this.snapshot,
  }) : super(key: key);

  final AsyncSnapshot<QuerySnapshot<Object?>> snapshot;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !Responsive.isMobile(context),
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 200,
        ),
        height: context.dynamicHeight(0.35),
        child: Image.network(
          snapshot.data!.docs[0]["headerImage"],
        ),
      ),
    );
  }
}
