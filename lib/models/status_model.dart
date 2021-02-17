import 'package:clon_whatsapp/models/chat_model.dart';

class StatusModel {
  final String imgUrl;
  final String name;
  final String time;

  StatusModel({this.imgUrl, this.name, this.time});
}

List<StatusModel> status = [
  StatusModel(
    name: messageData[0].name,
    time: "Hoy, 13:00",
    imgUrl: messageData[0].imageUrl,
  ),
  StatusModel(
    name: messageData[1].name,
    time: "Hoy, 11:16",
    imgUrl: messageData[1].imageUrl,
  ),
  StatusModel(
    name: messageData[2].name,
    time: "Hoy, 09:04",
    imgUrl: messageData[2].imageUrl,
  ),
  StatusModel(
    name: messageData[3].name,
    time: "Hoy, 17:40",
    imgUrl: messageData[3].imageUrl,
  ),
];
