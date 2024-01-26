import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/first_page.dart';
import '../pages/second_page.dart';
import '../pages/third_page.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final RxInt selected = 0.obs;
  List<Widget> items = [
    Firstpage(controller: FirstpageController()),
    Secondpage(controller: SecondpageController()),
    Stamp(controller: StampController()),
    Chat(controller: ChatController()),
    Thirdpage(controller: ThirdpageController()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected.value,
        onTap: (index) {
          selected.value = index;
        },
        selectedLabelStyle: TextStyle(color: Colors.black), // Label color when selected
        unselectedLabelStyle: TextStyle(color: Colors.black), // Label color when unselected
        selectedItemColor: Colors.orangeAccent, // Color of the selected item's icon
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: selected.value == 0 ? Colors.orangeAccent : Colors.black),
            label: "さがす",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard_sharp, color: selected.value == 1 ? Colors.orangeAccent : Colors.black),
            label: "お仕事",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner, color: selected.value == 2 ? Colors.orangeAccent : Colors.black),
            label: "打刻する",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.textsms_outlined, color: selected.value == 3 ? Colors.orangeAccent : Colors.black),
            label: "チャット",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: selected.value == 4 ? Colors.orangeAccent : Colors.black),
            label: "マイページ",
          ),
        ],
      ),
      body: Obx(() => items[selected.value]),
    );
  }
}

class Home extends StatelessWidget {
  final HomeController controller;

  Home({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: BottomNavigation(),
      ),
    );
  }
}

class Work extends StatelessWidget {
  final WorkController controller;

  Work({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Text('Work'),
      ),
    );
  }
}

class Stamp extends StatelessWidget {
  final StampController controller;

  Stamp({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Center(
        child: Text('Stamp'),
      ),
    );
  }
}

class Chat extends StatelessWidget {
  final ChatController controller;

  Chat({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: Text('Chat'),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  final ProfileController controller;

  Profile({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: Text('Profile'),
      ),
    );
  }
}

class HomeController extends GetxController {
}

class WorkController extends GetxController {
}

class StampController extends GetxController {
}

class ChatController extends GetxController {
}

class ProfileController extends GetxController {
}
