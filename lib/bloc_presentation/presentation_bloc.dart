import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'presentation_event.dart';
part 'presentation_state.dart';

class PresentationBloc extends Bloc<PresentationEvent, PresentationState> {
  PresentationBloc() : super(PresentationInitial()) {
    on<PresentationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}