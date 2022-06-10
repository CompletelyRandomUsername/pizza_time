import 'package:flutter/material.dart';
import 'package:pizza_time/add_pizza.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _counter = 2;
  List<String> names = <String>["Original", "Buffalo"];
  List<String> prices = <String>["\$8", "\$10"];

  void _awaitReturnValueFromSecondScreen(BuildContext context) async {


    final List<String>result = await Navigator.push(context, MaterialPageRoute(builder: (context) => AddPizza()));


    setState(() {
        names.add(result[0]);
        prices.add("\$"+result[1]);
        _counter++;

    });
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        shadowColor: Colors.white,
        toolbarHeight: 0,
      ),


      body: Center (
        child:Column(
          children: [
            Container(
              height: 200,
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Pizza Market", style: TextStyle(fontSize: 25)),
                  IconButton(
                    icon: Icon(Icons.add_box),
                    iconSize: 50,
                    color: Colors.red,
                    onPressed: ()
                    {
                      _awaitReturnValueFromSecondScreen(context);
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 800,
              child: ListView.builder(
                  padding: const EdgeInsets.all(50),
                  itemCount: names.length,
                  itemBuilder: (BuildContext context, int $_counter) {
                    return Container(
                        width: 1000,
                        height: 80,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(

                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image(image: AssetImage('assets/pizza.png')),
                                  Text("    "),
                                  Text(names[$_counter], style: TextStyle(fontSize: 25)),
                                ],
                              ),
                            ),
                            Container(
                              child: Text(prices[$_counter], style: TextStyle(fontSize: 30, color: Colors.red)),
                            )

                          ],
                        )

                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}