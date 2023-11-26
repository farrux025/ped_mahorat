import 'dart:developer';

import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pedagogik_mahorat/components/app_text.dart';
import 'package:pedagogik_mahorat/constants/color.dart';
import 'package:pedagogik_mahorat/data/test.dart';
import 'package:pedagogik_mahorat/main.dart';
import 'package:pedagogik_mahorat/model/test/answer.dart';
import 'package:pedagogik_mahorat/model/test/test.dart';
import 'package:pedagogik_mahorat/views/home.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen>
    with SingleTickerProviderStateMixin {
  late final CustomTimerController _timerController = CustomTimerController(
      vsync: this,
      begin: const Duration(minutes: 20),
      end: const Duration(minutes: 0),
      // initialState: CustomTimerState.reset,
      interval: CustomTimerInterval.seconds);

  late List<TestModel> allTests;
  int count = 0;
  bool isShuffle = true;
  Answer? selectedAnswer;
  List<Answer> answerList = [];

  @override
  void initState() {
    _timerController.start();
    _timerController.addListener(() {
      if (_timerController.state.value == CustomTimerState.finished) {
        _finishTest();
      }
    });
    allTests = TestData.testList;
    allTests.shuffle();
    super.initState();
  }

  @override
  void dispose() {
    _timerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TestModel test = allTests[count];
    if (isShuffle) {
      test.answerList.shuffle();
    }
    return Scaffold(
      backgroundColor: AppColor.backgroundColorMain,
      appBar: AppBar(
        elevation: 3,
        backgroundColor: AppColor.backgroundColorMain,
        surfaceTintColor: AppColor.backgroundColorMain,
        centerTitle: true,
        leading: const BackButton(color: Colors.white),
        title: AppText("Test sinovi",
            color: AppColor.white, size: 16.sp, fontWeight: FontWeight.w700),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppText("Test uchun ajratilgan vaqt",
                      color: AppColor.white,
                      size: 14.sp,
                      fontWeight: FontWeight.w500),
                  SizedBox(width: 10.w),
                  CustomTimer(
                    controller: _timerController,
                    builder: (state, remaining) {
                      return AppText(
                          "${remaining.minutes}:${remaining.seconds}",
                          color: Colors.green,
                          size: 16.sp,
                          fontWeight: FontWeight.w500);
                    },
                  )
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.all(16.sp),
                width: ScreenUtil().screenWidth,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      AppColor.itemTopColor,
                      AppColor.itemBottomColor
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(12.r)),
                child: Column(
                  children: [
                    AppText(test.question,
                        size: 14.sp,
                        color: AppColor.white,
                        fontWeight: FontWeight.w700,
                        maxLines: 10),
                    SizedBox(height: 10.h),
                    _answerRadio(test.answerList[0],
                        value: test.answerList[0].answer, onChanged: (newVal) {
                      isShuffle = false;
                      setState(() {
                        groupValue = newVal;
                        if (test.isSelected) {
                          for (var element1 in test.answerList) {
                            for (var element2 in answerList) {
                              if (element1 == element2) {
                                answerList.remove(element2);
                              }
                            }
                          }
                        }
                        answerList.add(test.answerList[0]);
                        // selectedAnswer = test.answerList[0];
                        test.isSelected = true;
                      });
                    }),
                    _answerRadio(test.answerList[1],
                        value: test.answerList[1].answer, onChanged: (newVal) {
                      isShuffle = false;
                      setState(() {
                        groupValue = newVal;
                        if (test.isSelected) {
                          for (var element1 in test.answerList) {
                            for (var element2 in answerList) {
                              if (element1 == element2) {
                                answerList.remove(element2);
                              }
                            }
                          }
                        }
                        answerList.add(test.answerList[1]);
                        // selectedAnswer = test.answerList[1];
                        test.isSelected = true;
                      });
                    }),
                    _answerRadio(test.answerList[2],
                        value: test.answerList[2].answer, onChanged: (newVal) {
                      isShuffle = false;
                      setState(() {
                        groupValue = newVal;
                        if (test.isSelected) {
                          for (var element1 in test.answerList) {
                            for (var element2 in answerList) {
                              if (element1 == element2) {
                                answerList.remove(element2);
                                break;
                              }
                            }
                          }
                        }
                        answerList.add(test.answerList[2]);
                        // selectedAnswer = test.answerList[2];
                        test.isSelected = true;
                      });
                    }),
                    _answerRadio(test.answerList[3],
                        value: test.answerList[3].answer, onChanged: (newVal) {
                      isShuffle = false;
                      setState(() {
                        groupValue = newVal;
                        if (test.isSelected) {
                          for (var element1 in test.answerList) {
                            for (var element2 in answerList) {
                              if (element1 == element2) {
                                answerList.remove(element2);
                              }
                            }
                          }
                        }
                        answerList.add(test.answerList[3]);
                        // selectedAnswer = test.answerList[3];
                        test.isSelected = true;
                      });
                    }),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                      onPressed: () {
                        if (count > 0) {
                          isShuffle = true;
                          Future.delayed(const Duration(milliseconds: 400), () {
                            setState(() {
                              count--;
                            });
                          });

                          // _setRadio(test);
                        }
                      },
                      child: const Icon(Icons.arrow_back_ios,
                          color: Colors.white)),
                  AppText('${count + 1}/20',
                      size: 16.sp, color: AppColor.white),
                  MaterialButton(
                      onPressed: () {
                        if (count < 19) {
                          isShuffle = true;
                          Future.delayed(const Duration(milliseconds: 400), () {
                            setState(() {
                              count++;
                            });
                          });
                          // _setRadio(test);
                        }
                      },
                      child: const Icon(Icons.arrow_forward_ios,
                          color: Colors.white)),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                width: ScreenUtil().screenWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    gradient: const LinearGradient(colors: [
                      AppColor.itemBottomColor,
                      AppColor.itemTopColor,
                    ])),
                child: MaterialButton(
                  onPressed: () => _finishTest(),
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: AppText("Testni yakunlash",
                      color: AppColor.white,
                      fontWeight: FontWeight.w500,
                      size: 15.sp),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String groupValue = "";

  _answerRadio(Answer answer,
      {required String value, required ValueChanged onChanged}) {
    return RadioListTile(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        title: AppText(answer.answer,
            size: 14.sp, color: AppColor.white, maxLines: 10));
  }

  void _setRadio(TestModel test) {
    Future.delayed(const Duration(seconds: 1), () {
      log("Is selected: ${test.isSelected}");
      if (test.isSelected) {
        for (var element1 in test.answerList) {
          for (var element2 in answerList) {
            if (element2.answer == element1.answer) {
              setState(() {
                groupValue = element2.answer;
              });
              break;
            }
          }
        }
      }
    });
  }

  _finishTest() {
    log("Finish test");
    int sum = 0;
    for (var element in answerList) {
      log(element.answer);
      if (element.isCorrect == 1) {
        sum++;
      }
    }
    log("Javob berildi: ${answerList.length} ta");
    log("Natija: $sum ta");
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => SimpleDialog(
        // backgroundColor: Colors.grey,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
        title: Container(
          width: ScreenUtil().screenWidth,
          padding: EdgeInsets.only(bottom: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                  "Siz berilgan 20 ta savoldan ${answerList.length} tasiga javob berdingiz.",
                  size: 14.sp,
                  maxLines: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Icon(Icons.check, size: 24.sp, color: Colors.green.shade600),
                  SizedBox(width: 6.w),
                  AppText("To'g'ri javoblar soni:",
                      size: 14.sp,
                      maxLines: 2,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ],
              ),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.center,
                child: AppText("$sum",
                    size: 40.sp,
                    color: Colors.green,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 10.h),
              SizedBox(
                width: ScreenUtil().screenWidth,
                child: MaterialButton(
                    onPressed: () => MyApp.navigatorKey.currentState?.push(
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen())),
                    elevation: 3,
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    child: AppText("OK", color: AppColor.white, size: 14.sp)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
