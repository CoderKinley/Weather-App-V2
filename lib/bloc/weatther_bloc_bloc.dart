import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';
import 'package:weather_app_v2/data/my_data.dart';

part 'weatther_bloc_event.dart';
part 'weatther_bloc_state.dart';

class WeattherBlocBloc extends Bloc<WeattherBlocEvent, WeattherBlocState> {
  WeattherBlocBloc() : super(WeattherBlocInitial()) {
    on<FetchWeather>((event, emit) async {
      emit(WeattherBlocLoading());
      try {
        WeatherFactory wf = WeatherFactory(API_KEY, language: Language.ENGLISH);

        Weather weather = await wf.currentWeatherByLocation(
          event.position.latitude,
          event.position.longitude,
        );
        print(weather);
        emit(WeattherBlocSuccess(weather));
      } catch (e) {
        emit(WeattherBlocFailure());
      }
    });
  }
}
