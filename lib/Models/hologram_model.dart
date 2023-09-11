class Hologram {
  String id;
  String title;

  Hologram({
    required this.id,
    required this.title,
  });

  factory Hologram.fromJson(Map<String, dynamic> json) {
    return Hologram(
      id: json['id'].toString(),
      title: json['title'],
    );
  }

  @override
  String toString() {
    return title;
  }

  static List<Hologram> hologramList = [
    Hologram(id: '1', title: 'Yes'),
    Hologram(id: '2', title: 'No'),
  ];
}

class HologramType {
  String id;
  String title;

  HologramType({
    required this.id,
    required this.title,
  });

  factory HologramType.fromJson(Map<String, dynamic> json) {
    return HologramType(
      id: json['id'].toString(),
      title: json['title'],
    );
  }

  @override
  String toString() {
    return title;
  }

  static List<HologramType> hologramTypeList = [
    HologramType(id: '1', title: 'Hologram Glass Rental \$3,000'),
    HologramType(id: '2', title: 'Hologram -  Mesh Rental \$1,000'),
    HologramType(id: '3', title: 'Hologram Fan Rental - Preferred \$1,200'),
  ];
}

class EventEngineer {
  String id;
  String title;

  EventEngineer({
    required this.id,
    required this.title,
  });

  factory EventEngineer.fromJson(Map<String, dynamic> json) {
    return EventEngineer(
      id: json['id'].toString(),
      title: json['title'],
    );
  }

  @override
  String toString() {
    return title;
  }

  static List<EventEngineer> eventEngineerList = [
    EventEngineer(id: '1', title: 'Muhammad Ehsan'),

  ];
}

class TimeZone {
  String id;
  String title;

  TimeZone({
    required this.id,
    required this.title,
  });

  factory TimeZone.fromJson(Map<String, dynamic> json) {
    return TimeZone(
      id: json['id'].toString(),
      title: json['title'],
    );
  }

  @override
  String toString() {
    return title;
  }

  static List<TimeZone> timeZoneList = [
    TimeZone(id: '1', title: '(GMT-11:00) Midway Island, Samoa'),
    TimeZone(id: '2', title: '(GMT-10:00) Hawaii'),
    TimeZone(id: '3', title: '(GMT-8:00) Alaska'),
    TimeZone(id: '4', title: '(GMT-8:00) Alaska'),
    TimeZone(id: '5', title: '(GMT-7:00) Dawson, Yukon'),
    TimeZone(id: '6', title: '(GMT-7:00) Arizona'),

  ];
}
