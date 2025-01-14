class DetailsProfileResponseModel {
  DetailsProfileResponseModel({
      int? id, 
      String? firstName, 
      String? lastName, 
      List<ProfileImage>? profileImage, 
      String? uniqueId, 
      bool? isVerified, 
      int? age, 
      String? createdAt,}){
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _profileImage = profileImage;
    _uniqueId = uniqueId;
    _isVerified = isVerified;
    _age = age;
    _createdAt = createdAt;
}

  DetailsProfileResponseModel.fromJson(dynamic json) {
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    if (json['profile_image'] != null) {
      _profileImage = [];
      json['profile_image'].forEach((v) {
        _profileImage?.add(ProfileImage.fromJson(v));
      });
    }
    _uniqueId = json['unique_id'];
    _isVerified = json['is_verified'];
    _age = json['age'];
    _createdAt = json['created_at'];
  }
  int? _id;
  String? _firstName;
  String? _lastName;
  List<ProfileImage>? _profileImage;
  String? _uniqueId;
  bool? _isVerified;
  int? _age;
  String? _createdAt;

  int? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  List<ProfileImage>? get profileImage => _profileImage;
  String? get uniqueId => _uniqueId;
  bool? get isVerified => _isVerified;
  int? get age => _age;
  String? get createdAt => _createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    if (_profileImage != null) {
      map['profile_image'] = _profileImage?.map((v) => v.toJson()).toList();
    }
    map['unique_id'] = _uniqueId;
    map['is_verified'] = _isVerified;
    map['age'] = _age;
    map['created_at'] = _createdAt;
    return map;
  }

}

class ProfileImage {
  ProfileImage({
      int? id, 
      String? name, 
      String? extension, 
      String? file, 
      String? thumbnail, 
      bool? isPrimary, 
      bool? isFavorite,}){
    _id = id;
    _name = name;
    _extension = extension;
    _file = file;
    _thumbnail = thumbnail;
    _isPrimary = isPrimary;
    _isFavorite = isFavorite;
}

  ProfileImage.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _extension = json['extension'];
    _file = json['file'];
    _thumbnail = json['thumbnail'];
    _isPrimary = json['is_primary'];
    _isFavorite = json['is_favorite'];
  }
  int? _id;
  String? _name;
  String? _extension;
  String? _file;
  String? _thumbnail;
  bool? _isPrimary;
  bool? _isFavorite;

  int? get id => _id;
  String? get name => _name;
  String? get extension => _extension;
  String? get file => _file;
  String? get thumbnail => _thumbnail;
  bool? get isPrimary => _isPrimary;
  bool? get isFavorite => _isFavorite;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['extension'] = _extension;
    map['file'] = _file;
    map['thumbnail'] = _thumbnail;
    map['is_primary'] = _isPrimary;
    map['is_favorite'] = _isFavorite;
    return map;
  }

}