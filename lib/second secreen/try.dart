import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  String valuex = "x";
  String valueo = "o";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                            child: Text(
                          valuex,
                          style: TextStyle(fontSize: 50),
                        )),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                            child: Text(
                          valuex,
                          style: TextStyle(fontSize: 50),
                        )),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                            child: Text(
                          valuex,
                          style: TextStyle(fontSize: 50),
                        )),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                            child: Text(
                          valuex,
                          style: TextStyle(fontSize: 50),
                        )),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                            child: Text(
                          valuex,
                          style: TextStyle(fontSize: 50),
                        )),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                            child: Text(
                          valuex,
                          style: TextStyle(fontSize: 50),
                        )),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                            child: Text(
                          valuex,
                          style: TextStyle(fontSize: 50),
                        )),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          valuex;
                        },
                        child: Center(
                            child: Text(
                          valueo,
                          style: TextStyle(fontSize: 50),
                        )),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                            child: Text(
                          valuex,
                          style: TextStyle(fontSize: 50),
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
