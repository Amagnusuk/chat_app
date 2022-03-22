import 'package:chat_app/components/chat_detail_page_appbar.dart';
import 'package:chat_app/models/chat_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ChatBubble extends StatefulWidget {
  ChatMessage chatMessage;
  ChatBubble({required this.chatMessage});

  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      child: Align(
        alignment: (
          widget.chatMessage.type == MessageType.Receiver 
            ? Alignment.topLeft
            : Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: (widget.chatMessage.type == MessageType.Receiver 
              ? Colors.white 
              : Colors.grey.shade400),
          ),
          padding: EdgeInsets.all(16),
          child: Text(widget.chatMessage.message),
      ),
      ),
    );
  }
}
