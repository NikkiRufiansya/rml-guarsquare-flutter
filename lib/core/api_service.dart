import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rml_guardsqure_flutter/view/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/games_model.dart';

class ApiService {
  final Dio dio = Dio();
  final String baseUrl = "https://0af4-36-69-100-86.ngrok-free.app/rest-api-demo/";

  Future<void> performLogin(
      String email, String password, BuildContext context) async {
    final loginData = {
      "email": email,
      "password": password,
    };

    try {
      final response = await dio.post("$baseUrl/login.php", data: loginData);

      if (response.statusCode == 200) {
        final jwtToken = response.data["access_token"];
        final dataEmail = response.data['data']["email"];
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString("jwt_token", jwtToken);
        prefs.setString("user_email", dataEmail);

        print(dataEmail);

        print("login berhasil");
        print("response data : ${response.data}");

        // Navigasi ke halaman HomeScreen setelah login berhasil
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } else {
        print("login gagal");
        print("response data : ${response.data}");
      }
    } catch (e) {
      print("terjadi kesalahan : ${e}");
    }
  }

  Future<List<Game>> fetchGames(String jwtToken) async {
    try {
      final response = await dio.get(
        "$baseUrl/games.php",
        options: Options(
          headers: {
            "Authorization": "Bearer $jwtToken",
          },
        ),
      );

      if (response.statusCode == 200) {
        final jsonData = response.data["data"];
        return List<Game>.from(jsonData.map((game) => Game.fromJson(game)));
      } else {
        throw Exception("Gagal mengambil data game");
      }
    } catch (e) {
      throw Exception("Terjadi kesalahan: $e");
      
    }
  }
}
