/// meta : {"code":200,"status":"success","message":"List Categories"}
/// data : [{"id":1,"name":"Petra Koelpin","gambar":"ini gambar","created_at":"2022-11-03T14:34:49.000000Z","updated_at":"2022-11-03T14:34:49.000000Z"},{"id":2,"name":"Dr. William Feest V","gambar":"ini gambar","created_at":"2022-11-03T14:34:49.000000Z","updated_at":"2022-11-03T14:34:49.000000Z"},{"id":3,"name":"Elyse Veum","gambar":"ini gambar","created_at":"2022-11-03T14:34:49.000000Z","updated_at":"2022-11-03T14:34:49.000000Z"},{"id":4,"name":"Wava Rath","gambar":"ini gambar","created_at":"2022-11-03T14:34:49.000000Z","updated_at":"2022-11-03T14:34:49.000000Z"},{"id":5,"name":"Travon Bogisich III","gambar":"ini gambar","created_at":"2022-11-03T14:34:49.000000Z","updated_at":"2022-11-03T14:34:49.000000Z"},{"id":6,"name":"Marlen VonRueden","gambar":"ini gambar","created_at":"2022-11-03T14:34:49.000000Z","updated_at":"2022-11-03T14:34:49.000000Z"},{"id":7,"name":"Alan Corwin","gambar":"ini gambar","created_at":"2022-11-03T14:34:49.000000Z","updated_at":"2022-11-03T14:34:49.000000Z"},{"id":8,"name":"Vaughn Bernier","gambar":"ini gambar","created_at":"2022-11-03T14:34:49.000000Z","updated_at":"2022-11-03T14:34:49.000000Z"},{"id":9,"name":"Tiana Olson","gambar":"ini gambar","created_at":"2022-11-03T14:34:49.000000Z","updated_at":"2022-11-03T14:34:49.000000Z"},{"id":10,"name":"Juwan Baumbach","gambar":"ini gambar","created_at":"2022-11-03T14:34:49.000000Z","updated_at":"2022-11-03T14:34:49.000000Z"}]

class CategoryModel {
  CategoryModel({
      Meta? meta, 
      List<Data>? data,}){
    _meta = meta;
    _data = data;
}

  CategoryModel.fromJson(dynamic json) {
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  Meta? _meta;
  List<Data>? _data;
CategoryModel copyWith({  Meta? meta,
  List<Data>? data,
}) => CategoryModel(  meta: meta ?? _meta,
  data: data ?? _data,
);
  Meta? get meta => _meta;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// name : "Petra Koelpin"
/// gambar : "ini gambar"
/// created_at : "2022-11-03T14:34:49.000000Z"
/// updated_at : "2022-11-03T14:34:49.000000Z"

class Data {
  Data({
      num? id, 
      String? name, 
      String? gambar, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _name = name;
    _gambar = gambar;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _gambar = json['gambar'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _name;
  String? _gambar;
  String? _createdAt;
  String? _updatedAt;
Data copyWith({  num? id,
  String? name,
  String? gambar,
  String? createdAt,
  String? updatedAt,
}) => Data(  id: id ?? _id,
  name: name ?? _name,
  gambar: gambar ?? _gambar,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get name => _name;
  String? get gambar => _gambar;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['gambar'] = _gambar;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// code : 200
/// status : "success"
/// message : "List Categories"

class Meta {
  Meta({
      num? code, 
      String? status, 
      String? message,}){
    _code = code;
    _status = status;
    _message = message;
}

  Meta.fromJson(dynamic json) {
    _code = json['code'];
    _status = json['status'];
    _message = json['message'];
  }
  num? _code;
  String? _status;
  String? _message;
Meta copyWith({  num? code,
  String? status,
  String? message,
}) => Meta(  code: code ?? _code,
  status: status ?? _status,
  message: message ?? _message,
);
  num? get code => _code;
  String? get status => _status;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['status'] = _status;
    map['message'] = _message;
    return map;
  }

}