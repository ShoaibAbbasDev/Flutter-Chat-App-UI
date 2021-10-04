//import 'package:flutter_chat_app/models/user_model.dart';
//messgae class which containg diffrent attributes like name time and date
class Message {
  String userName;
  String snippet;
  String time; // Would usually be type DateTime or Firebase Timestamp in production apps
  String avator;
  

  Message({
    this.userName,
    this.time,
    this.avator,
    this.snippet,
  });


// EXAMPLE CHATS ON HOME SCREEN
static List<Message> chats = [
  Message(
    userName: 'ironMan',
    time: '5:30 PM',
    snippet: 'Hey dude! Even dead I\'m the hero. Love you 3000 guys.',
    avator: 'https://randomuser.me/api/portraits/women/17.jpg',
  ),
  Message(
    userName: 'captainAmerica',
    time: '4:30 PM',
    snippet: 'Hey, how\'s it going? What did you do today?',
    avator: 'https://randomuser.me/api/portraits/men/17.jpg',
  ),
  Message(
    userName: 'blackWindow',
    time: '3:30 PM',
    snippet: 'WOW! this soul world is amazing, but miss you guys.',
    avator: 'https://randomuser.me/api/portraits/women/14.jpg',
  ),
  Message(
    userName: 'spiderMan',
    time: '2:30 PM',
    snippet: 'I\'m exposed now. Please help me to hide my identity.',
    avator: 'https://randomuser.me/api/portraits/men/10.jpg',
  ),
  Message(
    userName: 'hulk',
    time: '1:30 PM',
    snippet: 'HULK SMASH!!',
    avator: 'https://randomuser.me/api/portraits/men/1.jpg',
  ),
  Message(
    userName: 'thor',
    time: '12:30 PM',
    snippet: 'I\'m hitting gym bro. I\'m immune to mortal deseases. Are you coming?',
    avator: 'https://randomuser.me/api/portraits/men/4.jpg',
  ),
  Message(
    userName: 'scarletWitch',
    time: '11:30 AM',
    snippet: 'My twins are giving me headache. Give me some time please.',
    avator: 'https://randomuser.me/api/portraits/women/3.jpg',
  ),
  Message(
    userName: 'captainMarvel',
    time: '12:45 AM',
    snippet: 'You\'re always special to me nick! But you know my struggle.',
    avator: 'https://randomuser.me/api/portraits/women/7.jpg',
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
static List<Message> messages = [
  Message(
    userName: 'ironMan',
    time: '5:30 PM',
    snippet: 'Hey dude! Event dead I\'m the hero. Love you 3000 guys.',
    avator: 'https://randomuser.me/api/portraits/women/1.jpg',
  ),
  Message(
    userName: 'currentUser',
    time: '4:30 PM',
    snippet: 'We could surely handle this mess much easily if you were here.',
    avator: 'https://randomuser.me/api/portraits/men/5.jpg',
  ),
  Message(
    userName: 'ironMan',
    time: '3:45 PM',
    snippet: 'Take care of peter. Give him all the protection & his aunt.',
    avator: 'https://randomuser.me/api/portraits/women/8.jpg',
  ),
  Message(
    userName: 'ironMan',
    time: '3:15 PM',
    snippet: 'I\'m always proud of her and blessed to have both of them.',
    avator: 'https://randomuser.me/api/portraits/men/25.jpg',
  ),
  Message(
    userName: 'currentUser',
    time: '2:30 PM',
    snippet: 'But that spider kid is having some difficulties due his identity reveal by a blog called daily bugle.',
    avator: 'https://randomuser.me/api/portraits/women/24.jpg',
  ),
  Message(
    userName: 'currentUser',
    time: '2:30 PM',
    snippet: 'Pepper & Morgan is fine. They\'re strong as you. Morgan is a very brave girl, one day she\'ll make you proud.',
    avator: 'https://randomuser.me/api/portraits/men/4.jpg',
  ),
  Message(
    userName: 'currentUser',
    time: '2:30 PM',
    snippet: 'Yes Tony!',
    avator: 'https://randomuser.me/api/portraits/men/30.jpg',
  ),
  Message(
    userName: 'ironMan',
    time: '2:00 PM',
    snippet: 'I hope my family is doing well.',
    avator: 'https://randomuser.me/api/portraits/men/20.jpg',
  ),
];
}
