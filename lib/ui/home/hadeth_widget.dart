import 'package:eslami/ui/home/hadeth_model.dart';
import 'package:eslami/ui/home/hadeth_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadethWidget extends StatefulWidget {

  @override
  State<HadethWidget> createState() => _HadethWidgetState();
}

class _HadethWidgetState extends State<HadethWidget> {
  @override
  Widget build(BuildContext context) {
    if(allAhadeth.isEmpty){
      loadAhadethFile();
    }
    return Column(

      children: [
        Expanded(
            child: Image.asset("assets/images/hadeth_logo.png")
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.symmetric(horizontal: BorderSide(color: Theme.of(context).colorScheme.primary,width: 2))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("الأحاديث",style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 30,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: allAhadeth.isEmpty? Center(child: CircularProgressIndicator(),)
          :ListView.separated(
              itemBuilder: (context,index)=> HadethTitleWidget(hadethModel: allAhadeth[index]),
              separatorBuilder: (context,index){
                return Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(5),
                  height: 2,
                  color: Theme.of(context).colorScheme.primary,
                );
              },
              itemCount: allAhadeth.length)
        )
      ],
    );
  }

  List<HadethModel> allAhadeth = [];

  void loadAhadethFile() async{
    String hadethText = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hadethList = hadethText.split("#");
    for(int i=0 ; i < hadethList.length ; i++){
      List<String> oneHadeth = hadethList[i].trim().split("\n");
      String hadthTitle = oneHadeth[0];
      oneHadeth.removeAt(0);
      String hadethContent = oneHadeth.join(" ");
      allAhadeth.add(HadethModel(hadethTitle: hadthTitle, hadethContent: hadethContent));
    }
    setState(() {

    });
  }
}
