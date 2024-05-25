import 'package:bloc/bloc.dart';
import 'package:bloc_state_project1/bloc_presentation/presentation_event.dart';
import 'package:bloc_state_project1/bloc_presentation/presentation_state.dart';

class PresentationBloc extends Bloc<PresentationEvent, PresentationState> {
  PresentationBloc() : super(PresentationState()){
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
    on<ToggleSwitch>(_toggleSwitch);
  }
void _increment(IncrementCounter event, Emitter<PresentationState> emit){
    emit(state.copyWith(counter: state.counter + 1));
}
  void _decrement(DecrementCounter event, Emitter<PresentationState> emit){
    emit(state.copyWith(counter: state.counter - 1));
  }
  void _toggleSwitch(ToggleSwitch event, Emitter<PresentationState> emit){
    emit(state.copyWith(toggle: !state.toggle));
  }
}