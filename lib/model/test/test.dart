import 'package:pedagogik_mahorat/model/test/answer.dart';

class TestModel {
  String question;
  List<Answer> answerList;
  bool isSelected;

  TestModel(
      {required this.question,
      required this.answerList,
      required this.isSelected});
}
