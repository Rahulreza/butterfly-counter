import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState(0)) {
    on<HomeEvent>((event, emit) {});
    on<CounterIncrementEvent>((event, emit) {
      emit(HomeState(state.count + 1));
    });
    on<CounterResetEvent>((event, emit) {
      emit(HomeState(0));
    });
    on<CounterDecrementEvent>((event, emit) {
      emit(HomeState(state.count - 1));
    });
  }
}
