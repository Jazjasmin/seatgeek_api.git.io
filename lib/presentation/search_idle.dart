import 'dart:html';

import 'package:flutter/material.dart';
import 'package:seatgeek_api/const/cost_values.dart';
import 'package:seatgeek_api/presentation/deatils_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../application/bloc/itemlist_bloc.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: ((context, index) {
        return ListofItems();
      }),
      separatorBuilder: (context, index) => height20,
      itemCount: 10,
    );
  }
}

class ListofItems extends StatelessWidget {
  const ListofItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemlistBloc, ItemlistState>(
      builder: (context, state) {
        if(state.isLoading){
          return const Center(
                  child: CircularProgressIndicator(),
                );
        }else if(state.isError){
          return const Center(
                  child: Text('Error while getting data'),
                );
        }else if(state.searchIdile.isEmpty) {
          return const Center(
                  child: Text('List is empty'),
          );  
        }else {
        return ListView.separated(
          itemBuilder: (context, index) {
            final word = state.searchIdile[index];
            return IdleList(
              imageUrl: word.url.toString(), 
              title: word.title.toString(), 
              date: word.createdAt.toString(),
              );
          },
          separatorBuilder: (context, index) => 
            height10,
          
          itemCount: state.searchIdile.length,
        );
        }
      },
    );
  }
}

class IdleList extends StatelessWidget {
  final String imageUrl;
    final String title;
    final String date;
    
  const IdleList({
    required this.imageUrl,
    required this.title,
    required this.date,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration:  BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  imageUrl,
             ),
           ),
         ),
        ),
        Expanded(
            child: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeatilPage(),
                  ),
                );
              },
              title: Text(title),
              subtitle: Text(date),
            ),
          ],
        ))
      ],
    );
  }
}
