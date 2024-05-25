import 'package:equatable/equatable.dart';

class PresentationState extends Equatable{
  final int counter;
  final bool toggle;
  final double slider;
  const PresentationState({this.counter = 0,this.toggle = false,this.slider = 0.9});

  PresentationState copyWith ({int? counter,bool? toggle,double? slider}){
    return PresentationState(
      counter: counter ?? this.counter,
      toggle: toggle ?? this.toggle,
        slider: slider ?? this.slider
    );
  }

  @override
  List<Object?> get props => [counter,toggle,slider];
}