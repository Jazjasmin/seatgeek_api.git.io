part of 'itemlist_bloc.dart';

@freezed
class ItemlistState with _$ItemlistState {
  const factory ItemlistState({
    required List<Event> searchlist,
    required List<Event> searchIdile,
    required bool isLoading,
    required bool isError,

})= _ItemlistState;

factory ItemlistState.initial() => const ItemlistState(
    searchlist: [],
    searchIdile: [],
    isLoading: false, 
    isError: false,
  );
}
