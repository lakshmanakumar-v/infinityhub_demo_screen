import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
  });

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool unsavedChanges = true;
  bool settings = false;
  bool estimate = true;
  bool other = true;
  bool sale = false;
  bool assest = false;
  bool delivery = true;
  bool deliveryChallan = true;
  bool printAmount = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        title: const Text(
          'General',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.blue,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            color: Colors.grey[100],
          ),
          margin: const EdgeInsets.only(top: 20),
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [],
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Settings",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("App Language"),
                        DropdownMenu(
                          hintText: 'English',
                          inputDecorationTheme:
                              InputDecorationTheme(border: InputBorder.none),
                          dropdownMenuEntries: [
                            DropdownMenuEntry(value: 1, label: 'English'),
                            DropdownMenuEntry(value: 2, label: 'Tamil')
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("App Language"),
                        DropdownMenu(
                          hintText: '000.00',
                          inputDecorationTheme:
                              InputDecorationTheme(border: InputBorder.none),
                          dropdownMenuEntries: [
                            DropdownMenuEntry(value: 1, label: '147.00'),
                            DropdownMenuEntry(value: 2, label: '123.00'),
                            DropdownMenuEntry(value: 3, label: '542.60'),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.grey))),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "Decimal Process",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.remove),
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey)),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                width: 55,
                                child: const Text('2'),
                              ),
                              const Icon(Icons.add),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.grey))),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "Date Formate",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              showDatePicker(
                                  context: context,
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2050));
                            },
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'dd/mm/yyyy',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Icon(Icons.keyboard_arrow_down_outlined),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.grey))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Show Warning For Unsaved Changes",
                            style: TextStyle(fontSize: 14),
                          ),
                          Switch(
                              activeColor: Colors.blue,
                              value: unsavedChanges,
                              onChanged: (value) {
                                setState(() {
                                  unsavedChanges = !unsavedChanges;
                                });
                              })
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [],
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Settings",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      children: [
                        const Expanded(
                          flex: 4,
                          child: Text(
                            "Password/FingerPrint[if present]",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Switch(
                          activeColor: Colors.blue,
                          value: settings,
                          onChanged: (value) {
                            setState(() {
                              settings = !settings;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 1,
                        blurStyle: BlurStyle.outer,
                        color: Colors.grey)
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(12),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Multifirm",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Text(
                            "MultifirmSettings",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 20,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 1,
                        blurStyle: BlurStyle.outer,
                        color: Colors.grey)
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(12),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Stock Transfer Between Godowns",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Text(
                            "Multifirm Settings",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 20,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 1,
                        blurStyle: BlurStyle.outer,
                        color: Colors.grey)
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(12),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Backup ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Text(
                            "Backup Settings",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 20,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [],
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "More Transactions",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      children: [
                        const Expanded(
                          flex: 4,
                          child: Text(
                            "Estimate/Qualification()",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Switch(
                          activeColor: Colors.blue,
                          value: estimate,
                          onChanged: (value) {
                            setState(() {
                              estimate = !estimate;
                            });
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          flex: 4,
                          child: Text(
                            "Other",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Switch(
                          value: other,
                          onChanged: (value) {
                            setState(() {
                              other = !other;
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          flex: 4,
                          child: Text(
                            "Sale/Purchase Order",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Switch(
                          value: sale,
                          onChanged: (value) {
                            setState(() {
                              sale = !sale;
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          flex: 4,
                          child: Text(
                            "Forced Assest",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Switch(
                          value: assest,
                          onChanged: (value) {
                            setState(() {
                              assest = !assest;
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          flex: 4,
                          child: Text(
                            "Delivery",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Switch(
                          value: delivery,
                          onChanged: (value) {
                            setState(() {
                              delivery = !delivery;
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          flex: 4,
                          child: Text(
                            "Good Return as Delivery Challan",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Switch(
                          value: deliveryChallan,
                          onChanged: (value) {
                            setState(() {
                              deliveryChallan = !deliveryChallan;
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          flex: 4,
                          child: Text(
                            "Print Amount on Challan",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Switch(
                          value: printAmount,
                          onChanged: (value) {
                            setState(() {
                              printAmount = !printAmount;
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
