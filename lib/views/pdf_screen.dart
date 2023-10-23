import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';

import '../components/app_text.dart';
import '../constants/color.dart';

class PdfScreen extends StatelessWidget {
  final String filePath;
  final String title;

  const PdfScreen({
    super.key,
    required this.filePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColorMain,
        leading: BackButton(color: AppColor.white),
        title: AppText(title,
            color: Colors.white, size: 14.sp, fontWeight: FontWeight.w500),
      ),
      body: PDFView(
        filePath: filePath,
        enableSwipe: true,
        swipeHorizontal: false,
        autoSpacing: false,
        pageFling: false,
      ),
    );
  }
}
