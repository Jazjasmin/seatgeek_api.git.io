import 'package:json_annotation/json_annotation.dart';


part 'seatgeek.g.dart';

@JsonSerializable()
class Seatgeek {
  
  @JsonKey(name:'events')
  List<Event> events;
  

  Seatgeek({this.events = const [] });

  factory Seatgeek.fromJson(Map<String, dynamic> json) {
    return _$SeatgeekFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SeatgeekToJson(this);
}

@JsonSerializable()
class Event {

  @JsonKey(name: 'id')
  int? id;

 // @JsonKey(name:'taxonomies')
  // List<Taxonomy>? taxonomies;

   @JsonKey(name: 'url')
  String? url;
  
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'title')
  String? title;
  
  Event({
    this.id,
    //this.taxonomies,
    this.url,
    this.createdAt,
    this.title,
    
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);
}

