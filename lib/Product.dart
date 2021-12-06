class Product {
  int _id;
  String _title;
  String _content;
  String _imgUrl;
  String _cost;
  String _date;

  Product(this._id, this._title, this._content, this._cost, this._imgUrl,
      this._date);

  int get id => _id;

  String get title => _title;

  String get content => _content;

  String get imgUrl => _imgUrl;

  String get cost => _cost;

  String get date => _date;
}
