import 'package:complete_ui/manu_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'main_container_clipper.dart';
import 'widget_holder.dart';

void main() {
  runApp(const CompleteUi());
}

class CompleteUi extends StatelessWidget {
  const CompleteUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    var sizeOfMyScreen = MediaQuery.of(context).size;
    double heightOfMyScreen = sizeOfMyScreen.height;
    double widthOfMyScreen = sizeOfMyScreen.width;
    double standardWidth = widthOfMyScreen * 0.93;
    double heightOfMyMainContainer = heightOfMyScreen * 0.3;

    return SafeArea(
      top: true,
      child: Scaffold(
          backgroundColor: Color.fromARGB(121, 245, 220, 247),
          drawer: const Drawer(),
          appBar: AppBar(),
          body: Stack(children: [
            Padding(
              padding: EdgeInsets.only(
                  left: widthOfMyScreen * 0.35, top: heightOfMyScreen * 0.4),
              child: Container(
                height: heightOfMyScreen * 1,
                width: widthOfMyScreen * 1,
                transform: Matrix4.rotationZ(-120),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [
                      0.2,
                      1.0
                    ],
                        colors: [
                      Colors.black45,
                      Color.fromARGB(154, 167, 3, 249),
                    ])),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(
                    top: heightOfMyScreen * 0.02,
                    left: widthOfMyScreen * 0.035),
                child: ClipPath(
                  clipper: MainContainerClipper(),
                  child: Container(
                    height: heightOfMyMainContainer,
                    width: standardWidth,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          end: Alignment.bottomLeft,
                          begin: Alignment.topRight,
                          colors: [Colors.brown, Colors.deepPurpleAccent]),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 3,
                            offset: Offset(-55, -59),
                            blurRadius: 42,
                            color: Colors.red)
                      ],
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: heightOfMyMainContainer * 0.8,
                            color: Colors.transparent,
                            width: standardWidth,
                            child: Image.asset('assets/images/fourth_cycle.png',
                                fit: BoxFit.fill),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: standardWidth * 0.1,
                                top: heightOfMyMainContainer * 0.018),
                            child: const Text(
                              "30% Off",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ]),
                  ),
                ),
              ),
              Stack(children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: heightOfMyScreen * 0.08,
                      left: widthOfMyScreen * 0.035),
                  child: const MenuWidget(icon: Center(child: Text("All"))),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: heightOfMyScreen * 0.06,
                      left: widthOfMyScreen * 0.245),
                  child: MenuWidget(
                      icon: Image.asset('assets/images/fivth_cycle.png')),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: heightOfMyScreen * 0.04,
                      left: widthOfMyScreen * 0.445),
                  child: MenuWidget(
                      icon: Image.asset('assets/images/icon_bi.png')),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: heightOfMyScreen * 0.02,
                      left: widthOfMyScreen * 0.645),
                  child: MenuWidget(
                      icon: Image.asset('assets/images/third_cycle.png')),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: heightOfMyScreen * 0, left: widthOfMyScreen * 0.835),
                  child:
                      MenuWidget(icon: Image.asset('assets/images/helmet.png')),
                ),
              ]),
              Padding(
                padding: EdgeInsets.only(
                    left: widthOfMyScreen * 0.034,
                    top: heightOfMyScreen * 0.01),
                child: Container(
                  height: heightOfMyScreen * 0.41,
                  width: standardWidth,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            WidgetHolder(
                                imagePath: "assets/images/samll1.png",
                                widget: Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: const [
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text("Road Bike Cycle"),
                                      Text("PEUGEOT-LR01",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white)),
                                      Text("\$752.450"),
                                    ],
                                  ),
                                )),
                            SizedBox(
                              width: widthOfMyScreen * 0.12,
                            ),
                            WidgetHolder(
                                imagePath: "assets/images/small2.png",
                                widget: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text("Race Bike Cycle"),
                                    Text("Hercules Roadeo",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white)),
                                    Text("\$7052.3"),
                                  ],
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            WidgetHolder(
                                imagePath: "assets/images/helmet4.png",
                                widget: Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: const [
                                      Text("Foldable Bike Helmet"),
                                      Text("FEND One",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white)),
                                      Text("\$552"),
                                    ],
                                  ),
                                )),
                            SizedBox(
                              width: widthOfMyScreen * 0.12,
                            ),
                            WidgetHolder(
                                imagePath: "assets/images/small5.png",
                                widget: Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: const [
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text("OffRoad Bike Cycle"),
                                      Text("AGIVELO",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white)),
                                      Text("\$6043"),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            WidgetHolder(
                                imagePath: "assets/images/small4.png",
                                widget: Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: const [
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text("Race Bike Cycle"),
                                      Text("Hercules Roadeo",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white)),
                                      Text("\$7052.3"),
                                    ],
                                  ),
                                )),
                            SizedBox(
                              width: widthOfMyScreen * 0.12,
                            ),
                            WidgetHolder(
                                imagePath: "assets/images/helmet3.png",
                                widget: Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: const [
                                      Text("Helmet"),
                                      Text("FEND Rindano",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white)),
                                      Text("\$67"),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]),
          ])),
    );
  }
}
