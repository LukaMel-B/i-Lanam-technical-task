import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomChoiceChip extends GetView {
  final bool isSelected;
  final VoidCallback onPressed;
  final String title;
  final String subTitle;
  const CustomChoiceChip(
      {super.key,
      required this.isSelected,
      required this.onPressed,
      required this.subTitle,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            (isSelected)
                ? BoxShadow(
                    offset: const Offset(2, 2),
                    blurRadius: 10,
                    color: const Color(0xFF909395).withOpacity(.8),
                  )
                : const BoxShadow()
          ],
          gradient: (isSelected)
              ? const LinearGradient(
                  colors: [Color(0xff6699F4), Color(0xff4076D6)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight)
              : const LinearGradient(
                  colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
        ),
        child: TextButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              shadowColor: Colors.transparent,
              padding: EdgeInsets.symmetric(vertical: 10.w, horizontal: 20.w),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                    color: (isSelected) ? Colors.white : Colors.grey[400],
                    letterSpacing: .3,
                    fontSize: 10.sp),
              ),
              Text(
                subTitle,
                style: TextStyle(
                    color: (isSelected) ? Colors.white : Colors.black,
                    letterSpacing: .3,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
