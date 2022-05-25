import 'Question.dart';

class Quiz {
  // ignore: non_constant_identifier_names
  //ecan
  int _questionNo = 0;
  //
  final List<Questions> _questionBank = [
    Questions('Peanuts are not nuts', true),
    Questions('People may sneeze or cough while sleeping deeply', false),
    Questions('Copyrights depreciate over time', true),
    Questions('Light travels in a straight line', true),
    Questions('Imposters syndrome is a mental illness', false),
    Questions('The Atlantic Ocean is the warmest in the world', false),
    Questions('Almost 30% of Americans are self-employed', true),
    Questions('There are more ancient pyramids in Sudan than in Egypt', true),
    Questions('There are more ancient pyramids in Sudan than in Egypt', true),
    Questions('There are three rivers in Saudi Arabia', false),
  ];

  //ignore:
  void nextQuestions() {
    if (_questionNo < _questionBank.length - 1) {
      _questionNo++;
    }
  }

  // ignore: non_constant_identifier_names
  String GetQuestions() {
    return _questionBank[_questionNo].Question;
  }

  // ignore: non_constant_identifier_names
  bool CorrectAnswer() {
    return _questionBank[_questionNo].Answer;
  }

  bool finished() {
    if (_questionNo >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNo = 0;
  }
}
