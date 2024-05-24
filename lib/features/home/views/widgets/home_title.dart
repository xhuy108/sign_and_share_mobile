import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_and_share_mobile/config/themes/app_pallete.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    super.key,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  final String title;
  final String subtitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w700,
            color: AppPalette.textPrimary,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: onTap,
          child: Text(
            subtitle,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppPalette.hintText,
            ),
          ),
        ),
      ],
    );
  }
}
