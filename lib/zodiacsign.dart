import 'dart:html';

import 'package:flutter/cupertino.dart';

class ZodiacSign {
  int _day = 0;
  int _month = 0;
  String _zodiac = '';
  String _zodiacElement = '';
  String _zodiacPersonality = '';
  String _zodiacCompatibility = '';

  ZodiacSign(int day, int month){
    if( day <= 0 || day > 31 || month <= 0 || month > 12) {
      throw Exception('date is not valid');
    }
    _day = day;
    _month = month;
    _zodiac = getZodiacSign(_day, _month);
    _zodiacElement = getZodiacElement(_zodiac);
    _zodiacPersonality = getZodiacPersonality(_zodiac);
    _zodiacCompatibility = getZodiacCompatibility(_zodiac);
  }
  String getZodiacSign(int day, int month) {
    String zodiac = '';
    if ((month == 3 && day >= 21) || (month == 4 && day <= 19)) {
      zodiac = 'Aries';
    } else if ((month == 4 && day >= 20) || (month == 5 && day <= 20)) {
      zodiac = 'Taurus';
    } else if ((month == 5 && day >= 21) || (month == 6 && day <= 20)) {
      zodiac = 'Gemini';
    } else if ((month == 6 && day >= 21) || (month == 7 && day <= 22)) {
      zodiac = 'Cancer';
    } else if ((month == 7 && day >= 23) || (month == 8 && day <= 22)) {
      zodiac = 'Leo';
    } else if ((month == 8 && day >= 23) || (month == 9 && day <= 22)) {
      zodiac = 'Virgo';
    } else if ((month == 9 && day >= 23) || (month == 10 && day <= 22)) {
      zodiac = 'Libra';
    } else if ((month == 10 && day >= 23) || (month == 11 && day <= 21)) {
      zodiac = 'Scorpio';
    } else if ((month == 11 && day >= 22) || (month == 12 && day <= 21)) {
      zodiac = 'Sagittarius';
    } else if ((month == 12 && day >= 22) || (month == 1 && day <= 19)) {
      zodiac = 'Capricorn';
    } else if ((month == 1 && day >= 20) || (month == 2 && day <= 18)) {
      zodiac = 'Aquarius';
    } else {
      zodiac = 'Pisces';
    }
    return zodiac;
  }

  String getZodiacElement(String zodiac){
    String element = '';
    if( zodiac =='Aries' || zodiac =='Leo' || zodiac == 'Sagittarius'){
      element = 'Fire';
    } else if( zodiac =='Taurus' || zodiac =='Virgo' || zodiac == 'Capricorn'){
      element = 'Earth';
    } else if( zodiac =='Gemini' || zodiac =='Libra' || zodiac == 'Aquarius'){
      element = 'Air';
    } else {
      element = 'Water';
    }
    return element;
  }

  String getZodiacPersonality (String zodiac){
    String personality = '';
    if (zodiac == 'Aries'){
      personality = 'COMPETITIVE BUT INSECURE \nThere is nothing an Aries cannot achieve once they set their mind to it. '
          'No mountain is too high. However, you will also find them nursing a hidden imposter syndrome that can chip away '
          'at their confidence if allowed free rein. ';
    } else if (zodiac == 'Taurus'){
      personality = 'LOYAL BUT STUBBORN \nLoyal to a fault, a Taurean is the most reliable person you can have in your corner'
          ' when the chips are down. However, they have a stubborn streak a mile wide and can hold a grudge like no one else, '
          'so make sure you don’t cross them.';
    } else if (zodiac == 'Gemini'){
      personality = 'VERSATILE BUT IMPATIENT \n Throw a Gemini to the wolves, and they will come back leading the pack—the air '
          'element in this sign means that they can adapt easily to any situation. But their fuse runs short and once they run '
          'out of patience with someone, there is no wiggle room for second chances. ';
    } else if (zodiac == 'Cancer'){
      personality ='PASSIONATE BUT UNCOMMUNICATIVE \n Behind the brooding fortress that a Cancer has erected to protect themselves '
          'are abundant reserves of deep, undying love and loyalty. Pity that few will get to experience it because they aren’t the '
          'best at communicating what is in their hearts. ';
    } else if (zodiac == 'Leo'){
      personality = 'CONFIDENT BUT DOMINATING \n Born to be under the spotlight, there is nothing that this lion enjoys as much as '
          'being the cynosure of all eyes. However, this innate conviction that they are always in the right means that they can often '
          'run roughshod over others’ feelings and sentiments.';
    } else if (zodiac == 'Virgo'){
      personality = 'PERFECTIONIST BUT SELF-CRITICAL \n Meticulous, organised and diligent, if the world were to end tomorrow, you would '
          'want a Virgo to lead the march into the new dawn. However, that pesky niggle of self-doubt in their head means that they are often '
          'harsher on themselves than anybody else can be. ';
    } else if (zodiac == 'Libra'){
      personality = 'EMPATHETIC BUT INDECISIVE \n If you are looking for someone to lend a comforting shoulder during times of distress and truly '
          'put themselves in your shoes, ring up the first Libra in your contacts. This empathetic side of theirs can sometimes get derailed by their '
          'inability to make up their mind, compounded by a fear of confrontations, which means that you never truly know which side they stand on.';
    } else if (zodiac == 'Scorpio'){
      personality = 'INTENSE BUT SECRETIVE \n The fiery, intense personality of a Scorpio can make any time spent together a wild, dizzying ride. '
          'But while they will go the extra mile to take care of your emotional needs, they remain notoriously secretive about their own—good luck '
          'cracking open the spine of this closed book.';
    } else if (zodiac == 'Sagittarius'){
      personality = 'SPONTANEOUS BUT FLIGHTY \n There is no storyteller quite like a Sagittarius—they can have the entire room hanging on their every word. '
          'But while they can show you grand dreams, it can sometimes be hard to pin them down and make them deliver on their promises.';
    } else if (zodiac == 'Capricorn'){
      personality = 'GOAL-ORIENTED BUT UNFORGIVING \n Not everyone can conquer the world but if a Cap were to set out to do it, nothing would deter them '
          'until they had accomplished their goal. With a personality that is hardwired in practicality, they can often fail to appreciate nuance and are '
          'known to be unforgiving of others’ mistakes.';
    } else if (zodiac == 'Aquarius'){
      personality = 'PHILOSOPHICAL BUT DETACHED \n A deep-thinker with a humanitarian streak, an Aquarian has grand plans to change the world. Shame that '
          'they left the party early though because their reclusive nature makes it hard for them to establish bonds with those around them.';
    } else{
      personality = 'WHIMISICAL BUT OVER-SENSITIVE \n If you are looking to escape the mundane everyday grind, a Pisces’s imaginative mind can whisk you '
          'away into a realm of fantasy. Their kind, nurturing personality can prove to be a double-edged sword though, because their overtly sensitive '
          'heart is easily wounded, further compounded by a tendency to play the victim.';
    }
    return personality;
  }

