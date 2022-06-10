import 'dart:ui';

import 'package:flutter/material.dart';

class AddPizza extends StatefulWidget {
  const AddPizza({Key? key}) : super(key: key);
  @override
  State<AddPizza> createState() => _AddPizzaState();
}

class _AddPizzaState extends State<AddPizza> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController priceController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        shadowColor: Colors.white,
        toolbarHeight: 0,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex:25,
            child: FractionallySizedBox(
              widthFactor: 1,
              child: Container(
                alignment: Alignment.center,

                child: Container(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        color: Colors.red[100],
                        child:IconButton(
                          icon: Icon(Icons.arrow_back_ios_new),
                          onPressed: ()
                          {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 0, right: 20.0),
                        child: Text("Add pizza", style: TextStyle(fontSize: 40)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Flexible(
            flex:50,
            child: FractionallySizedBox(
              widthFactor: 1,
              child: Container(
                alignment: Alignment.center,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          alignment: Alignment.center,

                          child: Image(image: AssetImage('assets/add_pizza.png')),
                        ),
                      ),

                      Expanded(
                        flex: 6,
                        child: Container(
                            child:Column(
                              children: [
                                Flexible(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Flexible(
                                          flex:25,
                                          child: Container(

                                          ),
                                        ),
                                        Flexible(
                                          flex:50,
                                          child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Name", style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal)),
                                          ),
                                        ),
                                        Flexible(
                                          flex:50,
                                          child: Container(
                                            alignment: Alignment.topCenter,
                                            margin: const EdgeInsets.only(right: 30),
                                            child: TextField(
                                              controller: nameController,
                                              maxLines: 1,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),

                                              ),

                                              style: TextStyle(fontSize: 25),
                                              textAlignVertical: TextAlignVertical.top,
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    child: Column(
                                      children: [

                                        Flexible(
                                          flex:50,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Price", style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal)),
                                          ),
                                        ),
                                        Flexible(
                                          flex:50,
                                          child: Container(
                                            alignment: Alignment.topCenter,
                                            margin: const EdgeInsets.only(right: 30),
                                            child: TextField(
                                              controller: priceController,
                                              keyboardType: TextInputType.number,
                                              maxLines: 1,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                              ),

                                              style: TextStyle(fontSize: 25),
                                              textAlignVertical: TextAlignVertical.top,
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex:25,
                                          child: Container(
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Flexible(
            flex:100,
            child: FractionallySizedBox(
              widthFactor: 0.8,

              child: Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 70,
                  width: 1000,
                  color: Colors.red,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(primary: Colors.white),
                    child: Text("Save", style: TextStyle(fontSize: 45, fontWeight: FontWeight.normal)),
                    onPressed: ()
                    {

                        List<String> list = [
                          nameController.text,
                          priceController.text
                        ];
                        Navigator.pop(context, list);

                    },
                  ),
                ),
              ),
            ),
          ),

          Flexible(
            flex:4,
            child: Container(

            ),
          ),
        ],
      ),
    );
  }
}
