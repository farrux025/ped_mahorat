import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pedagogik_mahorat/components/app_text.dart';
import 'package:pedagogik_mahorat/constants/color.dart';
import 'package:pedagogik_mahorat/main.dart';
import 'package:pedagogik_mahorat/views/pdf_screen.dart';

import '../model/pdf_model.dart';
import '../service/pdf_api.dart';

class ContentsScreen extends StatelessWidget {
  ContentsScreen({super.key});

  final List<PdfModel> contentList = [
    PdfModel(title: "KIRISH", path: ""),
    PdfModel(
        title:
            "PEDAGOGIK MAHORAT HAQIDA  TUSHUNCHA, UNING  O‘QITUVCHI FAOLIYATIDA TUTGAN  O’RNI",
        path: "/mavzu1.pdf"),
    PdfModel(
        title: "O‘QITUVCHI FAOLIYATIDA PEDAGOGIK QOBILIYAT",
        path: "/mavzu2.pdf"),
    PdfModel(
        title: "O‘QITUVCHINING  KOMMUNIKATIV QOBILIYATI", path: "/mavzu3.pdf"),
    PdfModel(
        title: "O‘QITUVCHI FAOLIYATIDA MULOQOT  MADANIYATI VA PSIXOLOGIYASI",
        path: "/mavzu4.pdf"),
    PdfModel(
        title: "O‘QITUVCHI VA O‘QUVCHI O‘RTASIDAGI MULOQOT",
        path: "/mavzu5.pdf"),
    PdfModel(title: "PEDAGOGIK  NAZOKAT VA ODOB-AXLOQ", path: "/mavzu6.pdf"),
    PdfModel(
        title:
            "PEDAGOGIK TEXNIKA HAQIDA TUSHUNCHA,  PEDAGOGIK TEXNIKANI SHAKLLANTIRISH USLUBLARI",
        path: "/mavzu7.pdf"),
    PdfModel(
        title: "NUTQ TEXNIKASI VA NOTIQLIK MADANIYATI", path: "/mavzu8.pdf"),
    PdfModel(
        title: "O’QITUVCHINING TA’LIM JARAYONIDAGI MAHORATI",
        path: "/mavzu9.pdf"),
    PdfModel(
        title: "O’QITUVCHINING TARBIYACHI SIFTIDAGI MAHORATI",
        path: "/mavzu10.pdf"),
    PdfModel(
        title: "O’Z-O’ZINI  TARBIYALASH VA O’Z USTIDA ISHLASH",
        path: "/mavzu11.pdf"),
    PdfModel(
        title: "O’QITUVCHINING OTA-ONALAR BILAN ISHLASH", path: "/mavzu12.pdf"),
    PdfModel(
        title: "ILG’OR PEDAGOGIK TAJRIBANI TO’PLASH VA OMMALASHTIRISH TIZIMI",
        path: "/mavzu13.pdf"),
    PdfModel(title: "FOYDALANILGAN ADABIYOTLAR", path: ""),
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
              title: contentList[index].title ?? '',
              onPressed: () {
                _openPdf(
                    path: "assets${contentList[index].path}",
                    title: contentList[index].title ?? '');
              },
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
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        gradient: const LinearGradient(
          colors: [AppColor.itemTopColor, AppColor.itemBottomColor],
        ),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        height: 50.h,
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        minWidth: ScreenUtil().screenWidth,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 8,
              child: AppText(title,
                  size: 13.sp,
                  maxLines: 2,
                  color: AppColor.white,
                  fontWeight: FontWeight.w500),
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

  _openPdf({
    required String path,
    required String title,
  }) async {
    var file = await PDFApi.loadAsset(path: path);
    MyApp.navigatorKey.currentState?.push(MaterialPageRoute(
        builder: (context) => PdfScreen(filePath: file.path, title: title)));
  }
}
