// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:game_api_app/infrastructure/game/repositories/game_repository.dart';

import '../../infrastructure/game/models/data_model.dart';

part 'game_bloc.freezed.dart';
part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final GameRepository gameRepository;
  GameBloc(
    this.gameRepository,
  ) : super(const GameState.initial()) {
    on<LoadGameEvent>(
      (event, emit) async {
        emit(const GameState.isLoading());

        final games = await gameRepository.getGamesData();
        emit(games.fold((l) => GameState.isFailed(l.message),
            (r) => GameState.isLoaded(r)));
      },
    );
  }
}
