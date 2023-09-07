class EventModel{
  late String eventImg,eventStatus,eventDescription,eventTime,eventDate,eventLocation,eventHostName,eventHostLocation,eventHostImg,eventInvitationStatus;
  bool eventPricestatus=false;
  EventModel(
      this.eventImg,
      this.eventStatus,
      this.eventDescription,
      this.eventTime,
      this.eventDate,
      this.eventLocation,
      this.eventHostImg,
      this.eventHostName,
      this.eventHostLocation,
      this.eventInvitationStatus,
      this.eventPricestatus);
}