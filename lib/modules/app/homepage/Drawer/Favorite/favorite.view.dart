import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/homepage/Drawer/Favorite/favorite.controller.dart';
import 'package:get/get.dart';

class FavoriteView extends GetView<FavotiteController> {
  const FavoriteView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      //Code snippet of a card widget//

      /** Card Widget **/
      child: Card(
        elevation: 50,
        shadowColor: Colors.black,
        color: Colors.greenAccent[100],
        child: SizedBox(
          width: 300,
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green[500],
                  radius: 108,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg"),
                    //NetworkImage
                    radius: 100,
                  ), //CircleAvatar
                ), //CirclAvatar
                const SizedBox(
                  height: 10,
                ), //SizedBox
                Text(
                  'GeeksforGeeks',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.green[900],
                    fontWeight: FontWeight.w500,
                  ), //Textstyle
                ), //Text
                const SizedBox(
                  height: 10,
                ), //SizedBox
                const Text(
                  '123',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.green,
                  ), //Textstyle
                ), //Text
                const SizedBox(
                  height: 10,
                ), //SizedBox
                SizedBox(
                  width: 80,
                  child: ElevatedButton(
                    onPressed: () => null,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: const [
                          Icon(Icons.touch_app),
                          Text('Visit'),
                        ],
                      ), //Row
                    ), //Padding
                  ), //RaisedButton
                ) //SizedBox
              ],
            ), //Column
          ), //Padding
        ), //SizedBox
      ), //Card
    )));
  }
}
