import 'package:flutter/material.dart';
import 'package:ureport_app/polls/ChatBubble.dart';

class PollChat extends StatefulWidget {
  @override
  _PollChatState createState() => _PollChatState();
}

class _PollChatState extends State<PollChat> {
  TextEditingController messageController = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        children: [
          ChatBubble(
            message:
                "How often do you wear a face mask? \n A) Only when I’m talking to someone \n B) Only when I’m asked to wear it \n Reply with either A or B.",
            sender: "bot",
            pollType: "Face Mask Poll",
          ),
          SizedBox(
            height: 10,
          ),
          ChatBubble(
            message: "A",
            sender: "user",
            pollType: null,
          ),
          SizedBox(height: 10),
          ChatBubble(
            message:
                "Thank you for completing our Coronavirus poll. We will update you when more polls come out!",
            sender: "bot",
            pollType: "Face Mask Poll",
          ),
          Expanded(child: Container()),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                      hintText: "Type reply...",
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        sendMessage(); // TODO not implemented
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                            color: Colors.yellow.shade600,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text("Submit"),
                      ),
                    ),
                    SizedBox(width: 10)
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  sendMessage() {
    // TODO
  }
}
