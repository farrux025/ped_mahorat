import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pedagogik_mahorat/components/app_text.dart';
import 'package:pedagogik_mahorat/constants/color.dart';
import 'package:pedagogik_mahorat/data/glossary.dart';

class GlossaryScreen extends StatelessWidget {
  const GlossaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColorMain,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: AppColor.backgroundColorMain,
        surfaceTintColor: AppColor.backgroundColorMain,
        leading: BackButton(color: AppColor.white),
        centerTitle: true,
        title: AppText(
          "Glossary",
          size: 16.sp,
          color: AppColor.white,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => glossaryItem(index, context),
          separatorBuilder: (context, index) => const Divider(
                color: AppColor.itemBottomColor,
              ),
          itemCount: MyData.glossaryList.length),
    );
  }

  glossaryItem(int index, BuildContext context) => MaterialButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (context) => Wrap(
            children: [
              Container(
                padding: EdgeInsets.all(16.sp),
                width: ScreenUtil().screenWidth,
                color: AppColor.itemTopColor,
                child: Column(
                  children: [
                    Center(
                      child: AppText(MyData.glossaryList[index].title,
                          size: 16.sp,
                          color: AppColor.white,
                          maxLines: 4,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10.h),
                    AppText(MyData.glossaryList[index].desc,
                        size: 14.sp,
                        color: AppColor.white,
                        maxLines: 20,
                        fontWeight: FontWeight.w400)
                  ],
                ),
              )
            ],
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          alignment: Alignment.centerLeft,
          child: AppText(MyData.glossaryList[index].title,
              size: 13.sp, color: AppColor.white, fontWeight: FontWeight.w500),
        ),
      );
}
