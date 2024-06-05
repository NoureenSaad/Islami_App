import 'package:eslami/cubit/radio/radio_cubit.dart';
import 'package:eslami/ui/home/radio_widget_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RadioWidget extends StatefulWidget {

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  bool clicked = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>RadioCubit()..getRadio(),
      child: BlocBuilder<RadioCubit,RadioState>(
          builder: (context,state){
            if(state is RadioSuccess){
              return RadioWidgetBody(radios: state.radios);
            }
            else if(state is RadioError){
              return Text(state.error);
            }
            return const Center(child: CircularProgressIndicator(),);
          }
      ),
    );
  }
}
