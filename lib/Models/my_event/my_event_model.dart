import 'package:esm/resources/utils/Constants.dart';

class MyEventModel {
  String id;
  String myEventTitle;
  String myEventDate;
  String myEventStartTime;
  String myEventEndTime;
  String myEventImage;

  MyEventModel({
    required this.id,
    required this.myEventTitle,
    required this.myEventDate,
    required this.myEventStartTime,
    required this.myEventEndTime,
    required this.myEventImage,
  });

  factory MyEventModel.fromJson(Map<String, dynamic> json) {
    return MyEventModel(
      id: json['id'].toString(),
      myEventTitle: json['myEventTitle'],
      myEventDate: json['myEventDate'],
      myEventStartTime: json['myEventStartTime'],
      myEventEndTime: json['myEventEndTime'],
      myEventImage: json['myEventImage'],
    );
  }

  static List<MyEventModel> myEventList = [
    MyEventModel(
      id: '1',
      myEventTitle: 'My Birtday',
      myEventDate: '16-12-2023',
      myEventStartTime: '04:00 pm',
      myEventEndTime: '06:00 pm',
      myEventImage: Constants.eventPic,
    ),
    MyEventModel(
      id: '1',
      myEventTitle: 'My Birtday',
      myEventDate: '16-12-2023',
      myEventStartTime: '04:00 pm',
      myEventEndTime: '06:00 pm',
      myEventImage: Constants.eventPic,
    ),
    MyEventModel(
      id: '1',
      myEventTitle: 'My Birtday',
      myEventDate: '16-12-2023',
      myEventStartTime: '04:00 pm',
      myEventEndTime: '06:00 pm',
      myEventImage: Constants.eventPic,
    ),
    MyEventModel(
      id: '1',
      myEventTitle: 'My Birtday',
      myEventDate: '16-12-2023',
      myEventStartTime: '04:00 pm',
      myEventEndTime: '06:00 pm',
      myEventImage: Constants.eventPic,
    ),
    MyEventModel(
      id: '1',
      myEventTitle: 'My Birtday',
      myEventDate: '16-12-2023',
      myEventStartTime: '04:00 pm',
      myEventEndTime: '06:00 pm',
      myEventImage: Constants.eventPic,
    ),
    MyEventModel(
      id: '1',
      myEventTitle: 'My Birtday',
      myEventDate: '16-12-2023',
      myEventStartTime: '04:00 pm',
      myEventEndTime: '06:00 pm',
      myEventImage: Constants.eventPic,
    ),
  ];
}
