import 'package:flutter/material.dart';

class ReplyCard extends StatelessWidget {
  const ReplyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width -45,

      ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          // color: Color(0xffdcf8c6),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(padding: const EdgeInsets.only(
                left: 15,
                right: 60,
                top:30,
                bottom: 20,
              )),
              Text(" Hey", style: TextStyle(
                fontSize: 16,
              ),),
              Positioned(
                bottom: 4,
                right: 10,
                child: Text("16:52", style: TextStyle(fontSize: 13, color: Colors.grey[600]),),


              ),

            ],
          ),
        ),
      ),
    );
  }
}
