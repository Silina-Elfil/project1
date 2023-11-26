class ChineseZodiacSign {
  int _day = 0;
  int _month = 0;
  int _year = 0;

  ChineseZodiacSign(int day, int month, int year){
    if( day <= 0 || day > 31 || month <= 0 || month > 12) {
      throw Exception('date is not valid');
    }
    _day = day;
    _month = month;
    _year = year;
  }
}