import 'package:flutter/material.dart';
import 'package:untitled/Model/ChatModel.dart';
import 'package:untitled/UI/OwnMessageCard.dart';
import 'package:untitled/UI/ReplyCard.dart';


class ChatRoomPage extends StatefulWidget {
  const ChatRoomPage({super.key, });

  @override
  State<ChatRoomPage> createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/image/bg.jpg",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            leading: Padding(
              padding: EdgeInsets.only(left:12),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_outlined),
              ),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("James",
                style: TextStyle(
                  fontSize: 18.5,
                  fontWeight: FontWeight.bold,
                ),),
                Text("last seen at 12:02",
                style: TextStyle(
                  fontSize: 13,
                ))
              ],
            ),
            centerTitle: true,
            actions: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 20),
              child: CircleAvatar(radius: 20,
                  backgroundColor: Colors.white,
                  child: Material(
                    elevation: 8.0,
                    shape: CircleBorder(),
                    color: Colors.transparent,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/image/dat1.jpg'),
                      radius: 50.0,
                    ),
                  )
              ),

            ),]
          ),


         body: Container(
           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
           child: Stack(
             children: [
               Container(
                 height: MediaQuery.of(context).size.height -140,
                 child: ListView(
                   shrinkWrap: true,
                   children: [
                     OwnMessageCard(),ReplyCard(),
                     OwnMessageCard(),ReplyCard(),
                     OwnMessageCard(),ReplyCard(),
                     OwnMessageCard(),ReplyCard(),
                     OwnMessageCard(),ReplyCard()

                   ],
                 ),
               ),
               Align(
                 alignment: Alignment.bottomCenter,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Container(
                       margin: EdgeInsets.only(left: 2, right: 2, bottom: 10),
                       padding: EdgeInsets.only(left: 10,right: 10,bottom: 10, top: 10),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         color: Colors.white,
                       ),
                       child: Icon(
                         Icons.call,
                         color: Colors.green,
                       ),
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width - 70,
                       child: Card(
                         margin: EdgeInsets.only(left: 16, right: 16, bottom: 8),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(25),
                         ),
                         child: TextFormField(
                           // textAlignVertical: TextAlignVertical.center,
                           keyboardType: TextInputType.multiline,
                           maxLines: 5,
                           minLines: 1,
                           decoration: InputDecoration(
                               hintText: "  Start typing here...",
                               contentPadding: EdgeInsets.all(5)
                           ),
                         ),
                       ),


                     ),


                   ],
                 ),
               )
             ],
           ),

         )

        ),
      ],
    );
  }

}

