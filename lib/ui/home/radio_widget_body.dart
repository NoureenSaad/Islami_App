import 'package:audioplayers/audioplayers.dart';
import 'package:eslami/model/radio.dart';
import 'package:flutter/material.dart';

class RadioWidgetBody extends StatefulWidget {
  List<RadioModel>? radios;

  RadioWidgetBody({super.key, required this.radios});

  @override
  State<RadioWidgetBody> createState() => _RadioWidgetBodyState();
}

class _RadioWidgetBodyState extends State<RadioWidgetBody> {
  final player = AudioPlayer();
  int radioIndex = 0;
  bool clicked = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/radio_image.png"),
          const SizedBox(
            height: 30,
          ),
          Text(
            widget.radios?[radioIndex].name ?? "",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: (){
                  if(radioIndex != widget.radios!.length-1){
                    if(!clicked){
                      setState(() {
                        radioIndex++;
                        clicked=!clicked;
                        player.stop();
                      });
                    }

                  }
                },
                icon: const Icon(Icons.fast_forward),
                style: ButtonStyle(iconSize: MaterialStateProperty.all(40)),
                color: Theme.of(context).dividerColor,
              ),
              IconButton(
                  onPressed: () {
                    if(clicked){
                      player.play(UrlSource(widget.radios![radioIndex].url??""));
                      setState(() {
                        clicked = !clicked;
                      });
                    }
                    else{
                      player.stop();
                      setState(() {
                        clicked = !clicked;
                      });
                    }
                  },
                  icon: Icon(
                    clicked == false ? Icons.pause : Icons.play_arrow,
                    size: 45,
                    color: Theme.of(context).dividerColor,
                  )),
              IconButton(
                color: Theme.of(context).dividerColor,
                onPressed: () {
                  if (radioIndex != 0) {
                    if(!clicked){
                      setState(() {
                        radioIndex--;
                        clicked=!clicked;
                        player.stop();
                      });
                    }

                  }
                },
                icon: const Icon(Icons.fast_rewind_sharp),
                style: ButtonStyle(iconSize: MaterialStateProperty.all(40)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
