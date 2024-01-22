import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:messenger/utils/theme/colors/system_colors.dart';

class OnboardScreen extends StatefulWidget {
  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, child) => MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/user/home");
                    // 로그인했을 때 유저이면 유저페이지로 어드민이면 어드민 페이지로 리다이랙트
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.yellow,
                    ),
                    maximumSize: MaterialStateProperty.all(const Size(180, 40)),
                    minimumSize: MaterialStateProperty.all(const Size(180, 40)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.chat_rounded,
                        color: SystemColors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                      ),
                      const Text(
                        "Kakao 로그인",
                        style: TextStyle(
                          fontSize: 16,
                          color: SystemColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
