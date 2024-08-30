import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  //----------------------------------------------------------------passing parameters through the constructor, set to final int
  final int firstNum;
  final int secondNum;
  final int total;
  const Secondpage(this.firstNum,this.secondNum,this.total,{super.key});

  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Solution")
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
                //================================calling the parameters in build
        child: Text("${widget.firstNum}\n+\n${widget.secondNum}\n--------------\n${widget.total}"),
      ),
    );
  }
}
