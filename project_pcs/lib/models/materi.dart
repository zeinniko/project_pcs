class Materi {
  int _id = 0;
  String _name = '';
  String _keterangan = '';

  // konstruktor 1
  Materi(this._name, this. _keterangan);

  // konstruktor 2: konversi dari Map ke Contact
  Materi.fromMap(Map<String, dynamic> map){
    this._id = map['id'];
    this._name = map['name'];
    this._keterangan = map['keterangan'];
  }

  // getter
  int get id => _id;
  String get name => _name;
  String get keterangan => _keterangan;

  // setter
  set name(String value){
    _name = value;
  }

  set keterangan(String value){
    _keterangan = value;
  }

  // konversi dari Contact ke Map
  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = Map<String, dynamic>();    
    map['name'] = this._name;
    map['keterangan'] = this._keterangan;
    return map;
  }
}
