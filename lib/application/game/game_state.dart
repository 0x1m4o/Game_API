part of 'game_bloc.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.initial() = _Initial;
  const factory GameState.isLoading() = _Loading;
  const factory GameState.isLoaded(List<DataModel> games) = _Success;
  const factory GameState.isFailed(String message) = _Failed;
}
