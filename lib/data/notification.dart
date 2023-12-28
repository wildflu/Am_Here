
class Notif {
  String title;
  String content;
  DateTime timeRecived;
  bool isReaded;

  Notif({required this.title, required this.content, required this.timeRecived, required this.isReaded});

  factory Notif.fromJson(Map<String, dynamic> json) {
    return Notif(title: json['title'], content: json['content'], timeRecived: json['time_recived'], isReaded: json['is_readed']);
  }
}