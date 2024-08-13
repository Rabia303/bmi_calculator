import 'dart:math';

class CalculateBrain {
  CalculateBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  late double _bmi;

  String CalculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5) {
      return 'under weight';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'normal weight';
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'over weight';
    }
    else{
       return 'obese';
    }
   
  }
  String getInterpretion(){
   if (_bmi < 18.5) {
      return 'eat more';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'keep your routine';
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'eat less';
    }
    else{
       return 'go to gym and diet';
    }
   
  }
}


