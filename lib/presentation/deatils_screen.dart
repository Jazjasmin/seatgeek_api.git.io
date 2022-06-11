import 'package:flutter/material.dart';
import 'package:seatgeek_api/application/bloc/itemlist_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seatgeek_api/domain/model/seatgeek/seatgeek.dart';

class DeatilPage extends StatelessWidget {
  final Event? events;
  const DeatilPage({Key? key,
   this.events, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(events!.title ?? ""),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: BlocBuilder<ItemlistBloc, ItemlistState>(
          builder: (context, state) {
            if(state.isLoading){
          return const Center(
                  child: CircularProgressIndicator(),
                );
        }else if(state.isError){
          return const Center(
                  child: Text('Error while getting data'),
                );
        }else if(state.searchlist.isEmpty) {
          return const Center(
                  child: Text('List is empty'),
          );  
        }else {
            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(events!.url ?? ""),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      events!.createdAt ?? "",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      events!.id.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  )
                ]);
        }
          },
          
        ),
      ),
    );
  }
}
