import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(ScreenWidget());
}
class ScreenWidget extends StatelessWidget{
  Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView'),
        ),
        body: GridViewCustomWidget(),
      ),
    );
  }
}
class TextWidget extends StatelessWidget {
  const TextWidget({Key key, this.text}) : super (key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1)),
      child: Text
        (text,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
  class GridViewWidget extends StatelessWidget{
    Widget build(BuildContext context){
      return GridView(
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
  ),
  children: <Widget>[
    TextWidget(text: "1"),
    TextWidget(text: "2"),
    TextWidget(text: "3"),
    TextWidget(text: "4"),
    TextWidget(text: "5"),
    TextWidget(text: "6"),
  ],);
  }
  }
  class GridViewCustomWidget extends StatelessWidget {
    Widget build(BuildContext context) {
      return GridView.custom(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        childrenDelegate: SliverChildBuilderDelegate((context, index) {
          return TextWidget(text: '$index');
        }),
      );
    }
  }


