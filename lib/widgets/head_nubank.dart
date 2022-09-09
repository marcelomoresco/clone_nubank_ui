import 'package:flutter/material.dart';

class head_nubank extends StatelessWidget {
  const head_nubank({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Color(0xFF8400D3)),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 70,
              width: 60,
              decoration: BoxDecoration(
                color: Color(0xFF9720D7),
                borderRadius: BorderRadius.circular(40),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.visibility_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.question_mark_sharp,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