  String getZodiacCompatibility(String zodiac){
    String compatibility = '';
    if (zodiac == 'Aries'){
      compatibility = 'Fire signs: Leo and Sagittarius \n '
          'Air signs: Gemini, Libra, and Aquarius \n'
          'Cosmic polar pair: Libra';
    } else if (zodiac == 'Taurus'){
      compatibility = 'Earth signs: Virgo and Capricorn \n '
          'Water sings: Cancer, Scorpio, and Pisces \n'
          'Cosmic polar pair: Scorpio';
    } else if (zodiac == 'Gemini'){
      compatibility = 'Air signs – Libra and Aquarius \n '
          'Fire signs: Aries, Leo, and Sagittarius \n'
          'Cosmic polar pair: Sagittarius';
    } else if (zodiac == 'Cancer'){
      compatibility = 'Water signs: Scorpio and Pisces \n'
          'Earth signs: Taurus, Virgo, and Capricorn \n'
          'Cosmic polar pair: Capricorn';
    }else if (zodiac == 'Leo'){
      compatibility = 'Fire signs: Aries and Sagittarius \n'
          'Air signs: Gemini, Libra, and Aquarius \n'
          'Cosmic polar pair: Aquarius';
    } else if (zodiac == 'Virgo'){
      compatibility = 'Earth signs: Taurus and Capricorn \n'
          'Water signs: Cancer, Scorpio, and Pisces \n'
          'Cosmic polar pair: Pisces';
    } else if (zodiac == 'Libra'){
      compatibility = 'Air signs: Gemini and Aquarius \n'
          'Fire signs: Aries, Leo, and Sagittarius \n'
          'Cosmic polar pair: Aries.';
    } else if (zodiac == 'Scorpio'){
      compatibility = 'Water signs: Cancer and Pisces \n'
          'Earth signs: Taurus, Virgo, and Capricorn \n'
          'Cosmic polar pair: Taurus';
    } else if (zodiac == 'Sagittarius'){
      compatibility ='Fire signs: Aries and Leo \n'
          'Air signs: Gemini, Libra and Aquarius \n'
          'Cosmic polar pair: Gemini';
    } else if (zodiac == 'Capricorn'){
      compatibility = 'Earth signs: Taurus and Virgo \n'
          'Water signs: Cancer, Scorpio, and Pisces \n'
          'Cosmic polar pair: Cancer';
    } else if (zodiac == 'Aquarius'){
      compatibility = 'Air signs: Gemini and Libra \n'
          'Fire signs: Aries, Leo, and Sagittarius \n'
          'Cosmic polar pair: Leo';
    } else {
      compatibility = 'Water signs: Cancer and Scorpio \n'
          'Earth signs: Taurus, Virgo, and Capricorn \n'
          'Cosmic polar pair: Virgo';
    }
    return compatibility;
  }

  @override
  String toString() {
    return'''
    const Text('Zodiac Sign: ', style: TextStyle(fontWeight: FontWeight.bold) );
      Zodiac Sign: $_zodiac \n\n
      Zodiac Element: $_zodiacElement \n\n
      Zodiac Personality: \n $_zodiacPersonality \n\n
      Zodiac Compatibility: \n $_zodiacCompatibility 
    ''';
  }
}
