import 'package:flutter/material.dart';
import 'package:rml_guardsqure_flutter/assets/colors.dart';
import 'package:rml_guardsqure_flutter/view/agenda_screen.dart';
import 'package:rml_guardsqure_flutter/view/detail_product_screen.dart';
import 'package:rml_guardsqure_flutter/view/profile_screen.dart';
import 'package:rml_guardsqure_flutter/view/ticketing_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:kommunicate_flutter/kommunicate_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

    switch (index) {
      case 0:
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
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileScreen(),
            ));
        break;
    }
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(
        "jwt_token"); // Menghapus token JWT atau data otentikasi lainnya
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(alignment: Alignment.topLeft, child: Text('RML')),
        backgroundColor: secondary2,
        actions: const [
          // PopupMenuButton(
          //   onSelected: (String result) {
          //     print("Pilihan yang dipilih: $result");
          //     if (result == "logout") {
          //       logout();
          //       Navigator.pushReplacement(
          //         context,
          //         MaterialPageRoute(builder: (context) => LoginScrenn()),
          //       );
          //     }
          //   },
          //   itemBuilder: (BuildContext context) {
          //     return <PopupMenuEntry<String>>[
          //       PopupMenuItem<String>(
          //         value: 'logout',
          //         child: Text('Logout'),
          //       ),
          //     ];
          //   },
          // )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      final link = "https://www.acunetix.com/";
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailProduct(
                              link: link,
                            ),
                          ));
                    },
                    child: Container(
                      height: 160,
                      margin: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: secondary1),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/a/a4/Acunetix_logo.png",
                              width: 130,
                              height: 130,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 160,
                    margin: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: secondary1),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            "https://branditechture.agency/brand-logos/wp-content/uploads/wpdm-cache/Invicti-900x0.png",
                            width: 150,
                            height: 140,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 160,
                    margin: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: secondary1),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Image.network(
                          "https://www.guardsquare.com/hubfs/nav-icon_dexguard-2-1.png",
                          width: 100,
                          height: 100,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "DexGuard",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 160,
                    margin: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: secondary1),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Image.network(
                          "https://www.guardsquare.com/hubfs/nav-icon_ixguard_2.png",
                          width: 100,
                          height: 100,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "IxGuard",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 160,
                    margin: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: secondary1),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/6/6d/Appknox_Logo.png",
                            width: 130,
                            height: 130,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 160,
                    margin: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: secondary1),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            "https://download.logo.wine/logo/Sophos/Sophos-Logo.wine.png",
                            width: 150,
                            height: 140,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: secondary2,
        child: Icon(Icons.message),
        onPressed: () async {
          
          // dynamic user = {
          //   'userId': "visitor",
          //   'password': "",
          //   'appId': "e4ca1b65908059f1b8440854be4ae7fa",
          // };

          // dynamic conversationObject = {
          //   'appId':
          //       'e4ca1b65908059f1b8440854be4ae7fa', // The [APP_ID](https://dashboard.kommunicate.io/settings/install) obtained from kommunicate dashboard.
          //   'withPreChat': true
          // };
          // KommunicateFlutterPlugin.buildConversation(user)
          //     .then((clientConversationId) {
          //   print("Conversation builder success : $clientConversationId");
          // }).catchError((error) {
          //   print("Conversation builder error : " + error.toString());
          // });

         

          // KommunicateFlutterPlugin.logout();
        },
      ),
    );
  }
}
