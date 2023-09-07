class EventModel {
  String eventImg;
  String eventStatus;
  String eventDescription;
  String eventTime;
  String eventDate;
  String eventLocation;
  String eventHostName;
  String eventHostLocation;
  String eventHostImg;
  String eventInvitationStatus;
  bool eventPriceStatus = false;

  EventModel({
    required this.eventImg,
    required this.eventStatus,
    required this.eventDescription,
    required this.eventTime,
    required this.eventDate,
    required this.eventLocation,
    required this.eventHostImg,
    required this.eventHostName,
    required this.eventHostLocation,
    required this.eventInvitationStatus,
    required this.eventPriceStatus,
  });
}
