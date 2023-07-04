import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:game_api_app/infrastructure/game/models/data_model.dart';
import 'package:game_api_app/presentation/pages/detail/detail_page.dart';
import 'package:game_api_app/presentation/pages/home/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: Home.page, initial: true),
        AutoRoute(page: Detail.page),
      ];
}
