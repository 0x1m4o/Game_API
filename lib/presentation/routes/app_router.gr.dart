// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    Home.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    Detail.name: (routeData) {
      final args = routeData.argsAs<DetailArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailPage(
          key: args.key,
          dataModel: args.dataModel,
        ),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class Home extends PageRouteInfo<void> {
  const Home({List<PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DetailPage]
class Detail extends PageRouteInfo<DetailArgs> {
  Detail({
    Key? key,
    required DataModel dataModel,
    List<PageRouteInfo>? children,
  }) : super(
          Detail.name,
          args: DetailArgs(
            key: key,
            dataModel: dataModel,
          ),
          initialChildren: children,
        );

  static const String name = 'Detail';

  static const PageInfo<DetailArgs> page = PageInfo<DetailArgs>(name);
}

class DetailArgs {
  const DetailArgs({
    this.key,
    required this.dataModel,
  });

  final Key? key;

  final DataModel dataModel;

  @override
  String toString() {
    return 'DetailArgs{key: $key, dataModel: $dataModel}';
  }
}
