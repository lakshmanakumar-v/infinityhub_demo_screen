import 'package:flutter/material.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  String tapButton = "Home";

  void ontap() {
    if (tapButton == "Home") {
      Colors.red;
    } else if (tapButton == "Shopping") {
      Colors.green;
    } else {
      Colors.yellow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     "Demo Screen",
      //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.teal.shade300,
      // ),
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     const SizedBox(
      //       height: 20,
      //     ),
      //     const Center(
      //       child: Text(
      //         "DemoScreen Display",
      //         style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             color: Colors.black,
      //             fontSize: 30),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(20.0),
      //       child: Container(
      //         height: 170,
      //         width: double.infinity,
      //         decoration: BoxDecoration(
      //             color: Colors.purple.shade300,
      //             borderRadius: BorderRadius.circular(10),
      //             boxShadow: const [
      //               BoxShadow(
      //                 blurRadius: 3,
      //                 blurStyle: BlurStyle.outer,
      //                 color: Colors.grey,
      //               )
      //             ]),
      //       ),
      //     ),
      //     Stack(
      //       children: [
      //         Align(
      //           alignment: Alignment.topCenter,
      //           child: Container(
      //             height: 200,
      //             decoration: BoxDecoration(
      //               color: Colors.blue,
      //               border: Border.all(color: Colors.blue),
      //             ),

      //           ),
      //         ),
      //         Align(
      //           alignment: Alignment.bottomCenter,
      //           child: Container(
      //             height: 200,
      //             decoration: BoxDecoration(
      //                 color: Colors.green,
      //                 border: Border.all(color: Colors.blue)),
      //           ),
      //         ),
      //       ],
      //     ),
      //     Column(
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: Container(
      //                 height: 100,
      //                 width: 300,
      //                 decoration: BoxDecoration(
      //                     color: Color(0xffE23412),
      //                     border: Border.all(color: Colors.yellow)),
      //               ),
      //             ),
      //             Align(
      //               alignment: Alignment.topLeft,
      //               child: Padding(
      //                 padding: const EdgeInsets.all(8.0),
      //                 child: Container(
      //                   height: 100,
      //                   width: 300,
      //                   decoration: BoxDecoration(
      //                       color: Color(0xffE67412),
      //                       border: Border.all(color: Colors.yellow)),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //   ],
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: (value) {
      //     ontap();
      //   },
      //   items: const [
      //     BottomNavigationBarItem(
      //       label: "Home",
      //       icon: Icon(Icons.home),
      //     ),
      //     BottomNavigationBarItem(
      //       label: "Shopping",
      //       icon: Icon(Icons.shopping_cart),
      //     ),
      //     BottomNavigationBarItem(
      //       label: "Profile",
      //       icon: Icon(Icons.person),
      //     ),
      //   ],
      // ),

      //Stack inside elements
      body: Stack(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: 30,
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.blender_outlined,
                          size: 30,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.settings,
                      size: 30,
                    ),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            blurStyle: BlurStyle.outer,
                            color: Colors.grey)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("Responsive one"),
                        GridView.count(
                          shrinkWrap: true,
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.blue,
                                    ),
                                    child: const Icon(Icons.home),
                                  ),
                                  const Text("HelloWorld")
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
