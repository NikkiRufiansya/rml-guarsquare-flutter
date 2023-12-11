import 'package:flutter/material.dart';
//import 'package:kommunicate_flutter/kommunicate_flutter.dart';
import 'package:rml_guardsqure_flutter/assets/colors.dart';
import 'package:rml_guardsqure_flutter/view/agenda_screen.dart';
import 'package:rml_guardsqure_flutter/view/home_screen.dart';
import 'package:rml_guardsqure_flutter/view/login_screen.dart';
import 'package:rml_guardsqure_flutter/view/ticketing_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selectedIndex = 3;

  Future<void> logout() async {
    // final prefs = await SharedPreferences.getInstance();
    // KommunicateFlutterPlugin.logout();
    // await prefs.remove(
    //     "jwt_token"); // Menghapus token JWT atau data otentikasi lainnya
    // Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => const LoginScrenn(),
    //     ));
  }

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
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const TicketingScreen(),
            ));
        break;
      case 3:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Align(alignment: Alignment.topLeft, child: Text("Profile")),
        backgroundColor: secondary2,
      ),
      body: Column(children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: secondary1),
          child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: CircleAvatar(
                    radius: 60.0,
                    backgroundImage: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/1077/1077114.png',
                    ),
                    backgroundColor: Colors.blue,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Nama : Nikky Rufiansya",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Position: Technical",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ]),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            logout();
          },
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.red),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            width: MediaQuery.sizeOf(context).width,
            child: Center(
                child: Text(
              "Logout",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            )),
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/home.png")
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/agenda.png")
            ),
            label: 'Agenda',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/ticketing.png")
            ),
            label: 'Ticketing',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/user.png")
            ),
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
