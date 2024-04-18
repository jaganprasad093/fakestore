import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/homescreencontroller.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Provider.of<homescreencontroller>(context, listen: false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final providerObj =
        Provider.of<homescreencontroller>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
          child: Text(
            "FakeStore",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
              3,
              (index) => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 180,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              // image:  providerObj.resmodel?.image ?? "",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      providerObj.resmodel?.title ?? "",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                    Text("subtitle"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "prize",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(width: 100),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.purple,
                                          borderRadius:
                                              BorderRadius.circular(3)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Icon(
                                            Icons.shopping_cart_outlined,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
