import 'package:flutter/material.dart';
import 'package:flutter_fetch_api_game_project/bloc/game_data_bloc.dart';
import 'package:flutter_fetch_api_game_project/repo/games_repo.dart';
import 'package:flutter_fetch_api_game_project/screens/landing_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'routes/custom_router.dart';

void main() {
  runApp(BlocProvider<GameDataBloc>(
    create: (context) => GameDataBloc(GamesRepo()),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MyApp({Key? key}) : super(key: key);
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

