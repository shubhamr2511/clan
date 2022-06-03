import 'package:flutter/material.dart';

const Color appAccent = Color(0xffe9bb47);
const Color red = Color(0xffc0275e);

class AppIcons {
  static Image armour = Image.asset(
    "assets/armour.png",
  );
  static Image home = Image.asset(
    "assets/home.png",
    fit: BoxFit.fitWidth,
  );
  static Image social = Image.asset(
    "assets/social.png",
    fit: BoxFit.fitWidth,
  );
  static Image leaderboard = Image.asset(
    "assets/leaderboard.png",
    fit: BoxFit.fitWidth,
  );
  static Image star = Image.asset(
    "assets/star.png",
    fit: BoxFit.fitWidth,
  );
}

divider() {
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 16),
    child: Divider(
      thickness: 2,
      color: Colors.white,
    ),
  );
}

detail(Widget param, Widget value) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
              flex: 9,
              child: Row(
                children: [
                  param,
                ],
              )),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                value,
              ],
            ),
          )
        ],
      ),
    );

class DialogScaff extends StatelessWidget {
  final String name;
  final Widget body;
  const DialogScaff(this.name, {required this.body, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close)),
        title: Text(name, style: const TextStyle(fontSize: 18)),
        backgroundColor: Colors.black,
      ),
    );
  }
}

liveClanActivityTile(text) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: AspectRatio(
        aspectRatio: 19 / 7,
        child: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              "assets/gradient.jpg",
              fit: BoxFit.cover,
            )),
            Positioned.fill(
                child: Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                  child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              )),
            )),
          ],
        ),
      ),
    );
