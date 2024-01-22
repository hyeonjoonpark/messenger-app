import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messenger/ui/components/navbar/nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, child) => MaterialApp(
        home: Scaffold(
          appBar: navBar(),
          body: Center(
            child: Column(
              children: <Widget>[
                Text(
                  "Home Screen",
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
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
