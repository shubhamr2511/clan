import 'package:clan/componentts.dart';
import 'package:clan/helper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clan',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
            headline1: TextStyle(color: appAccent,fontWeight: FontWeight.bold),
            headline2: TextStyle(color: appAccent,fontWeight: FontWeight.bold),
            headline3: TextStyle(color: appAccent,fontWeight: FontWeight.bold),
            headline4: TextStyle(color: appAccent,fontWeight: FontWeight.bold),
            headline5: TextStyle(color: appAccent,fontWeight: FontWeight.bold),
            headline6: TextStyle(color: appAccent,fontWeight: FontWeight.bold),
            subtitle1: TextStyle(color: appAccent,fontWeight: FontWeight.bold),
            subtitle2: TextStyle(color: appAccent,fontWeight: FontWeight.bold),
            bodyText1: TextStyle(color: appAccent,fontWeight: FontWeight.bold),
            bodyText2: TextStyle(color: appAccent,fontWeight: FontWeight.bold),
            caption: TextStyle(color: appAccent,fontWeight: FontWeight.bold),
            button: TextStyle(color: appAccent,fontWeight: FontWeight.bold),
            overline: TextStyle(color: appAccent,fontWeight: FontWeight.bold)),

        // primarySwatch: Colors.,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: [
          clanImage(),
          divider(),
          achievements(),
           divider(),
          pastFeaturedPreformance(context),
          divider(),
          liveClanActivities(context),
           divider(),
           clanDiscussion(context),
            divider(),
           clanMembers(context)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        backgroundColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: index,
        onTap: (val) {
          setState(() {
            index = val;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: SizedBox(
                child: AppIcons.home,
                width: MediaQuery.of(context).size.width * 0.09,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: AppIcons.star),
              label: 'star'),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: AppIcons.leaderboard),
              label: 'leaderboard'),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: AppIcons.social),
              label: 'social'),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://media-exp2.licdn.com/dms/image/C4E03AQFiFXySt7or9A/profile-displayphoto-shrink_400_400/0/1517680497395?e=1659571200&v=beta&t=7H2RQkw6R1W-I3GDLWM2Ru-aN6p6D-ff4VVkIi5bB5U"))),
              label: 'profile'),
        ],
      ),
    );
  }
}
