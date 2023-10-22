import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pedagogik_mahorat/components/app_text.dart';
import 'package:pedagogik_mahorat/constants/color.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:pedagogik_mahorat/main.dart';
import 'package:pedagogik_mahorat/views/pdf_screen.dart';

import '../service/pdf_api.dart';

class ContentsScreen extends StatelessWidget {
  ContentsScreen({super.key});

  final contentList = [
    "Kirish",
    "Fan bo‘yicha reyting ishlanmasi va baholash mezoni",
    "'Pedagogik  mahorat'  fani bo‘yicha ta’lim texnologiyalarini ishlab chiqishning konseptual asoslari",
    "1-mavzu. Pedagogik mahorat haqida tushuncha, uning o‘qituvchi faoliyatida tutgan o‘rni va ahamiyati Pedagogik fikr tarixi va maktab amaliyotida o‘qituvchi mahorati masalalari",
    "2-mavzu.O‘qituvchi faoliyatida pedagogik qobiliyati",
    "3-mavzu. O‘qituvchining kommunikativ qobiliyati",
    "4-mavzu: O‘qituvchi faoliyatida muloqot madaniyati va psixologiyasi",
    "5-mavzu: O‘qituvchi va o‘quvchi o‘rtasidagi muloqot",
    "6-mavzu: Pedagogik nazokat va odob-axloq",
    "7-mavzu: Pedagogik texnika pedagogik mahoratning tarkibiy qismi sifatida",
    "8-mavzu. O‘qituvchining nutq mahorati",
    "9-mavzu: O‘qituvchining ta’lim jarayonidagi mahorati",
    "10-mavzu: O‘qituvchining tarbiyachilik mahorati",
    "11-mavzu: O‘qituvchining tarbiya texnologiyalari asosida faoliyat olib borishi",
    "12-mavzu: O‘qituvchining pedagogik faoliyatida kompyuter texnologiyalaridan foydalanish",
    "13--mavzu Ilg‘or pedagogik tajribani to‘plash va ommalashtirish",
    "Kirish",
    "Kirish",
    "Kirish",
    "Kirish",
    "Glossariy",
  ];

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
          "O'quv qo'llanma",
          size: 16.sp,
          color: AppColor.white,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return _itemContent(
              title: contentList[index],
              onPressed: () {_openPdf(path: path)},
            );
          },
          itemCount: contentList.length),
    );
  }

  Widget _itemContent({
    required String title,
    required VoidCallback onPressed,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.w, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        gradient: const LinearGradient(
          colors: [AppColor.itemTopColor, AppColor.itemBottomColor],
        ),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        height: 50.h,
        minWidth: ScreenUtil().screenWidth,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 8,
              child: AppText(
                title,
                size: 14.sp,
                maxLines: 2,
                color: AppColor.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Flexible(
                flex: 1,
                child: Icon(Icons.chevron_right,
                    color: AppColor.white, size: 16.sp))
          ],
        ),
      ),
    );
  }

  _openPdf({required String path}) async {
    var file = await PDFApi.loadAsset(path: path);
    MyApp.navigatorKey.currentState?.push(MaterialPageRoute(
        builder: (context) => PdfScreen(filePath: file.path)));
  }
}
