import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pedagogik_mahorat/components/app_text.dart';
import 'package:pedagogik_mahorat/main.dart';
import 'package:pedagogik_mahorat/views/contents_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),
              MaterialButton(
                height: 44.h,
                color: Colors.green,
                onPressed: () {
                  MyApp.navigatorKey.currentState?.push(MaterialPageRoute(
                      builder: (context) => ContentsScreen()));
                },
                child: AppText("O'quv qo'llanma",
                    size: 16.sp, color: Colors.white),
              ),
              SizedBox(height: 20.h),
              MaterialButton(
                height: 44.h,
                color: Colors.green,
                onPressed: () {},
                child: AppText("Glossary", size: 16.sp, color: Colors.white),
              ),
              SizedBox(height: 20.h),
              MaterialButton(
                height: 44.h,
                color: Colors.green,
                onPressed: () {},
                child: AppText("Test", size: 16.sp, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
