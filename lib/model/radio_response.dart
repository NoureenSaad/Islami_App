import 'radio.dart';

/// radios : [{"id":10,"name":"Radio Alzain Mohammad Ahmad","url":"https://Qurango.net/radio/alzain_mohammad_ahmad"},{"id":100,"name":"Radio Ahmad Khader Al-Tarabulsi","url":"https://Qurango.net/radio/ahmad_khader_altarabulsi"}]

class RadioResponse {
  RadioResponse({
      this.radios,});

  RadioResponse.fromJson(dynamic json) {
    if (json['radios'] != null) {
      radios = [];
      json['radios'].forEach((v) {
        radios?.add(RadioModel.fromJson(v));
      });
    }
  }
  List<RadioModel>? radios;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (radios != null) {
      map['radios'] = radios?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}