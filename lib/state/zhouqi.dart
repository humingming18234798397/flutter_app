import 'package:flutter/material.dart';

void main() => runApp(CounterWidget());

class CounterWidget extends StatefulWidget{

  const CounterWidget({
    Key key,
    this.initValue:0,
  }):super(key:key);

  final int  initValue;

  @override
  _CounterWidgetState createState() => new _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget>{

  int _count;

  @override
  void initState(){
    super.initState();

    _count = widget.initValue;
    print("initState");
  }

  @override
  Widget build(BuildContext context){

    print('build');
    return  Center(

      child: FlatButton(

        child: Text('$_count'),
        onPressed: () => setState(() => ++_count),
      ),
    );
  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    print("didUpdateWidget");

  }

  //无效
  @override
  void deactivate(){
    super.deactivate();

    print("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

}
