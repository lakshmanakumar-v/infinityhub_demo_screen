import 'package:flutter/material.dart';
import 'package:infinityhub_demo_screens/custom_widgets/custome_transactional_list.dart';
import 'package:infinityhub_demo_screens/app_screens/home_page.dart';

class TransactionalListPage extends StatefulWidget {
  const TransactionalListPage({super.key});

  @override
  State<TransactionalListPage> createState() => _TransactionalListPageState();
}

class _TransactionalListPageState extends State<TransactionalListPage> {
  String tabType = "Transactions";
  String bottomTapType = "Report";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.blue,
        constraints: const BoxConstraints.expand(),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          25,
                        ),
                        topLeft: Radius.circular(25),
                      ),
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Transactional List",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomTransactionalList(),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTransactionalList(
                          text: "Purchase Order",
                          color: Colors.orange.shade300,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomTransactionalList(),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomTransactionalList(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        " Add New Sale",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Container(
                height: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          tabType = 'Transactions';
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 120,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: tabType == 'Transactions'
                              ? Colors.blue
                              : Colors.white,
                        ),
                        child: Text(
                          "Transactions",
                          style: TextStyle(
                            color: tabType == 'Transactions'
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          tabType = 'Party';
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:
                              tabType == 'Party' ? Colors.blue : Colors.white,
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 7),
                        child: Text(
                          "Party",
                          style: TextStyle(
                            color: tabType == 'Party'
                                ? Colors.white
                                : Colors.black,
                          ),
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
        // clipBehavior: Clip.hardEdge,
        // surfaceTintColor: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  bottomTapType = 'Home';
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ),
                );
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
