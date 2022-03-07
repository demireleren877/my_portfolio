import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../core/colors/colors.dart';
import '../../core/components/drawer/drawer_screen.dart';
import '../../core/services/responsive.dart';
import 'components/header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Expanded(
                  flex: 8,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const HeaderContainer(),
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
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15,
                          ),
                          itemCount: 9,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.primary,
                                image: const DecorationImage(
                                  image: NetworkImage(
                                    'https://firebasestorage.googleapis.com/v0/b/erendemirelcom.appspot.com/o/portfolio_mock.jpeg?alt=media&token=5a36ddf4-d277-4dfa-ae59-39af0ab14231',
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
