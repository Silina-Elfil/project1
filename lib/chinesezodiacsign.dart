class ChineseZodiacSign {
  int _year = 0;
  String _zodiac = '';
  String _compatibility = '';
  String _element = '';
  String _attribute = '';
  String _description = '';

  ChineseZodiacSign(int year){
    _year = year;
    _zodiac = getZodiacSign(_year);
    _compatibility = getZodiacCompatibility(_zodiac);
    _element = getZodiacElement(_year);
    _attribute = getZodiacAttributes(_zodiac);
    _description = getZodiacDescription(_element);
  }

  String getZodiacSign (int year){
    String zodiac = '';
    if (year == 2020 || year == 2008 || year == 1996 || year == 1984 || year == 1972 || year == 1960
        || year == 1948 || year == 1936 || year == 1924){
      zodiac = 'Rat';
    } else if (year == 2021 || year == 2009 || year == 1997 || year == 1985 || year == 1973 || year == 1961
        || year == 1949 || year == 1937 || year == 1925){
      zodiac = 'Ox';
    } else if (year == 2022 || year == 2010 || year == 1998 || year == 1986 || year == 1974 || year == 1962
        || year == 1950 || year == 1938 || year == 1926){
      zodiac = 'Tiger';
    } else if (year == 2023 || year == 2011 || year == 1999 || year == 1987 || year == 1975 || year == 1963
        || year == 1951 || year == 1939 || year == 1927){
      zodiac = 'Rabbit';
    } else if (year == 2024 || year == 2012 || year == 2000 || year == 1988 || year == 1976 || year == 1964
        || year == 1952 || year == 1940 || year == 1928){
      zodiac = 'Dragon';
    } else if (year == 2013 || year == 2001 || year == 1989 || year == 1977 || year == 1965
        || year == 1953 || year == 1941 || year == 1929){
      zodiac = 'Snake';
    } else if (year == 2014 || year == 2002 || year == 1990 || year == 1978 || year == 1966
        || year == 1954 || year == 1942 || year == 1930){
      zodiac = 'Horse';
    } else if (year == 2015 || year == 2003 || year == 1991 || year == 1979 || year == 1967
        || year == 1955 || year == 1943 || year == 1931){
      zodiac = 'Ram';
    } else if (year == 2016 || year == 2004 || year == 1992 || year == 1980 || year == 1968
        || year == 1956 || year == 1944 || year == 1932){
      zodiac = 'Monkey';
    } else if (year == 2017 || year == 2005 || year == 1993 || year == 1981 || year == 1969
        || year == 1957 || year == 1945 || year == 1933){
      zodiac = 'Rooster';
    } else if (year == 2018 || year == 2006 || year == 1994 || year == 1982 || year == 1970
        || year == 1958 || year == 1946 || year == 1934){
      zodiac = 'Dog';
    } else if (year == 2019 || year == 2007 || year == 1995 || year == 1983 || year == 1971
        || year == 1959 || year == 1947 || year == 1935){
      zodiac = 'Pig';
    }
    return zodiac;
  }

  String getZodiacCompatibility (String zodiac){
    String compatibility = '';
    if (zodiac == 'Rat'){
      compatibility = 'Dragon, Monkey, Rat, and Ox';
    } else if (zodiac == 'Ox'){
      compatibility = 'Rooster, Snake, and Rat';
    } else if (zodiac == 'Tiger'){
      compatibility = 'Horse, Dog, and Pig';
    } else if (zodiac == 'Rabbit'){
      compatibility = 'Pig, Ram, and Dog';
    } else if (zodiac == 'Dragon'){
      compatibility = 'Rat, Monkey, and Rooster';
    } else if (zodiac == 'Snake'){
      compatibility = 'Rooster, Ox, and Monkey';
    } else if (zodiac == 'Horse'){
      compatibility = 'Tiger, Dog, and Ram';
    } else if (zodiac == 'Ram'){
      compatibility = 'Rabbit, Pig, and Horse';
    } else if (zodiac == 'Monkey'){
      compatibility = 'Rat, Dragon, and Snake';
    } else if (zodiac == 'Rooster'){
      compatibility = 'Ox, Snake, and Dragon';
    } else if (zodiac == 'Dog'){
      compatibility = 'Tiger, Horse, and Rabbit';
    } else {
      compatibility = 'Ram, Rabbit, and Tiger';
    }
    return compatibility;
  }

  String getZodiacElement (int year){
    String element = '';
    int lastInt = year % 10;
    if (lastInt == 0 || lastInt == 1){
      element = 'Metal';
    } else if (lastInt == 2 || lastInt == 3){
      element = 'Water';
    } else if (lastInt == 4 || lastInt == 5){
      element = 'Wood';
    } else if (lastInt == 6 || lastInt == 7){
      element = 'Fire';
    } else {
      element = 'Earth';
    }
    return element;
  }

  String getZodiacAttributes (String zodiac){
    String attribute = '';
    if (zodiac == 'Rat'){
      attribute = 'Intelligent and opportunistic';
    } else if (zodiac == 'Ox'){
      attribute = 'Hard-working and dependable';
    } else if (zodiac == 'Tiger'){
      attribute = 'Optimistic and passionate';
    } else if (zodiac == 'Rabbit'){
      attribute = 'Sensitive and kind';
    } else if (zodiac == 'Dragon'){
      attribute = 'Powerful and demanding';
    } else if (zodiac == 'Snake'){
      attribute = 'Transformational and intriguing';
    } else if (zodiac == 'Horse'){
      attribute = 'Quick and active';
    } else if (zodiac == 'Ram'){
      attribute = 'Good-natured and romantic';
    } else if (zodiac == 'Monkey'){
      attribute = 'Playful and clever';
    } else if (zodiac == 'Rooster'){
      attribute = 'Confident and talkative';
    } else if (zodiac == 'Dog'){
      attribute = 'Loyal and honest';
    } else {
      attribute = 'Social and diplomatic';
    }
    return attribute;
  }

  String getZodiacDescription (String element){
    String description = '';
    if (element == 'Metal'){
      description = 'A person born under the metal sign might seem rigid, strong, much like metal, and often, '
          'will serve as a leader. They like rules and order. The person may seem distant or aloof, but actually, '
          'the person is calculating their next steps, considering and weighing options. When in balance, '
          'a metal person is stable, organized, and can have a strong will, but can be patient and effect change. '
          'Metal is associated with the autumn season.';
    } else if (element == 'Water'){
      description = 'A water person is fluid and sensitive to change but can be very imaginative and intuitive. '
          'They are powerful, well-spoken when ready to talk, and peaceful when they want to be. They can be torrential or '
          'calm and nurturing when the situation calls for it. Water is associated with winter.';
    } else if (element == 'Wood'){
      description = 'The wood element is associated with springtime. Like the renewal in the season, the wood element looks '
          'for new ways to grow, improve, and expand. Wood is strong but also flexible and can be warm and generous. '
          'Wood is an achiever and likes to make plans and decisions.';
    } else if (element == 'Fire'){
      description = 'Fire is associated with summer. Fire people are said to have vibrant, energetic personalities, '
          'often with fiery tempers. A person born under the fire sign is said to be adventurous and competitive, '
          'possessing strong self-esteem and leadership qualities. They are dedicated people, intensely passionate about '
          'their family and friends, and sometimes, they can be too eager or impulsive.';
    } else {
      description = 'The earth sign is the middle of the zodiac, the balance between yin and yang. They are abundant, nurturing, '
          'harmonious, and stable. Instead of representing a season, it is the change of seasons, particularly the harvest. '
          'An earth person is patient, reliable, and likable but not as spontaneous since they are idealistic and purposeful. '
          'Although, sometimes to a fault—acting set in their ways.';
    }
    return description;
  }

  @override
  String toString() {
    return '''
    Zodiac Sign: $_zodiac \n\n
    Zodiac Element: $_element \n\n
    Compatibility: $_compatibility \n\n
    Attributes: $_attribute \n\n
    Description: $_element
  ''';
  }

}