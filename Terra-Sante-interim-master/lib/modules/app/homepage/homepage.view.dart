import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/homepage/homepage.controller.dart';
import 'package:flutter_application_1/shared/widgets/drawer/navigation_drawer.dart';
import 'package:get/get.dart';

class HomepageView extends GetView<HomepageController> {
  const HomepageView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavigationDrawer(),
      bottomNavigationBar: ConvexAppBar(items: const [
        TabItem(
          icon: Icons.home,
          title: 'Acceuil',
        ),
        TabItem(icon: Icons.search, title: 'Explorer'),
        TabItem(icon: Icons.calendar_month, title: 'Calenderier'),
        TabItem(icon: Icons.work, title: 'Mission'),
        TabItem(icon: Icons.people, title: 'Moi'),
      ], onTap: (int i) => controller.navigate(i)),
    );
  }
}
