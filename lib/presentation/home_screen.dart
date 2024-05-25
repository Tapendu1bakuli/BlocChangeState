import 'package:bloc_state_project1/bloc_presentation/presentation_bloc.dart';
import 'package:bloc_state_project1/bloc_presentation/presentation_event.dart';
import 'package:bloc_state_project1/bloc_presentation/presentation_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<PresentationBloc, PresentationState>(
              builder: (context, state) {
                return Text(
                  state.counter.toString(),
                  style: Theme.of(context).textTheme.displayLarge,
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.read<PresentationBloc>().add(DecrementCounter());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent),
                    child: Text("-",
                        style: Theme.of(context).textTheme.displayLarge),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      context.read<PresentationBloc>().add(IncrementCounter());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent),
                    child: Text("+",
                        style: Theme.of(context).textTheme.displayMedium),
                  ),
                ],
              ),
            ),
            BlocBuilder<PresentationBloc, PresentationState>(
                builder: (context, state) {
              return Switch(
                  value: state.toggle,
                  onChanged: (val) {
                    context.read<PresentationBloc>().add(ToggleSwitch());
                  });
            }),
            BlocBuilder<PresentationBloc,PresentationState>(builder: (context, state){
              return Container(height: 200,width: 300,color: Colors.red.withOpacity(state.slider),);
            }
            ),
            BlocBuilder<PresentationBloc,PresentationState>(builder: (context, state){
              return  Slider(value: state.slider, onChanged: (val){
                context.read<PresentationBloc>().add(SliderEvent(slider: val));
              });
            }
            ),
          ],
        ),
      ),
    );
  }
}
