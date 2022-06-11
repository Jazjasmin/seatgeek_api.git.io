import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seatgeek_api/application/bloc/itemlist_bloc.dart';
import 'package:seatgeek_api/const/colors.dart';
import 'package:seatgeek_api/const/cost_values.dart';
import 'package:seatgeek_api/presentation/search_idle.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ItemlistBloc>(context).add(const Initialize());
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
      ),
      body: SafeArea(
        
        child: Column(
          children: [
            Row(
              children: const [
                CupertinoSearchTextField(
                  backgroundColor: kGrey,
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: kGrey,
                  ),
                  suffixIcon: Icon(
                    CupertinoIcons.xmark_circle_fill,
                    color: kGrey,
                  ),
                  style: TextStyle(
                    color: kwhite,
                  ),
                  
                ),
                Text('Search'),
              ],
            ),
            height10,
            Expanded(
              child: BlocBuilder<ItemlistBloc, ItemlistState>(
                builder: (context, state) {
                  if(state.searchlist.isEmpty) {
                    return const SearchIdle();
                  }else {
                    return const SearchResult();
                  }
                  
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
