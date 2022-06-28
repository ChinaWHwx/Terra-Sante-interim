import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/homepage/My/my.controller.dart';
import 'package:flutter_application_1/shared/widgets/drawer/navigation_drawer.dart';
import 'package:get/get.dart';

class MyView extends GetView<MyController> {
  const MyView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        drawer: NavigationDrawer(),
        bottomNavigationBar: ConvexAppBar(items: const [
          TabItem(icon: Icons.home, title: 'Acceuil'),
          TabItem(icon: Icons.search, title: 'Explorer'),
          TabItem(icon: Icons.calendar_month, title: 'Calenderier'),
          TabItem(icon: Icons.work, title: 'Mission'),
          TabItem(icon: Icons.person, title: 'Moi'),
        ], onTap: (int i) => controller.navigate(i)),
        appBar: AppBar(
          title: const Text("à propos de moi"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: SingleChildScrollView(
              child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Row(
                        children: const [
                          Icon(Icons.people),
                          Text("Mon profil"),
                        ],
                      ),
                      onPressed: () => controller.navigateToProfile(),
                    ),
                    TextButton(
                      child: Row(
                        children: const [
                          Icon(Icons.work),
                          Text("Mes expériences"),
                        ],
                      ),
                      onPressed: () => controller.navigateToExperience(),
                    ),
                    TextButton(
                      child: Row(
                        children: const [
                          Icon(Icons.light_mode_sharp),
                          Text("Mes compétences"),
                        ],
                      ),
                      onPressed: () => controller.navigateToAbility(),
                    ),
                    TextButton(
                      child: Row(
                        children: const [
                          Icon(Icons.file_copy),
                          Text("Mes documents"),
                        ],
                      ),
                      onPressed: () => controller.navigateToDocument(),
                    ),
                    TextButton(
                      child: Row(
                        children: const [
                          Icon(Icons.logout),
                          Text("Déconnection"),
                        ],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Attention'),
                                content: const Text('Vous êtes sûr？'),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('Annuler'),
                                    onPressed: () {
                                      controller.navigateToMy();
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('Confirmer'),
                                    onPressed: () {
                                      controller.navigateToSignIn();
                                    },
                                  ),
                                ],
                              );
                            });
                      },
                    ),
                  ]),
            ),
          )),
        ));
  }
}
