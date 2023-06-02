import '../data/models/graph.dart';

List<Graph> graphs = graphsJson.map((object) => Graph.fromJson(object)).toList();

const List<Map<String, dynamic>> graphsJson = [
  {
    "id": 1,
    "vertices": ["A", "B", "C", "D"],
    "edges": [["A", "B"], ["A", "C"], ["A", "D"], ["B", "D"], ["C", "D"]]
  },
  {
    "id": 2,
    "vertices": ["A", "B", "C", "D"],
    "edges": [["A", "B"], ["C", "D"]]
  },
  {
    "id": 3,
    "vertices": ["A", "B", "C", "D"],
    "edges": [["A", "B"], ["A", "C"], ["A", "D"], ["B", "C"], ["B", "D"], ["C", "D"], ["B", "B"]]
  },
  {
    "id": 4,
    "vertices": ["A", "B", "C", "D"],
    "edges": [["A", "B"], ["A", "C"], ["A", "D"], ["B", "C"], ["B", "D"], ["C", "D"]]
  },
  {
    "id": 5,
    "vertices": ["A", "B", "C", "D"],
    "edges": [["A", "B"], ["C", "D"], ["A", "D"], ["D", "D"]]
  },
  {
    "id": 6,
    "vertices": ["A", "B", "C"],
    "edges": [["A", "B"], ["B", "B"], ["A", "C"], ["B", "C"]]
  },
  {
    "id": 7,
    "vertices": ["C", "B", "D", "A"],
    "edges": [["C", "B"], ["D", "A"], ["D", "D"]]
  },
  {
    "id": 8,
    "vertices": ["A", "B", "C"],
    "edges": [["A", "B"], ["A", "C"], ["B", "C"], ["C", "C"]]
  },
  {
    "id": 9,
    "vertices": ["D", "A", "B"],
    "edges": [["D", "A"], ["D", "B"], ["A", "B"], ["A", "B"]]
  },
  {
    "id": 10,
    "vertices": ["C", "D", "A"],
    "edges": [["C", "D"], ["C", "A"], ["D", "A"]]
  },
  {
    "id": 11,
    "vertices": ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "AA", "AB", "AC", "AD", "AE", "AF", "AG", "AH", "AI", "AJ", "AK", "AL", "AM", "AN", "AO", "AP", "AQ", "AR", "AS", "AT", "AU", "AV", "AW", "AX", "AY", "AZ", "BA", "BB", "BC", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BK", "BL", "BM", "BN", "BO", "BP", "BQ", "BR", "BS", "BT", "BU", "BV", "BW", "BX", "BY", "BZ", "CA", "CB", "CC", "CD", "CE", "CF", "CG", "CH", "CI", "CJ", "CK", "CL", "CM", "CN", "CO", "CP", "CQ", "CR", "CS", "CT", "CU", "CV", "CW", "CX", "CY"],
    "edges": [
            ["A", "B"], ["A", "C"], ["A", "D"], ["A", "E"], ["A", "F"], ["A", "G"], ["A", "H"], ["A", "I"], ["A", "J"], ["A", "K"], ["A", "L"], ["A", "M"], ["A", "N"], ["A", "O"], ["A", "P"], ["A", "Q"], ["A", "R"], ["A", "S"], ["A", "T"], ["A", "U"], ["A", "V"], ["A", "W"], ["A", "X"], ["A", "Y"], ["A", "Z"], ["A", "AA"], ["A", "AB"], ["A", "AC"], ["A", "AD"], ["A", "AE"], ["A", "AF"], ["A", "AG"], ["A", "AH"], ["A", "AI"], ["A", "AJ"], ["A", "AK"], ["A", "AL"], ["A", "AM"], ["A", "AN"], ["A", "AO"], ["A", "AP"], ["A", "AQ"], ["A", "AR"], ["A", "AS"], ["A", "AT"], ["A", "AU"], ["A", "AV"], ["A", "AW"], ["A", "AX"], ["A", "AY"], ["A", "AZ"], ["A", "BA"], ["A", "BB"], ["A", "BC"], ["A", "BD"], ["A", "BE"], ["A", "BF"], ["A", "BG"], ["A", "BH"], ["A", "BI"], ["A", "BJ"], ["A", "BK"], ["A", "BL"], ["A", "BM"], ["A", "BN"], ["A", "BO"], ["A", "BP"], ["A", "BQ"], ["A", "BR"], ["A", "BS"], ["A", "BT"], ["A", "BU"], ["A", "BV"], ["A", "BW"], ["A", "BX"], ["A", "BY"], ["A", "BZ"], ["A", "CA"], ["A", "CB"], ["A", "CC"], ["A", "CD"], ["A", "CE"], ["A", "CF"], ["A", "CG"], ["A", "CH"], ["A", "CI"], ["A", "CJ"], ["A", "CK"], ["A", "CL"], ["A", "CM"], ["A", "CN"], ["A", "CO"], ["A", "CP"], ["A", "CQ"], ["A", "CR"], ["A", "CS"], ["A", "CT"], ["A", "CU"], ["A", "CV"], ["A", "CW"], ["A", "CX"], ["A", "CY"],
            ["B", "C"], ["B", "D"], ["B", "E"], ["B", "F"], ["B", "G"], ["B", "H"], ["B", "I"], ["B", "J"], ["B", "K"], ["B", "L"], ["B", "M"], ["B", "N"], ["B", "O"], ["B", "P"], ["B", "Q"], ["B", "R"], ["B", "S"], ["B", "T"], ["B", "U"], ["B", "V"], ["B", "W"], ["B", "X"], ["B", "Y"], ["B", "Z"], ["B", "AA"], ["B", "AB"], ["B", "AC"], ["B", "AD"], ["B", "AE"], ["B", "AF"], ["B", "AG"], ["B", "AH"], ["B", "AI"], ["B", "AJ"], ["B", "AK"], ["B", "AL"], ["B", "AM"], ["B", "AN"], ["B", "AO"], ["B", "AP"], ["B", "AQ"], ["B", "AR"], ["B", "AS"], ["B", "AT"], ["B", "AU"], ["B", "AV"], ["B", "AW"], ["B", "AX"], ["B", "AY"], ["B", "AZ"], ["B", "BA"], ["B", "BB"], ["B", "BC"], ["B", "BD"], ["B", "BE"], ["B", "BF"], ["B", "BG"], ["B", "BH"], ["B", "BI"], ["B", "BJ"], ["B", "BK"], ["B", "BL"], ["B", "BM"], ["B", "BN"], ["B", "BO"], ["B", "BP"], ["B", "BQ"], ["B", "BR"], ["B", "BS"], ["B", "BT"], ["B", "BU"], ["B", "BV"], ["B", "BW"], ["B", "BX"], ["B", "BY"], ["B", "BZ"], ["B", "CA"], ["B", "CB"], ["B", "CC"], ["B", "CD"], ["B", "CE"], ["B", "CF"], ["B", "CG"], ["B", "CH"], ["B", "CI"], ["B", "CJ"], ["B", "CK"], ["B", "CL"], ["B", "CM"], ["B", "CN"], ["B", "CO"], ["B", "CP"], ["B", "CQ"], ["B", "CR"], ["B", "CS"], ["B", "CT"], ["B", "CU"], ["B", "CV"], ["B", "CW"], ["B", "CX"], ["B", "CY"]
        ]
  },
  {
    "id": 12,
    "vertices": ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "AA", "BB", "CC", "DD", "EE", "FF", "GG", "HH", "II", "JJ", "KK", "LL", "MM", "NN", "OO", "PP", "QQ", "RR", "SS", "TT", "UU", "VV", "WW", "XX", "YY", "ZZ", "AAA", "BBB", "CCC", "DDD", "EEE", "FFF", "GGG", "HHH", "III", "JJJ", "KKK", "LLL", "MMM", "NNN", "OOO", "PPP", "QQQ", "RRR", "SSS", "TTT", "UUU", "VVV", "WWW", "XXX", "YYY", "ZZZ", "AAAA", "BBBB", "CCCC", "DDDD", "EEEE", "FFFF", "GGGG", "HHHH", "IIII", "JJJJ", "KKKK", "LLLL", "MMMM", "NNNN", "OOOO", "PPPP", "QQQQ", "RRRR", "SSSS", "TTTT", "UUUU", "VVVV", "WWWW", "XXXX", "YYYY", "ZZZZ", "AAAAA", "BBBBB"],
    "edges": [
            ["A", "B"], ["A", "C"], ["A", "D"], ["A", "E"], ["A", "F"], ["A", "G"], ["A", "H"], ["A", "I"], ["A", "J"], ["A", "K"], ["A", "L"], ["A", "M"], ["A", "N"], ["A", "O"], ["A", "P"], ["A", "Q"], ["A", "R"], ["A", "S"], ["A", "T"], ["A", "U"], ["A", "V"], ["A", "W"], ["A", "X"], ["A", "Y"], ["A", "Z"], ["A", "AA"], ["A", "BB"], ["A", "CC"], ["A", "DD"], ["A", "EE"], ["A", "FF"], ["A", "GG"], ["A", "HH"], ["A", "II"], ["A", "JJ"], ["A", "KK"], ["A", "LL"], ["A", "MM"], ["A", "NN"], ["A", "OO"], ["A", "PP"], ["A", "QQ"], ["A", "RR"], ["A", "SS"], ["A", "TT"], ["A", "UU"], ["A", "VV"], ["A", "WW"], ["A", "XX"], ["A", "YY"], ["A", "ZZ"], ["A", "AAA"], ["A", "BBB"], ["A", "CCC"], ["A", "DDD"], ["A", "EEE"], ["A", "FFF"], ["A", "GGG"], ["A", "HHH"], ["A", "III"], ["A", "JJJ"], ["A", "KKK"], ["A", "LLL"], ["A", "MMM"], ["A", "NNN"], ["A", "OOO"], ["A", "PPP"], ["A", "QQQ"], ["A", "RRR"], ["A", "SSS"], ["A", "TTT"], ["A", "UUU"], ["A", "VVV"], ["A", "WWW"], ["A", "XXX"], ["A", "YYY"], ["A", "ZZZ"], ["A", "AAAA"], ["A", "BBBB"], ["B", "C"], ["B", "D"], ["B", "E"], ["B", "F"], ["B", "G"], ["B", "H"], ["B", "I"], ["B", "J"], ["B", "K"], ["B", "L"], ["B", "M"], ["B", "N"], ["B", "O"], ["B", "P"], ["B", "Q"], ["B", "R"], ["B", "S"], ["B", "T"], ["B", "U"], ["B", "V"], ["B", "W"], ["B", "X"], ["B", "Y"], ["B", "Z"], ["B", "AA"], ["B", "BB"], ["B", "CC"], ["B", "DD"], ["B", "EE"], ["B", "FF"], ["B", "GG"], ["B", "HH"], ["B", "II"], ["B", "JJ"], ["B", "KK"], ["B", "LL"], ["B", "MM"], ["B", "NN"], ["B", "OO"], ["B", "PP"], ["B", "QQ"], ["B", "RR"], ["B", "SS"], ["B", "TT"], ["B", "UU"], ["B", "VV"], ["B", "WW"], ["B", "XX"], ["B", "YY"], ["B", "ZZ"], ["B", "AAA"], ["B", "BBB"], ["B", "CCC"], ["B", "DDD"], ["B", "EEE"], ["B", "FFF"], ["B", "GGG"], ["B", "HHH"], ["B", "III"], ["B", "JJJ"], ["B", "KKK"], ["B", "LLL"], ["B", "MMM"], ["B", "NNN"], ["B", "OOO"], ["B", "PPP"], ["B", "QQQ"], ["B", "RRR"], ["B", "SSS"], ["B", "TTT"], ["B", "UUU"], ["B", "VVV"], ["B", "WWW"], ["B", "XXX"], ["B", "YYY"], ["B", "ZZZ"], ["B", "AAAA"], ["B", "BBBB"]
        ]
  }
];