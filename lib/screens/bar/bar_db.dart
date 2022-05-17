import 'package:firebase_database/firebase_database.dart';

class BarDb {
  String key;
  String title;
  String photo;
  String price;
  String time;

  BarDb({this.title, this.photo,this.price,this.time});

  BarDb.fromSnapshot(DataSnapshot snapshot)
  
      : key = snapshot.key,
        price = snapshot.value["price"],
        title = snapshot.value["title"],
        time = snapshot.value["time"],
        photo = snapshot.value["photo"];

  toJson() {
    return {
      "title": title,
      "photo": photo,
      "price":price,
      "time":time,
    };
  }
}
