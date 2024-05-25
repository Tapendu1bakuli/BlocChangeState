import 'package:equatable/equatable.dart';

abstract class PresentationEvent extends Equatable {
@override
 List<Object> get props => [];
}

class IncrementCounter extends PresentationEvent {}
class DecrementCounter extends PresentationEvent {}
class ToggleSwitch extends PresentationEvent {}