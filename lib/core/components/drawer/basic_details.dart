import 'package:flutter/material.dart';

import 'package:kartal/kartal.dart';

import '../../../core/colors/colors.dart';

class BasicDetailsContainer extends StatelessWidget {
  const BasicDetailsContainer({
    Key? key,
    required this.name,
    required this.title,
  }) : super(key: key);

  final String name;
  final String title;

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
            backgroundColor: Colors.white,
            radius: context.dynamicHeight(0.07),
          ),
          Text(
            name,
            style: context.textTheme.headline5,
          ),
          Text(
            title,
            style: context.textTheme.headline6?.copyWith(
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
            onPressed: () {},
            label: Text(
              'Download CV',
              style: context.textTheme.headline6?.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
