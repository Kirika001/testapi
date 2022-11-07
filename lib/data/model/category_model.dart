/// meta : {"code":200,"status":"success","message":"List Categories"}
/// data : [{"nama":"qui","gambar":"https://via.placeholder.com/620x480.png/0044dd?text=vitae"},{"nama":"ut","gambar":"https://via.placeholder.com/620x480.png/00ffee?text=vero"},{"nama":"quod","gambar":"https://via.placeholder.com/620x480.png/006600?text=enim"},{"nama":"aut","gambar":"https://via.placeholder.com/620x480.png/0099cc?text=magnam"},{"nama":"quia","gambar":"https://via.placeholder.com/620x480.png/00ff44?text=aliquam"},{"nama":"ut","gambar":"https://via.placeholder.com/620x480.png/0000bb?text=soluta"},{"nama":"aut","gambar":"https://via.placeholder.com/620x480.png/002255?text=saepe"},{"nama":"consequatur","gambar":"https://via.placeholder.com/620x480.png/0022aa?text=tempora"},{"nama":"ullam","gambar":"https://via.placeholder.com/620x480.png/00ddee?text=sint"},{"nama":"eaque","gambar":"https://via.placeholder.com/620x480.png/0022aa?text=ut"}]

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

/// nama : "qui"
/// gambar : "https://via.placeholder.com/620x480.png/0044dd?text=vitae"

class Data {
  Data({
      String? nama, 
      String? gambar,}){
    _nama = nama;
    _gambar = gambar;
}

  Data.fromJson(dynamic json) {
    _nama = json['nama'];
    _gambar = json['gambar'];
  }
  String? _nama;
  String? _gambar;
Data copyWith({  String? nama,
  String? gambar,
}) => Data(  nama: nama ?? _nama,
  gambar: gambar ?? _gambar,
);
  String? get nama => _nama;
  String? get gambar => _gambar;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['nama'] = _nama;
    map['gambar'] = _gambar;
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