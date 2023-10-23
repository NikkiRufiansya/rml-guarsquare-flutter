import 'package:flutter/material.dart';
import 'package:rml_guardsqure_flutter/assets/colors.dart';
import 'package:rml_guardsqure_flutter/view/home_screen.dart';
import 'package:rml_guardsqure_flutter/view/profile_screen.dart';

import 'agenda_screen.dart';

class TicketingScreen extends StatefulWidget {
  const TicketingScreen({super.key});

  @override
  State<TicketingScreen> createState() => _TicketingScreenState();
}

class _TicketingScreenState extends State<TicketingScreen> {
  int selectedIndex = 2;
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
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const AgendaScreen(),
            ));
        break;
      case 2:
       
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
        backgroundColor: secondary2,
        title: const Align(
          alignment: Alignment.topLeft,
          child: Text("Ticketing"),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: secondary2),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Callback Dexguard flutter",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Divider(
                  color: Colors.black,
                ),
                Text(
                    "Subject : Open Ticket How to Implement callback in flutter"),
                SizedBox(height: 5),
                Text("Ticket Open : 10/10/2023"),
                SizedBox(height: 5),
                Text("Ticket Closed : 17/10/2023"),
                SizedBox(height: 5),
                Text("Customer : BNI"),
                SizedBox(height: 5),
                Text("Product : GuardSquare"),
                SizedBox(height: 5),
                Text("Lisensi : com.rmldemo.guardsquare"),
                SizedBox(height: 5),
                Text("Nama : Nikky Rufiansya")
              ],
            ),
          );
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
