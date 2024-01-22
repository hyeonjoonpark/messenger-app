import 'package:get/get.dart';
import 'package:messenger/ui/screen/onboard_screen.dart';
import 'package:messenger/ui/screen/user/Home/home_screen.dart';

List<GetPage> appRoute = [
  GetPage(
    name: "/",
    page: () => OnboardScreen(),
  ),
  GetPage(
    name: "/user/home",
    page: () => const HomeScreen(),
  ),
];
