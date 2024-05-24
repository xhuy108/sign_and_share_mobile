import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_and_share_mobile/config/themes/app_pallete.dart';
import 'package:sign_and_share_mobile/config/themes/media_resources.dart';

class FunctionCard extends StatelessWidget {
  final double height;
  final String label;
  final String background;
  const FunctionCard(
      {super.key,
      required this.height,
      required this.label,
      required this.background});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.r),
      ),
      onTap: () {},
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(8.w),
            child: Container(
              height: height,
              width: 160.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(background),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 25.h,
            left: 25.w,
            child: Text(
              label,
              style: TextStyle(
                  color: AppPalette.background,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
