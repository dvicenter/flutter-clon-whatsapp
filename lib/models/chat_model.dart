class ChatModel {
  final String name;
  String message;
  final String time;
  final String imageUrl;

  ChatModel({this.name, this.message, this.time, this.imageUrl});
}

List<ChatModel> messageData = [
  ChatModel(
      name: 'Diego Vicente',
      message: 'Hola que tal',
      time: '10:30',
      imageUrl: 'https://randomuser.me/api/portraits/men/46.jpg'),
  ChatModel(
      name: 'Jose Jose',
      message: 'Hola que tal',
      time: '11:21',
      imageUrl: 'https://randomuser.me/api/portraits/men/19.jpg'),
  ChatModel(
      name: 'Camilo Sesto',
      message: 'Hola que tal',
      time: '09:31',
      imageUrl: 'https://randomuser.me/api/portraits/men/36.jpg'),
  ChatModel(
      name: 'Vicente Fernandez',
      message: 'Hola que tal',
      time: '17:11',
      imageUrl: 'https://randomuser.me/api/portraits/men/16.jpg'),
  ChatModel(
      name: 'Javier Solis',
      message: 'Hola que tal',
      time: '16:30',
      imageUrl: 'https://randomuser.me/api/portraits/men/26.jpg'),
];
