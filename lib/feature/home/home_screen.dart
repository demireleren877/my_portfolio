import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../core/components/drawer/drawer_screen.dart';
import '../../core/services/firebase_services.dart';
import '../../core/services/responsive.dart';
import 'components/header_container.dart';
import 'components/last_projects_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      appBar: !Responsive.isDesktop(context) ? AppBar() : null,
      drawer: const CvDrawer(),
      body: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  // const Expanded(
                  //   flex: 2,
                  //   child: CvDrawer(),
                  // ),
                StreamBuilder<QuerySnapshot>(
                  stream: FirebaseService.header.snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const SizedBox.shrink();
                    } else if (snapshot.data == null) {
                      return const SizedBox.shrink();
                    }
                    return Expanded(
                      flex: 8,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            HeaderContainer(snapshot: snapshot),
                            context.emptySizedHeightBoxLow3x,
                            Text(
                              'My Last Projects',
                              style: context.textTheme.headlineMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                            LastProjectsGrid(snapshot: snapshot),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
