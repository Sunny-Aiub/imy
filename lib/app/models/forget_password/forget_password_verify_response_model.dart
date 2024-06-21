class ForgetPasswordVerifyResponseModel {
  ForgetPasswordVerifyResponseModel({
      bool? success, 
      String? message,}){
    _success = success;
    _message = message;
}

  ForgetPasswordVerifyResponseModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
  }
  bool? _success;
  String? _message;

  bool? get success => _success;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    return map;
  }

}