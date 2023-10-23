import 'package:flutter/material.dart';
import 'package:rml_guardsqure_flutter/assets/colors.dart';
import 'package:rml_guardsqure_flutter/view/home_screen.dart';
import 'package:rml_guardsqure_flutter/view/profile_screen.dart';
import 'package:rml_guardsqure_flutter/view/ticketing_screen.dart';

class AgendaScreen extends StatefulWidget {
  const AgendaScreen({super.key});

  @override
  State<AgendaScreen> createState() => _AgendaScreenState();
}

class _AgendaScreenState extends State<AgendaScreen> {
  int selectedIndex = 1;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ));
        break;
      case 1:
        break;
      case 2:
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const TicketingScreen(),
            ));
        break;
      case 3:
       Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileScreen(),
            ));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
            alignment: Alignment.topLeft, child: Text("Agenda POC")),
        backgroundColor: secondary2,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: secondary2,
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "POC Guard Square BNI",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Text(
                    "Tipe Agenda : POC",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Waktu Agenda : 10/10/2023 - 17/10/2023",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Customer : BNI",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Product : GuardSquare",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "PIC : Putra",
                  ),
                ],
              ));
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Agenda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Ticketing',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: primary1,
      ),
    );
  }
}
