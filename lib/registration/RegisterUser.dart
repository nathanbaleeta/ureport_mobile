// import 'dart:async';
// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:ureport_app/registration/User.dart';

// class RegisterUser {
//   static final String rapidPro =
//       "https://app.rapidpro.io/c/fcm/1dc76b95-1013-4c82-8b0f-c05600f0b18c/register";

//   registerUser(String token) async {
//     // var data = await http.get(organizationURL);
//     // var jsonData = json.decode(data.body);
//     // print(jsonData);

//     // List<Story> stories = [];

//     // for(var u in jsonData['results']){
//     //   Story story = Story(u["id"], u["title"], u["category"]["image_url"]);
//     //   stories.add(story);
//     // }

//     // print(stories.length);

//     // return stories;

//     User user = User(token, null);

//     Map<String, String> headers = {
//       HttpHeaders.contentTypeHeader: 'application/json',
//       HttpHeaders.authorizationHeader:
//           'Token 9a3970ab2bb7def48c69bce852f93b80d2d02d61'
//     };
//     Map<String, String> json = user.contact;

//     http.Response response =
//         await http.post(rapidPro, headers: headers, body: json);
//   }
// }
