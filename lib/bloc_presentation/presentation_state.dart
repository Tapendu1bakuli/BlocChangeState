import 'package:equatable/equatable.dart';

class PresentationState extends Equatable{
  final int counter;
  final bool toggle;
  PresentationState({this.counter = 0,this.toggle = false});

  PresentationState copyWith ({int? counter,bool? toggle}){
    return PresentationState(
      counter: counter ?? this.counter,
      toggle: toggle ?? this.toggle
    );
  }

  @override
  List<Object?> get props => [counter,toggle];
}