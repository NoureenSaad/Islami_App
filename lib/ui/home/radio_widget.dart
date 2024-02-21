import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioWidget extends StatefulWidget {

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  bool clicked = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/radio_image.png"),
          SizedBox(height: 30,),
          Text(AppLocalizations.of(context)!.quranradio,style: Theme.of(context).textTheme.labelMedium,),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.fast_forward,size: 40,color: Theme.of(context).dividerColor,),
              FilledButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent)
                ),
                onPressed: (){
                  setState(() {
                    clicked = !clicked;
                  });
                },
                child: Icon( clicked == false ? Icons.pause : Icons.play_arrow,size: 45,color: Theme.of(context).dividerColor,)
              ),
              Icon(Icons.fast_forward,size: 40,color: Theme.of(context).dividerColor,),
            ],
          )
        ],
      ),
    );
  }
}
