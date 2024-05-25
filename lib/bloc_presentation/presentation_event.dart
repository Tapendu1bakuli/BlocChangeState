import 'package:equatable/equatable.dart';

abstract class PresentationEvent extends Equatable {
@override
 List<Object> get props => [];
}

class IncrementCounter extends PresentationEvent {}
class DecrementCounter extends PresentationEvent {}
class ToggleSwitch extends PresentationEvent {}
class SliderEvent extends PresentationEvent {
final double slider;
 SliderEvent({required this.slider});

 @override
  List<Object> get props => [slider];

}