import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messenger/ui/components/navbar/nav_bar.dart';
import 'package:messenger/ui/components/profile/profile.dart';
import 'package:messenger/utils/theme/colors/system_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) => MaterialApp(
        home: Scaffold(
          appBar: navBar(),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  profile(context),
                  SizedBox(
                    height: 0.03.sh,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 0.05.sw,
                      ),
                      const Text(
                        "박현준",
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.edit,
                          color: SystemColors.black,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.03.sh,
                  ),
                  GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: [
                      for (int i = 0; i < 16; i++)
                        GestureDetector(
                          onTap: () {
                            // onTap 이벤트 처리 로직을 여기에 작성합니다.
                            print("${i + 1}" + "번째 사진");
                          },
                          child: Container(
                            margin: const EdgeInsets.all(0.5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.black,
                                width: 0.5,
                              ),
                            ),
                            width: 100,
                            height: 100,
                          ),
                        )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
