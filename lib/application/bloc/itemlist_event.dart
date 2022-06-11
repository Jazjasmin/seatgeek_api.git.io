part of 'itemlist_bloc.dart';

@freezed
class ItemlistEvent with _$ItemlistEvent {
  const factory ItemlistEvent.initialize() = Initialize;
  const factory ItemlistEvent.searchWords({
    required String query,
  })=SearchWords;
}