import 'package:flutter/material.dart';
import 'package:infinityhub_demo_screens/custom_payment_list.dart';
import 'package:infinityhub_demo_screens/settings_page.dart';
import 'package:infinityhub_demo_screens/transactional_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String bottomTapType = "Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: const EdgeInsets.all(7),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              boxShadow: [
                BoxShadow(
                    blurRadius: 2,
                    color: Colors.grey,
                    blurStyle: BlurStyle.outer)
              ],
            ),
            child: const Icon(Icons.menu),
          ),
        ),
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "RASE",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              TextSpan(
                text: "ED",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_alert_rounded),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SettingsPage();
                  },
                ),
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // flutter build Apk --release terminal click control open with file explorer
              Row(
                children: [
                  Expanded(
                      child: CustomPaymentList(
                    ratingPercentage: '5%',
                    ratingIconColor: Colors.green,
                    ratingPercentageColor:
                        const Color.fromARGB(191, 106, 163, 8),
                    ratingContainerColor: Colors.greenAccent.shade200,
                    amount: '38,000.00',
                    text: "You'll Receive",
                    shoppingColor: Colors.green,
                  )),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: CustomPaymentList(
                    ratingPercentage: '12%',
                    ratingIconColor: Colors.red,
                    ratingPercentageColor: Colors.red.shade500,
                    ratingContainerColor: Colors.red.shade200,
                    amount: '12,000.00',
                    text: "You'll Pay",
                    shoppingColor: Colors.deepOrangeAccent,
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: CustomPaymentList(
                    ratingPercentage: '5%',
                    ratingIconColor: Colors.green,
                    ratingPercentageColor:
                        const Color.fromARGB(191, 106, 163, 8),
                    ratingContainerColor: Colors.greenAccent.shade200,
                    amount: '18,000.00',
                    text: "Total Purchase",
                    shoppingColor: Colors.blue,
                  )),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: CustomPaymentList(
                    ratingPercentage: '12%',
                    ratingIconColor: Colors.red,
                    ratingPercentageColor: Colors.red.shade400,
                    ratingContainerColor: Colors.red.shade200,
                    amount: '145',
                    text: "Total No of Users",
                    shoppingColor: Colors.purple,
                  )),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Sales',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'View all',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 200,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        blurStyle: BlurStyle.outer,
                        color: Colors.grey,
                      ),
                    ]),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.indigo.shade200),
                          child: const Icon(Icons.card_travel_rounded),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "38,000.00",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green.shade200,
                          ),
                          child: const Icon(
                            Icons.auto_graph,
                            size: 15,
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          '10%',
                          style: TextStyle(
                            color: Colors.green.shade800,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("This year"),
                                  Icon(Icons.keyboard_arrow_down_sharp)
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Stock Inventory',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        blurStyle: BlurStyle.outer,
                        color: Colors.grey,
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.tealAccent,
                        ),
                        child: Row(
                          children: [
                            const Text("Total Stock Value"),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.tealAccent.shade700),
                              child: const Icon(
                                Icons.card_travel_rounded,
                                color: Colors.tealAccent,
                              ),
                            ),
                            const Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "1,37,000.00",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 70,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey.shade300,
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        elevation: 1,
        shape: const CircleBorder(),
        child: const Icon(Icons.sticky_note_2_outlined),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        notchMargin: 5,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  bottomTapType = 'Home';
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    color: bottomTapType == 'Home' ? Colors.blue : Colors.black,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                        color: bottomTapType == 'Home'
                            ? Colors.blue
                            : Colors.black),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  bottomTapType = "Items";
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.indeterminate_check_box_outlined,
                    color:
                        bottomTapType == 'Items' ? Colors.blue : Colors.black,
                  ),
                  Text(
                    "Items",
                    style: TextStyle(
                      color:
                          bottomTapType == 'Items' ? Colors.blue : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  bottomTapType = "Party";
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.people,
                    color:
                        bottomTapType == 'Party' ? Colors.blue : Colors.black,
                  ),
                  Text(
                    "Party",
                    style: TextStyle(
                      color:
                          bottomTapType == 'Party' ? Colors.blue : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  bottomTapType = "Report";
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const TransactionalListPage();
                    },
                  ),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.align_vertical_bottom,
                    color:
                        bottomTapType == 'Report' ? Colors.blue : Colors.black,
                  ),
                  Text(
                    "Report",
                    style: TextStyle(
                      color: bottomTapType == 'Report'
                          ? Colors.blue
                          : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
