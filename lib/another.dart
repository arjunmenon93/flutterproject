class Sal {
  int datetime;
  String location;

  Sal(this.datetime, this.location);

  Sal.fromMap(Map<String, dynamic> map)
      : assert(map['datetime'] != null),
        assert(map['location'] != null),
        datetime = map['datetime'],
        location = map['location'];
  @override
  String toString() => "Record<$datetime:$location>";
}
