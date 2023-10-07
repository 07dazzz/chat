import 'package:flutter/material.dart';

class OwnMessageCard extends StatelessWidget {
  const OwnMessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width -40,
      ),
      child: Card(
        elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: Color(0xffdcf8c6),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Stack(
          children: [
            Padding(padding: EdgeInsets.only(
              left: 20,
              right: 120,
              top: 20,
              bottom: 40,
            )),
            Text(" Hey dadas dasdas dq adf asd as d ad asd  a sd dsad7hq7edh g 7dgasd7 ag dsad as ", style: TextStyle(
              fontSize: 16,
            ),),
            Positioned(
              bottom: 4,
              right: 10,
              child: Row(
                children: [
                  Text("16:52", style: TextStyle(fontSize: 13, color: Colors.grey[600]),),
                  SizedBox(width: 5,),
                  Icon(Icons.done_all, size: 20,),
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
