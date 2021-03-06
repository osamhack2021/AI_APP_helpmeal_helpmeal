import 'package:myapp/src/model/troop/group.dart';

class User {
  int? userId;
  String? email;
  String? password;
  String? name;
  String? milNum;
  List<dynamic>? allergyList = [];
  Group? groups;
  int? isAdmin;
  bool? isLogined;
  String? messege;

  User({
    this.userId = -1,
    this.email = '',
    this.password = '',
    this.name = '',
    this.milNum = '',
    this.isAdmin = 0,
    this.allergyList,
    this.groups,
    this.messege
  }){
    isLogined = (name == '' ? false : true);
  }
}
