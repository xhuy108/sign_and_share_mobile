import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sign_and_share_mobile/config/themes/app_pallete.dart';
import 'package:sign_and_share_mobile/config/themes/media_resources.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
    this.keyboardType,
    this.controller,
    this.validator,
    this.textStyle,
    this.maxLength,
    this.onChanged,
  });

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextStyle? textStyle;
  final int? maxLength;

  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      keyboardType: keyboardType,
      style: textStyle,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
          color: AppPalette.hintText,
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.only(
            left: 24.w,
            top: 12.h,
            bottom: 12.h,
            right: 8.w,
          ),
          child: SvgPicture.asset(MediaResource.searchIcon),
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 8.h,
          ),
          child: Container(
            width: 92.w,
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 6.h,
            ),
            decoration: BoxDecoration(
              color: AppPalette.background,
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Row(
              children: [
                Container(
                  width: 21.w,
                  height: 21.h,
                  padding: EdgeInsets.all(5.w),
                  decoration: BoxDecoration(
                    color: const Color(0xFF6D2EFF),
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: SvgPicture.asset(MediaResource.locationIcon),
                ),
                Gap(6.w),
                Text(
                  'Ha Noi',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: AppPalette.textPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
        filled: true,
        fillColor: AppPalette.textFieldBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.r),
          borderSide: BorderSide(
            color: AppPalette.primary,
            width: 1.w,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 16.h,
        ),
      ),
    );
  }
}
