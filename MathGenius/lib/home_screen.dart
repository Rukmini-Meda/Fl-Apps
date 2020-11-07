import 'package:flutter/material.dart';

// Use stf and stl shortcuts in VSCode to produce stateful
// and stateless widgets respectively.
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(
    text: "0"
  );
  final TextEditingController t2 = new TextEditingController(
    text: "0"
  );

  void add(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void subtract(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void multiply(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void divide(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void clear(){
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       appBar: new AppBar(
         title: new Text("Math-Genius"),
       ),
       body: new Container(
         padding: const EdgeInsets.all(40.0),
         child: new Column(
          //  Main axis alignment is for column not for container
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             new Text("Output: $sum",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.redAccent,
                fontWeight: FontWeight.bold
              ),
             ),
             new TextField(
               keyboardType: TextInputType.number,
               decoration: new InputDecoration(
                 hintText: "Enter number 1" 
               ),
               controller: t1,
             ),
             new TextField(
               keyboardType: TextInputType.number,
               decoration: new InputDecoration(
                 hintText: "Enter number 2" 
               ),
               controller: t2,
             ),
             new Padding(
               padding: const EdgeInsets.only(top: 20.0)
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new MaterialButton(
                    color: Colors.redAccent,
                    child: new Text("+"),
                    onPressed: () => add(),
                  ),
                  new MaterialButton(
                    color: Colors.redAccent,
                    child: new Text("-"),
                    onPressed: () => subtract(),
                  ),
                  
                ],
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new MaterialButton(
                    color: Colors.redAccent,
                    child: new Text("*"),
                    onPressed: () => multiply(),
                  ),
                  new MaterialButton(
                    color: Colors.redAccent,
                    child: new Text("/"),
                    onPressed: () => divide(),
                  ),
                ],
            ),
            new Padding(padding: const EdgeInsets.all(20)),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new MaterialButton(onPressed: clear,
                    child: new Text("Clear"),
                    color: Colors.greenAccent,
                  )
                ],
            )
           ],
         ),
       ),
    );
  }
}