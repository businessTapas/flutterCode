import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo h',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double padding = 25;
    final double smallPadding = 5;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    final smallSidePadding = EdgeInsets.symmetric(horizontal: smallPadding);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Container(
          width: 500,
          height: 1000,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpacePadding(),
              Padding(
                padding: sidePadding,
                child: Container(
                    width: 500,
                    height: 150,
                    color: Colors.orange[200],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        addVerticalSpace(padding),
                        Padding(
                          padding: sidePadding,
                          child: Text("50% off",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold)),
                        ),
                        addVerticalSpace(15),
                        Padding(
                          padding: sidePadding,
                          child: Text("Take any cource",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.4))),
                        ),
                        addVerticalSpace(15),
                        Padding(
                          padding: sidePadding,
                          child: CustomBox(
                            width: 60,
                            height: 30,
                            colors: Colors.black,
                            child: Text("Join Now",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )
                      ],
                    )),
              ),
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child: Text("Find your job",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child: Container(
                  width: 500,
                  height: 300,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 150,
                              height: 250,
                              color: Colors.blue[100],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomBox(
                                    width: 50,
                                    height: 50,
                                    colors: Colors.white,
                                    child: Icon(
                                      Icons.home_rounded,
                                      color: Colors.black,
                                    ),
                                  ),
                                  addVerticalSpace(10),
                                  Text("2",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  addVerticalSpace(10),
                                  Text("Remote jobs",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 250,
                              child: Column(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 115,
                                    color: Colors.deepPurple[50],
                                    child: Row(children: [
                                      Padding(
                                        padding: smallSidePadding,
                                      ),
                                      CustomBox(
                                        width: 50,
                                        height: 50,
                                        colors: Colors.white,
                                        child: Icon(
                                          Icons.cameraswitch,
                                        ),
                                      ),
                                      Container(
                                        width: 80,
                                        height: 50,
                                        //colors: Colors.white,
                                        child: Column(
                                          children: [
                                            Text("13",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            addVerticalSpace(10),
                                            Text("Full Time",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ),
                                  addVerticalSpace(10),
                                  Container(
                                    width: 150,
                                    height: 115,
                                    color: Colors.green[50],
                                    child: Row(children: [
                                      Padding(
                                        padding: smallSidePadding,
                                      ),
                                      CustomBox(
                                        width: 50,
                                        height: 50,
                                        colors: Colors.white,
                                        child: Icon(
                                          Icons.heart_broken,
                                        ),
                                      ),
                                      Container(
                                        width: 80,
                                        height: 50,
                                        //colors: Colors.white,
                                        child: Column(
                                          children: [
                                            Text("2",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            addVerticalSpace(10),
                                            Text("Part Time",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class VerticalSpacePadding extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _VPState();
  }
}

class _VPState extends State<VerticalSpacePadding> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
    );
  }
}

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

class CustomBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double height, width;
  final Color colors;

  const CustomBox(
      {this.padding = const EdgeInsets.all(8.0),
      this.height = 0,
      this.width = 0,
      this.colors = Colors.white,
      this.child = const Icon(Icons.add)});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Center(child: child),
    );
  }
}
