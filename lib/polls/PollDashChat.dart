import 'package:dash_chat/dash_chat.dart';
import 'package:flutter/material.dart';

class PollDashChat extends StatefulWidget {
  @override
  _PollDashChatState createState() => _PollDashChatState();
}

class _PollDashChatState extends State<PollDashChat> {
  final GlobalKey<DashChatState> _chatViewKey = GlobalKey<DashChatState>();

  final ChatUser user = ChatUser(
    name: "User",
    uid: "001",
  );

  final ChatUser ureport = ChatUser(
    name: "U-Report",
    uid: "000",
  );

  final List<ChatMessage> messages =
      List<ChatMessage>(); // needs to be stored outside this widget
  var i = 0;

  @override
  void initState() {
    super.initState();
    initHardcodedMessages(); // Preliminary testing
  }

  void initHardcodedMessages() {
    ChatMessage msg_ureport1 = ChatMessage(
      text:
          "How often do you wear a face mask? \n A) Only when I’m talking to someone \n B) Only when I’m asked to wear it \n Reply with either A or B.",
      user: ureport,
      createdAt: DateTime.now(),
    );
    ChatMessage msg_user1 = ChatMessage(
      text: "A",
      user: user,
      createdAt: DateTime.now(),
    );
    ChatMessage msg_ureport2 = ChatMessage(
      text:
          "Thank you for completing our Coronavirus poll. We will update you when more polls come out!",
      user: ureport,
      createdAt: DateTime.now(),
    );

    messages.add(msg_ureport1);
    messages.add(msg_user1);
    messages.add(msg_ureport2);
  }

  void onSend(ChatMessage message) async {
    // print(message.toJson());
    messages.add(message);
    String reply = message.text;
    print("User reply: " + reply);
    // TODO: Send to rapidpro

    /* if (i == 0) {
      systemMessage();
      Timer(Duration(milliseconds: 600), () {
        systemMessage();
      });
    } else {
      systemMessage();
    }*/
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DashChat(
        key: _chatViewKey,
        inverted: false,
        height: 50,
        onSend: onSend,
        sendOnEnter: true,
        // textInputAction: TextInputAction.send,
        user: user,
        inputDecoration:
            InputDecoration.collapsed(hintText: "Your reply here..."),
        dateFormat: DateFormat('yyyy-MMM-dd'),
        timeFormat: DateFormat('HH:mm'),
        messages: messages,
        showUserAvatar: false,
        showAvatarForEveryMessage: false,
        scrollToBottom: true,
        onPressAvatar: (ChatUser user) {
          print("OnPressAvatar: ${user.name}");
        },
        onLongPressAvatar: (ChatUser user) {
          print("OnLongPressAvatar: ${user.name}");
        },
        messageContainerPadding: EdgeInsets.only(left: 5.0, right: 5.0),
        alwaysShowSend: true,
        inputTextStyle: TextStyle(fontSize: 16.0),
        inputContainerStyle: BoxDecoration(
          border: Border.all(width: 0.0),
          color: Colors.white,
        ),
      ),
    );
  }

  // Dash chat example code
/* return Scaffold(
      appBar: AppBar(
        title: Text("Chat App"),
      ),
      body: StreamBuilder(
          stream: Firestore.instance.collection('messages').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Theme.of(context).primaryColor,
                  ),
                ),
              );
            } else {
              List<DocumentSnapshot> items = snapshot.data.documents;
              var messages =
                  items.map((i) => ChatMessage.fromJson(i.data)).toList();
              return DashChat(
                key: _chatViewKey,
                inverted: false,
                onSend: onSend,
                sendOnEnter: true,
                textInputAction: TextInputAction.send,
                user: user,
                inputDecoration:
                    InputDecoration.collapsed(hintText: "Add message here..."),
                dateFormat: DateFormat('yyyy-MMM-dd'),
                timeFormat: DateFormat('HH:mm'),
                messages: messages,
                showUserAvatar: false,
                showAvatarForEveryMessage: false,
                scrollToBottom: true,
                onPressAvatar: (ChatUser user) {
                  print("OnPressAvatar: ${user.name}");
                },
                onLongPressAvatar: (ChatUser user) {
                  print("OnLongPressAvatar: ${user.name}");
                },
                inputMaxLines: 5,
                messageContainerPadding: EdgeInsets.only(left: 5.0, right: 5.0),
                alwaysShowSend: true,
                inputTextStyle: TextStyle(fontSize: 16.0),
                inputContainerStyle: BoxDecoration(
                  border: Border.all(width: 0.0),
                  color: Colors.white,
                ),
                onQuickReply: (Reply reply) {
                  setState(() {
                    messages.add(ChatMessage(
                        text: reply.value,
                        createdAt: DateTime.now(),
                        user: user));

                    messages = [...messages];
                  });

                  Timer(Duration(milliseconds: 300), () {
                    _chatViewKey.currentState.scrollController
                      ..animateTo(
                        _chatViewKey.currentState.scrollController.position
                            .maxScrollExtent,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );

                    if (i == 0) {
                      systemMessage();
                      Timer(Duration(milliseconds: 600), () {
                        systemMessage();
                      });
                    } else {
                      systemMessage();
                    }
                  });
                },
                onLoadEarlier: () {
                  print("laoding...");
                },
                shouldShowLoadEarlier: false,
                showTraillingBeforeSend: true,
                trailing: <Widget>[
                  IconButton(
                    icon: Icon(Icons.photo),
                    onPressed: () async {
                      File result = await ImagePicker.pickImage(
                        source: ImageSource.gallery,
                        imageQuality: 80,
                        maxHeight: 400,
                        maxWidth: 400,
                      );

                      if (result != null) {
                        final StorageReference storageRef =
                            FirebaseStorage.instance.ref().child("chat_images");

                        StorageUploadTask uploadTask = storageRef.putFile(
                          result,
                          StorageMetadata(
                            contentType: 'image/jpg',
                          ),
                        );
                        StorageTaskSnapshot download =
                            await uploadTask.onComplete;

                        String url = await download.ref.getDownloadURL();

                        ChatMessage message =
                            ChatMessage(text: "", user: user, image: url);

                        var documentReference = Firestore.instance
                            .collection('messages')
                            .document(DateTime.now()
                                .millisecondsSinceEpoch
                                .toString());

                        Firestore.instance.runTransaction((transaction) async {
                          await transaction.set(
                            documentReference,
                            message.toJson(),
                          );
                        });
                      }
                    },
                  )
                ],
              );
            }
          }),
    ); */

/* void systemMessage() {
    Timer(Duration(milliseconds: 300), () {
      if (i < 6) {
        setState(() {
          messages = [...messages, m[i]];
        });
        i++;
      }
      Timer(Duration(milliseconds: 300), () {
        _chatViewKey.currentState.scrollController
          ..animateTo(
            _chatViewKey.currentState.scrollController.position.maxScrollExtent,
            curve: Curves.easeOut,
            duration: const Duration(milliseconds: 300),
          );
      });
    });
  } */
}
