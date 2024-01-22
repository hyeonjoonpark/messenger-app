import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messenger/ui/components/navbar/nav_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> userList = [
    '홍길동',
    '김철수',
    '이영희',
    '박지민',
    '김태형',
    '정호석',
  ];
  List<String> filteredList = [];

  void filterNames(String keyword) {
    setState(() {
      filteredList = userList
          .where((name) => _getInitial(name).startsWith(keyword))
          .toList();
    });
  }

  String _getInitial(String name) {
    final unicode = name.codeUnitAt(0);
    final initialUnicode = (unicode - 0xAC00) ~/ 28 ~/ 21;
    final initial = String.fromCharCode(initialUnicode + 0x1100);
    return initial;
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, child) => Scaffold(
        appBar: navBar(),
        body: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: '사용자 이름을 검색하세요',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                filterNames(value);
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredList[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
