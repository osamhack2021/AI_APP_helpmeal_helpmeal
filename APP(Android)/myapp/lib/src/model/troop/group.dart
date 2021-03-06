class Group {
  int? troopId;
  String? milName;
  String? troopName;
  String? groupName;

  Map<String, dynamic> troopMap = {
    '4': '',
    '3': '',
    '2': '',
    '1': '',
  };
  List<String>? lists;

  Group({this.lists}) {
    if (lists!.length == 3) {
      troopMap['4'] = lists![0];
      troopMap['3'] = lists![1];
      troopMap['2'] = lists![2];

      troopName = '${troopMap['4']} ${troopMap['3']}';
      groupName = '${troopMap['2']}';
    } else {
      troopMap['4'] = lists![0];
      troopMap['3'] = lists![1];
      troopMap['2'] = lists![2];
      troopMap['1'] = lists![3];

      troopName = '${troopMap['4']} ${troopMap['3']} ${troopMap['2']}';
      groupName = '${troopMap['1']}';
    }

    setMilName(troopMap['4']);
  }

  Group.withNoGroup({this.lists}){
    if(lists!.length == 2){
      troopMap['4'] = lists![0];
      troopMap['3'] = lists![1];

      troopName = '${troopMap['4']} ${troopMap['3']}';
    }
    else{
      troopMap['4'] = lists![0];
      troopMap['3'] = lists![1];
      troopMap['2'] = lists![2];

      troopName = '${troopMap['4']} ${troopMap['3']} ${troopMap['2']}';
    }

    setMilName(troopMap['4']);
  }

  Group.fromJson(Map<String, dynamic> json) {
    troopId = json['troopId'];
    troopMap['4'] = json['4'];
    troopMap['3'] = json['3'];
    troopMap['2'] = json['2'];
    troopMap['1'] = json['1'] ?? '';

    if (troopMap['1'] == '') {
      troopName = '${troopMap['4']} ${troopMap['3']}';
      groupName = '${troopMap['2']}';
    } else {
      troopName = '${troopMap['4']} ${troopMap['3']} ${troopMap['2']}';
      groupName = '${troopMap['1']}';
    }

    setMilName(troopMap['4']);
  }

  Group.clone(Group _group) {
    troopMap = _group.troopMap;
    if (_group.troopMap['2'] == '') {
      troopMap['2'] = '+';
    } else {
      troopMap['1'] = '+';
    }
    troopName = _group.troopName;
    groupName = '+';
  }

  void setMilName(String text) {
    switch (text) {
      case '육군':
        milName = 'army';
        break;
      case '공군':
        milName = 'airforce';
        break;
      default:
        milName = 'navy';
    }
  }
}
