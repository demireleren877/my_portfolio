import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';

import '../../colors/colors.dart';

class PersonalInfoText extends StatelessWidget {
  const PersonalInfoText({Key? key, required this.text, required this.answer})
      : super(key: key);
  final String text;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 200.h),
      padding: EdgeInsets.symmetric(
        horizontal: 25.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: context.textTheme.headline6,
          ),
          Text(
            answer,
            style: context.textTheme.headline6
                ?.copyWith(color: AppColors.primaryDark),
          ),
        ],
      ),
    );
  }
}
