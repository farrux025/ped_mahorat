import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';

import '../components/app_text.dart';
import '../constants/color.dart';

class PdfScreen extends StatelessWidget {
  final String filePath;

  const PdfScreen({super.key, required this.filePath});

  @override
  Widget build(BuildContext context) {
    var name = basename(filePath);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColorMain,
        centerTitle: true,
        elevation: 3.sp,
        title: AppText(name.replaceAll(".pdf", ""),
            color: Colors.white, size: 16.sp, fontWeight: FontWeight.w500),
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
