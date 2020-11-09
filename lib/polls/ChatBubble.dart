import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatefulWidget {
  String message;
  String sender; // either "bot" or "user"
  String pollType;
  ChatBubble(
      {@required this.message, @required this.sender, @required this.pollType});

  @override
  _ChatBubbleState createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  bool sentByMe = false;

  @override
  void initState() {
    if (widget.sender == "user") {
      sentByMe = true;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: (sentByMe == true)
          ? EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
            left: 80.0,
            )
          : EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
            ),


      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
              bottomRight: sentByMe ? Radius.zero : Radius.circular(40),
              bottomLeft: sentByMe ? Radius.circular(40) : Radius.zero)),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container()),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                color: sentByMe
                    ? Colors.yellow.shade700
                    : Theme.of(context).accentColor,
                child: Text(
                  sentByMe ? "Your Reply" : widget.pollType,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.message,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
