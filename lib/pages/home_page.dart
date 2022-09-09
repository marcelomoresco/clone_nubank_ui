import 'package:clone_nubank/widgets/item_funcionality.dart';
import 'package:flutter/material.dart';

import '../widgets/head_nubank.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                // HEADER NUBANK ***************
                head_nubank(),

                // WELCOME USER

                Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF8400D3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      "Olá, Marcelo",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 22),
                    ),
                  ),
                ),

                // CONTA

                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Conta",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 22)),
                      Icon(Icons.arrow_forward_ios_outlined,
                          color: Colors.grey),
                    ],
                  ),
                ),

                // Money

                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "R\$ 1.901.287,98",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                _actions(),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        height: 60,
                        width: 370,
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.business_center_sharp),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Meus Cartões",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_actions() {
  return Container(
      padding: EdgeInsets.only(left: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _actionsItem(
              icon: Icons.pix,
              name: "Pix",
            ),
            _actionsItem(
              icon: Icons.shopping_cart,
              name: "Pagar",
            ),
            _actionsItem(
              icon: Icons.account_balance_rounded,
              name: "Depositar",
            ),
            _actionsItem(
              icon: Icons.accessibility_new_outlined,
              name: "Transferir",
            ),
            _actionsItem(
              icon: Icons.pix,
              name: "Pix",
            ),
          ],
        ),
      ));
}

_actionsItem({required IconData icon, required String name}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.grey[100]),
          child: Column(
            children: [
              Icon(icon, color: Colors.black),
            ],
          ),
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
