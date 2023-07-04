import 'package:dartz/dartz.dart';
import 'package:game_api_app/domain/core/server_failure.dart';
import 'package:game_api_app/infrastructure/game/models/data_model.dart';

abstract class GameRepositoryImpl {
  Future<Either<ServerFailure, List<DataModel>?>> getGamesData();
}
