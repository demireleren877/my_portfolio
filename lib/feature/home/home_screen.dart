import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/components/drawer/drawer_screen.dart';
import '../../core/services/firebase_services.dart';
import '../../core/services/responsive.dart';
import 'components/header_container.dart';

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
                  const Expanded(
                    flex: 2,
                    child: CvDrawer(),
                  ),
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
                                style: context.textTheme.headline4
                                    ?.copyWith(color: Colors.white),
                              ),
                              GridView.builder(
                                padding: context.paddingMedium,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 500,
                                  crossAxisSpacing: 15,
                                  mainAxisSpacing: 15,
                                ),
                                itemCount:
                                    snapshot.data!.docs[0]["projects"].length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      TextButton.icon(
                                        onPressed: () {
                                          launch(snapshot.data!.docs[0]
                                              ["projects"][index]["link"]);
                                        },
                                        icon: const Icon(Icons.launch),
                                        label: Text(
                                          snapshot.data!.docs[0]["projects"]
                                              [index]["name"],
                                          style: context.textTheme.headline6
                                              ?.copyWith(
                                            color: Colors.white,
                                          ),
                                          maxLines: 1,
                                        ),
                                      ),
                                      context.emptySizedHeightBoxLow,
                                      ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        child: Image.network(
                                          snapshot.data!.docs[0]["projects"]
                                              [index]["image"],
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
