import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:latkuis_172/models/game_store_model.dart';

class DetailPage extends StatelessWidget {
  final GameStore game;

  const DetailPage({super.key, required this.game});

  Future<void> _launchWebsite() async {
    final Uri url = Uri.parse(game.linkStore);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      // kalau gagal, jangan crash. hanya print di console
      print("Tidak bisa membuka link: ${game.linkStore}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(game.name)),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              game.imageUrls[0],
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(game.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("Rilis: ${game.releaseDate}"),
            Text("Harga: ${game.price}"),
            SizedBox(height: 10),
            Text(game.about),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _launchWebsite,
              child: Text("Buka Link Store"),
            ),
          ],
        ),
      ),
    );
  }
}

canLaunchUrl(Uri url) {
}

launchUrl(Uri url) {
}
