part of 'weatther_bloc_bloc.dart';

sealed class WeattherBlocEvent extends Equatable {
  const WeattherBlocEvent();

  @override
  List<Object> get props => [];
}

class FetchWeather extends WeattherBlocEvent {
  final Position position;

  const FetchWeather(this.position);

  @override
  List<Object> get props => [position];
}
