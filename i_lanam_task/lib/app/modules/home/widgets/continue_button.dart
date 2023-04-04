import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomButton extends GetView {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(2, 2),
                    blurRadius: 10,
                    color: const Color(0xFF909395).withOpacity(.8),
                  )
                ],
                gradient: const LinearGradient(
                    colors: [Color(0xff3B70C7), Color(0xff3053D2)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: TextButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shadowColor: Colors.transparent,
                    padding:
                        EdgeInsets.symmetric(vertical: 12.w, horizontal: 20.w),
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      letterSpacing: .3,
                      fontSize: 15.sp),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
