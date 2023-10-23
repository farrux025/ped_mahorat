import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pedagogik_mahorat/components/app_text.dart';
import 'package:pedagogik_mahorat/constants/color.dart';
import 'package:pedagogik_mahorat/main.dart';
import 'package:pedagogik_mahorat/views/contents_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColorMain,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30.h),
                AppText("OMONOVA M.D     BOTIROVA.SH.I",
                    color: AppColor.white,
                    size: 15.sp,
                    fontWeight: FontWeight.w500),
                SizedBox(height: 40.h),
                AppText("PEDAGOGIK MAHORAT",
                    color: AppColor.white,
                    size: 30.sp,
                    maxLines: 2,
                    fontStyle: FontStyle.italic,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w800),
                SizedBox(height: 30.h),
                AppText("O`QUV-USLUBIY MAJMUA",
                    color: AppColor.white,
                    size: 16.sp,
                    fontWeight: FontWeight.w500),
                SizedBox(height: 30.h),
                _itemButtons(
                    title: "O'quv qo'llanma",
                    icon: Icons.menu_book,
                    onPressed: () => MyApp.navigatorKey.currentState?.push(
                        MaterialPageRoute(
                            builder: (context) => ContentsScreen()))),
                SizedBox(height: 20.h),
                _itemButtons(
                    title: "Glossary",
                    icon: Icons.my_library_books_outlined,
                    onPressed: () {}),
                SizedBox(height: 20.h),
                _itemButtons(
                    title: "Test sinovi",
                    icon: Icons.quiz_outlined,
                    onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _itemButtons({
    required String title,
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          gradient: const LinearGradient(
              colors: [AppColor.itemTopColor, AppColor.itemBottomColor])),
      child: MaterialButton(
        height: 80.h,
        minWidth: ScreenUtil().screenWidth,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, size: 36.sp, color: AppColor.white),
                SizedBox(width: 20.w),
                AppText(title, size: 16.sp, color: Colors.white),
              ],
            ),
            Icon(Icons.chevron_right, color: AppColor.white, size: 24.sp)
          ],
        ),
      ),
    );
  }
}
