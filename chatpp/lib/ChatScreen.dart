/*This is a ChatBox Screen code*/
import 'package:chatpp/Message.dart';
import 'package:chatpp/app_color.dart';
import 'package:flutter/material.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({ Key key }) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final arg= ModalRoute.of(context).settings.arguments as Message;
    return Scaffold(
      backgroundColor: AppColor.miniColor,
      appBar: AppBar(
        backgroundColor: AppColor.miniColor,
        title: Text(arg.userName),
        elevation: 0.0,
        actions: [
          IconButton(icon:Icon(Icons.video_call_rounded), onPressed: (){}),
          IconButton(icon:Icon(Icons.call), onPressed: (){}),
        ],

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: ListView(
            reverse: true,
            children: [
              
              
               
              
              chatBox("Univerty", true),
              chatBox("Where are you now", false),
              chatBox("yes dear ?", true),
              chatBox("?", false),
              chatBox("Fine dear", false),
              chatBox("HI! how are you dear", true),
              
            ],
          )),
          Container(
            padding: EdgeInsets.all(8.0),
            child:Row(
              children: [
                Expanded(child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.textFieldColor,
                    border: InputBorder.none,hintText: "Type something...."
                  ),
                )),
                IconButton(icon: Icon(Icons.send), onPressed: (){},color: AppColor.secondaryColor,),


            ],)
          )
        ],),
      
    );
  }
}
Widget chatBox(String text, bool ifRowMe){
  return Row(
    mainAxisAlignment: ifRowMe? MainAxisAlignment.end: MainAxisAlignment.start,
      children:[ Container(
      width: 140.0,
    padding: EdgeInsets.all(8.0),
    margin: EdgeInsets.symmetric(vertical:10.0, horizontal:8.0),
    decoration: BoxDecoration(
      color: ifRowMe ? AppColor.secondaryColor:AppColor.textFieldColor,
      borderRadius: ifRowMe? BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0),bottomLeft:Radius.circular(12.0),bottomRight:Radius.circular(0.0)):
      BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0),bottomLeft:Radius.circular(9.0),bottomRight:Radius.circular(12.0))
    ),
    child: Text(text, style: TextStyle(color: Colors.white),),

    ),]
  );
}
