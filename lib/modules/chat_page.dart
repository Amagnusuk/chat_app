import 'package:chat_app/components/chat.dart';
import 'package:chat_app/models/chat_users.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(text: "Jane Russel", secondaryText: "Awesome Setup", image: "assets/images/girls/img_1.jpeg", time: "Now"),
    ChatUsers(text: "Glady´s Murphy", secondaryText: "That´s Great", image: "assets/images/girls/img_2.jpeg", time: "Yesterday"),
    ChatUsers(text: "Bela Pocker", secondaryText: "Hey where are you?", image: "assets/images/girls/img_3.jpeg", time: "31 Mar"),
    ChatUsers(text: "Divine Mary", secondaryText: "Busy! Call me in 20 mins", image: "assets/images/girls/img_4.jpeg", time: "28 Jan"),
    ChatUsers(text: "Anuarite Rocket", secondaryText: "Thank you! It´s awesome.", image: "assets/images/girls/img_5.jpeg", time: "23 April"),
    ChatUsers(text: "Debra Hawkins", secondaryText: "Can you, please, chare the file?", image: "assets/images/girls/img_6.jpeg", time: "17 Jun"),
    ChatUsers(text: "Lirica Johnson", secondaryText: "I like it", image: "assets/images/girls/img_7.jpeg", time: "10 min ago"),
    ChatUsers(text: "Suzan Lorry", secondaryText: "We´ll talk later!", image: "assets/images/girls/img_8.jpeg", time: "1 hour ago"),
    ChatUsers(text: "Andreia Christine", secondaryText: "I can´t beleive you!", image: "assets/images/girls/img_9.jpeg", time: "Monday at 12 p.m"),
    ChatUsers(text: "Grace Blue", secondaryText: "There wasn´t any class today!", image: "assets/images/girls/img_10.jpeg", time: "28 Feb")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(//PERMITE FAZER O SCROLL NA TELA
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Chats",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.pink,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "New",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            //CAIXA DE TEXTO E A SUA DEVIDA DECORAÇÃO
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade400,
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey.shade100))),
              ),
            ),
            //LISTA DE FOTOS (LIST VIEW)
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ChatUsersList(
                  text: chatUsers[index].text,
                  secondaryText: chatUsers[index].text,
                  image: chatUsers[index].image,
                  time: chatUsers[index].time, 
                  isMessageRead: (index == 0 || index == 3 || index == 6 || index == 9)?true:false,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
