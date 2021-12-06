/// id : "9"
/// title : "کلاه"
/// content : "Kolah Ghermezi (Persian: کلاه‌قرمزی‎, lit. \"The One with the Red Hat\"), also known as Red Hat, is a fictional puppet character created by Iraj Tahmasb and Hamid Jebellialong with Marzieh Mahboob and Masoud Sadeghian Boroujeni. He has appeared in various television series and a number of theatrical films. The first TV program to feature the character was a 1995 episode of the children's puppet show Post Box (Persian:صندوق پست). Films based on this character are the best-selling in the history of Iranian cinema. Fo"
/// cost : "15000"
/// img_url : "https://www.bing.com/th?id=OIP.clzDg49ZMKWSpk5dW5UB9QHaF7&w=135&h=108&c=8&rs=1&qlt=90&dpr=1.25&pid=3.1&rm=2"
/// date : "2021-04-29"

class Post {
  int _id = 0;
  String _title = "";
  String _content = "";
  String _cost = "";
  String _imgUrl = "";
  String _date = "";

  Post({
    required int id,
    required String title,
    required String content,
    required String cost,
    required String imgUrl,
    required String date,
  }) {
    _id = id;
    _title = title;
    _content = content;
    _cost = cost;
    _imgUrl = imgUrl;
    _date = date;
  }

  Post.fromJson(dynamic json) {
    _id = int.parse(json['id']);
    _title = json['title'];
    _content = json['content'];
    _cost = json['cost'];
    _imgUrl = json['img_url'];
    _date = json['date'];
  }

  int get id => _id;

  String get title => _title;

  String get content => _content;

  String get cost => _cost;

  String get imgUrl => _imgUrl;

  String get date => _date;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['content'] = _content;
    map['cost'] = _cost;
    map['img_url'] = _imgUrl;
    map['date'] = _date;
    return map;
  }
}
