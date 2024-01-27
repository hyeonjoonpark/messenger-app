import 'package:get/get.dart';
import 'package:messenger/ui/screen/onboard_screen.dart';
import 'package:messenger/ui/screen/user/chat/chat_screen.dart';
import 'package:messenger/ui/screen/user/home/home_screen.dart';
import 'package:messenger/ui/screen/user/home/info/info_change_screen.dart';
import 'package:messenger/ui/screen/user/search/search_screen.dart';

List<GetPage> appRoute = [
  GetPage(
    name: "/",
    page: () => const OnboardScreen(),
  ),
  GetPage(
    name: "/user/home",
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: "/user/search",
    page: () => SearchScreen(),
  ),
  GetPage(
    name: "/user/chat",
    page: () => ChatScreen(),
  ),
  GetPage(
    name: "/user/info-change",
    page: () => InfoChangeScreen(),
  )
];
