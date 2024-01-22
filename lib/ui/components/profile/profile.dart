import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget profile(BuildContext context) {
  return ScreenUtilInit(
    builder: (BuildContext context, child) => Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
            height: 0.05.sh,
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(100.r),
              border: Border.all(
                color: Colors.transparent,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
