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
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailProduct(
                              title: "Acunetix",
                              link: 'https://www.acunetix.com/',
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
                            child: Image.asset("assets/Acunetix_logo.png"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailProduct(
                              title: "Invicti",
                              link: 'https://www.invicti.com/',
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
                            child: Image.asset("assets/invicti_logo.png"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailProduct(
                              title: "Dexguard",
                              link: 'https://www.guardsquare.com/dexguard',
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
                          const SizedBox(
                            height: 15,
                          ),
                          Image.asset("assets/dex-logo.png", width: 100,),
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
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailProduct(
                              title: "IxGuard",
                              link: 'https://www.guardsquare.com/ixguard',
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
                          const SizedBox(
                            height: 15,
                          ),
                          Image.asset("assets/ix-logo.png", width: 100,),
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
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailProduct(
                              title: "Appknox",
                              link: 'https://www.appknox.com/',
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
                            padding: const EdgeInsets.only(top: 50),
                            child: Image.asset("assets/appknox.png"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                       Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailProduct(
                              title: "Sophos",
                              link: 'https://www.sophos.com/en-us',
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
                            padding: const EdgeInsets.all(0.0),
                            child: Image.asset("assets/sophos.png", width: 150,)
                          )
                        ],
                      ),
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
            icon: ImageIcon(AssetImage("assets/home.png")),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/agenda.png")),
            label: 'Agenda',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/ticketing.png")),
            label: 'Ticketing',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/user.png")),
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
