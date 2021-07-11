import 'package:chatpp/app_color.dart';
import 'package:flutter/material.dart';

import 'Message.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: AppColor.miniColor,
      appBar: AppBar(
        backgroundColor: AppColor.miniColor,
        elevation:0.0,
        title:Text('Chat'),
        centerTitle:true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Recent Chat',
          style: TextStyle(color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          )
          
          ),
          Expanded(child: ListView.builder(itemCount: Message.messages.length,
          itemBuilder: (context, index){
            return ListTile(
              onTap: (){
                Navigator.pushNamed(context, "/ChatScreen", arguments: Message.messages[index]);
              },
              contentPadding: EdgeInsets.symmetric(horizontal:2.0, vertical:20),
              horizontalTitleGap: 2.0,
              leading: CircleAvatar(backgroundImage: NetworkImage(Message.messages[index].avator),
              radius: 32.2,
              ),
              title: Text(Message.messages[index].userName,
              style: TextStyle(color:Colors.white, fontWeight:FontWeight.bold),),
              subtitle: Text(Message.messages[index].snippet, 
              style: TextStyle(color:Colors.white, fontWeight:FontWeight.normal),),



            );
          }
          
          
          
          ) ),
        ],),
      ),
    );
  }
}