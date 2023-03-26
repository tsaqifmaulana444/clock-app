import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  late String location; // nama lokasi yang akan ditampilkan
  late String time; // waktu di lokasi
  late String flag; // url untuk asset icon
  late String url; // endpoint API
  late bool isDayTime;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    // buat request
    Response response =
        await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);

    // mendapatkan properti dari data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);

    // membuat objek tanggal
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    // set time properti
    time = DateFormat.jm().format(now);

    // operator boolean
    isDayTime = now.hour > 6 && now.hour < 19 ? true : false;
  }
}
