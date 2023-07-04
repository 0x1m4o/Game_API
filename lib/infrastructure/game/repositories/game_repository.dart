import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:game_api_app/domain/core/server_failure.dart';
import 'package:game_api_app/domain/game/repositories_impl/game_repository_impl.dart';
import 'package:game_api_app/infrastructure/core/constants/constants.dart';
import 'package:game_api_app/infrastructure/game/models/data_model.dart';
import 'package:http/http.dart' as http;

class GameRepository implements GameRepositoryImpl {
  @override
  Future<Either<ServerFailure, List<DataModel>>> getGamesData() async {
    try {
      final response = await http.Client().get(Uri.parse(Constants.apiUrl));
      if (response.statusCode == 200) {
        Iterable models = json.decode(response.body);
        List<DataModel> dataModels = [];
        for (var model in models) {
          DataModel dataModelFromJson = DataModel.fromJson(model);
          dataModels.add(dataModelFromJson);
        }
        return Right(dataModels);
      } else {
        return Left(ServerFailure(message: 'Error while fetch the Data'));
      }
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
