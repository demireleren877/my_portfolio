// ignore_for_file: avoid_dynamic_calls

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:kartal/kartal.dart';
import 'package:my_portfolio/core/components/centered_progress/centered_progress.dart';
import 'package:my_portfolio/core/services/firebase_services.dart';

import 'basic_details.dart';
import 'coding_skills.dart';
import 'personal_info_container.dart';
import 'skills.dart';

class CvDrawer extends StatelessWidget {
  const CvDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Padding(
          padding: context.paddingLow,
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseService.personalInfo.snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const CenteredProgressIndicator();
              } else if (snapshot.data == null) {
                return const CenteredProgressIndicator();
              }
              return ListView(
                children: [
                  BasicDetailsContainer(
                    name: snapshot.data!.docs[0]['name'],
                    title: snapshot.data!.docs[0]["title"],
                    image: snapshot.data!.docs[0]["image"],
                  ),
                  context.emptySizedHeightBoxLow3x,
                  PersonalInfoContainer(
                      personalInfoArea: snapshot.data!.docs[0]
                          ["personalInfoArea"]),
                  Divider(
                    thickness: 0.1,
                    color: context.colorScheme.onBackground,
                  ),
                  context.emptySizedHeightBoxLow,
                  Padding(
                    padding: context.horizontalPaddingNormal,
                    child: Text(
                      'Skills:',
                      style: context.textTheme.titleLarge,
                    ),
                  ),
                  context.emptySizedHeightBoxLow3x,
                  SkillsList(skills: snapshot.data!.docs[0]["skills"]),
                  Divider(
                    thickness: 0.1,
                    color: context.colorScheme.onBackground,
                  ),
                  context.emptySizedHeightBoxLow,
                  Padding(
                    padding: context.horizontalPaddingNormal,
                    child: Text(
                      'Coding:',
                      style: context.textTheme.titleLarge,
                    ),
                  ),
                  context.emptySizedHeightBoxLow,
                  CodingSkills(
                      codingSkills: snapshot.data!.docs[0]["codingSkills"]),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
