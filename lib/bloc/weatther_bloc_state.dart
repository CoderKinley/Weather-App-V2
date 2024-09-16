part of 'weatther_bloc_bloc.dart';

sealed class WeattherBlocState extends Equatable {
  const WeattherBlocState();

  @override
  List<Object> get props => [];
}

final class WeattherBlocInitial extends WeattherBlocState {}

final class WeattherBlocLoading extends WeattherBlocState {}

final class WeattherBlocFailure extends WeattherBlocState {}

final class WeattherBlocSuccess extends WeattherBlocState {
  final Weather weather;

  const WeattherBlocSuccess(this.weather);

  @override
  List<Object> get props => [weather];
}
