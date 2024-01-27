import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:messenger/ui/components/navbar/nav_bar.dart';

class InfoChangeScreen extends StatefulWidget {
  @override
  _InfoChangeScreenState createState() => _InfoChangeScreenState();
}

class _InfoChangeScreenState extends State<InfoChangeScreen> {
  XFile? image; //이미지를 담을 변수 선언
  final ImagePicker picker = ImagePicker(); //ImagePicker 초기화

  //이미지를 가져오는 함수
  Future getImage(ImageSource imageSource) async {
    //pickedFile에 ImagePicker로 가져온 이미지가 담긴다.
    final XFile? pickedFile = await picker.pickImage(source: imageSource);
    if (pickedFile != null) {
      setState(() {
        image = XFile(pickedFile.path); //가져온 이미지를 _image에 저장
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, Widget? child) => Scaffold(
        appBar: navBar(),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 0.03.sh,
              ),
              ElevatedButton(
                onPressed: () {
                  getImage(ImageSource.gallery);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text(
                    "프로필 변경",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
