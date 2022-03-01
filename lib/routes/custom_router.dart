import 'package:auto_route/annotations.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fetch_api_game_project/screens/details_page.dart';
import 'package:flutter_fetch_api_game_project/screens/landing_page.dart';

import '../models/data_model.dart';

part 'custom_router.gr.dart';

@MaterialAutoRouter (
  replaceInRouteName: 'Page, Route',
  routes: <AutoRoute> [
    AutoRoute(page: LandingPage, initial: true ),
    AutoRoute(page: DetailsPage),
  ],
)

// custorm the genereater private router
class AppRouter extends _$AppRouter {

}