import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seatgeek_api/const/cost_values.dart';
import 'package:seatgeek_api/presentation/search_idle.dart';

import '../application/bloc/itemlist_bloc.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return BlocBuilder<ItemlistBloc, ItemlistState>(
          builder: (context, state) {
            return IdleList(
              imageUrl: state.searchlist[index].url ?? "", 
              title: state.searchlist[index].title ?? "", 
              date: state.searchlist[index].createdAt ?? "",
              );
          },
          
        );
        
      }
      ),
      
    );
  }
}
