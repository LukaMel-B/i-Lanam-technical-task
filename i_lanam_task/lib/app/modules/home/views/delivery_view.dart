import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:i_lanam_task/app/modules/home/controllers/home_controller.dart';
import 'package:i_lanam_task/app/modules/home/widgets/delivery_date/delivery_date_widget.dart';
import 'package:i_lanam_task/app/modules/home/widgets/delivery_date/delivery_time_picker.dart';

class DeliveryView extends GetView<HomeController> {
  const DeliveryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header('Select Delivery Date & Time'),
        spacer(10.h),
        const DeliveryDateView(),
        spacer(20.h),
        const DeliveryTimePicker(),
        spacer(40.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.h),
          decoration: BoxDecoration(
            color: const Color(0xffE1F3FF),
            borderRadius: BorderRadius.circular(5.h),
          ),
          child: Text.rich(
            TextSpan(
              text: '',
              children: <InlineSpan>[
                TextSpan(
                  text: 'Note:',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text:
                      ' A delivery charge of \u{20AC}3.00 will be incurred for a full service.',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  Text header(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.black,
        letterSpacing: .3,
        fontSize: 17.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  SizedBox spacer(double height) {
    return SizedBox(
      height: height,
    );
  }
}
