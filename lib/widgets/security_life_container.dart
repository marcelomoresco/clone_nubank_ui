import 'package:flutter/material.dart';

class security_life_container extends StatelessWidget {
  const security_life_container({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        height: 120,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(Icons.heart_broken),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Seguro de vida",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Um seguro completo e que cabe no seu bolso",
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
