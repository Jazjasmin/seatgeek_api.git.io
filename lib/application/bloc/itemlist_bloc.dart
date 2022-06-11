import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seatgeek_api/domain/core/failures/main_failures.dart';
import 'package:seatgeek_api/domain/i_search_service.dart';
import 'package:seatgeek_api/domain/model/seatgeek/seatgeek.dart';
import 'package:seatgeek_api/domain/search_service.dart';

part 'itemlist_event.dart';
part 'itemlist_state.dart';
part 'itemlist_bloc.freezed.dart';

class ItemlistBloc extends Bloc<ItemlistEvent, ItemlistState> {
  final ISearchRepo _iSearchRepo;
  final SearchService _searchService;
  ItemlistBloc(
    this._iSearchRepo,
    this._searchService,
  ) : super(ItemlistState.initial()) {
    on<Initialize>((event, emit) async {
      if (state.searchIdile.isNotEmpty) {
        emit(ItemlistState(
          searchlist: [],
          searchIdile: state.searchIdile,
          isLoading: false,
          isError: false,
        ));
        return;
      }
      emit(const ItemlistState(
        searchlist: [],
        searchIdile: [],
        isLoading: true,
        isError: false,
      ));

      final _result = await _iSearchRepo.getImages();
      final _state = _result.fold((MainFailure f) {
        return const ItemlistState(
          searchlist: [],
          searchIdile: [],
          isLoading: false,
          isError: true,
        );
      }, (List<Event> list) {
        return ItemlistState(
          searchlist: [],
          searchIdile: list,
          isLoading: false,
          isError: false,
        );
      });
      emit(_state);
    });

    on<SearchWords>((event,emit) async {
      log('Searching for ${event.query}');
      emit( const ItemlistState(
        searchlist: [], 
        searchIdile: [], 
        isLoading: true, 
        isError: false,
        ));
        final _result = await _searchService.searchWords(query: event.query);
        final _state = _result.fold(
          (MainFailure f) {
        return const ItemlistState(
          searchlist: [],
          searchIdile: [],
          isLoading: false,
          isError: true,
        );
      }, 
          (Seatgeek r) {
            return ItemlistState(
              searchlist: r.events, 
              searchIdile: [], 
              isLoading: false, 
              isError: false,
              );
          });
          emit(_state);
    });
  }
}
