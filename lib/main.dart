import 'package:flutter/material.dart';
import 'package:seatgeek_api/application/bloc/itemlist_bloc.dart';
import 'package:seatgeek_api/presentation/search_idle.dart';
import 'package:seatgeek_api/presentation/search_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'domain/core/di/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ItemlistBloc>(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(),
          home:  ScreenSearch(),
        ),
    );
  }
}
