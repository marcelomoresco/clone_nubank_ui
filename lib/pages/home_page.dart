import 'package:clone_nubank/widgets/credit_card_container.dart';
import 'package:flutter/material.dart';
import '../widgets/card_container.dart';
import '../widgets/head_nubank.dart';
import '../widgets/investment_container.dart';
import '../widgets/list_icons_nubank.dart';
import '../widgets/loan_container.dart';
import '../widgets/security_life_container.dart';

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
                const head_nubank(),

                // WELCOME USER

                Container(
                  height: 90,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFF8400D3),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(30.0),
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
                    children: const [
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
                    children: const [
                      Text(
                        "R\$ 1.901.287,98",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                list_icons_nubank(),
                const SizedBox(
                  height: 50,
                ),
                const card_container(),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 1.5,
                ),
                const credit_card_container(),
                const Divider(
                  thickness: 1.5,
                ),
                const loan_container(),
                const Divider(
                  thickness: 1.5,
                ),
                const investment_container(),
                const Divider(
                  thickness: 1.5,
                ),
                const security_life_container(),
                const Divider(
                  thickness: 1.5,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Descubra Mais",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Container(
                          height: 200,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: Colors.white, width: 1.2)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      children: [
                                        item_show_more(),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 30),
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: Colors.white, width: 1.2)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      children: [
                                        item_show_more(),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class item_show_more extends StatelessWidget {
  const item_show_more({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Text(
              "Convidar amigos",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              "Tire seus amigos da fila do banco\n e tire eles da burocracia",
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Convidar",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF8400D3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
          ],
        )
      ],
    );
  }
}
