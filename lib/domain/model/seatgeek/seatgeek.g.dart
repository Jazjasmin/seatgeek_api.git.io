// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seatgeek.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Seatgeek _$SeatgeekFromJson(Map<String, dynamic> json) => Seatgeek(
      events: (json['events'] as List<dynamic>?)
              ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SeatgeekToJson(Seatgeek instance) => <String, dynamic>{
      'events': instance.events,
    };

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      id: json['id'] as int?,
      url: json['url'] as String?,
      createdAt: json['created_at'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'created_at': instance.createdAt,
      'title': instance.title,
    };
