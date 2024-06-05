/// id : 10
/// name : "Radio Alzain Mohammad Ahmad"
/// url : "https://Qurango.net/radio/alzain_mohammad_ahmad"

class RadioModel {
  RadioModel({
      this.id, 
      this.name, 
      this.url,});

  RadioModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    url = json['url'];
  }
  int? id;
  String? name;
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['url'] = url;
    return map;
  }

}