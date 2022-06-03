import 'package:clan/helper.dart';
import 'package:flutter/material.dart';

clanImage() => Container(
      decoration:
          BoxDecoration(border: Border.all(width: 2.0, color: appAccent)),
      child: AspectRatio(
        aspectRatio: 238 / 211,
        child: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              "assets/clan.jpg",
              fit: BoxFit.cover,
            )),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                color: Colors.black.withOpacity(0.6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Clan name: Lorem Ipsum",
                          style: TextStyle(color: Colors.white, fontSize: 20, )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("28 members, 5 online",
                          style: TextStyle(color: Colors.white, fontSize: 18, )),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

achievements() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Achievements",
            style: TextStyle(fontSize: 22, ),
          ),
          detail(
            const Text("Current league", style: TextStyle(color: red, fontSize: 18, )),
            SizedBox(height: 90, child: AppIcons.armour),
          ),
          detail(
            const Text("League ranking", style: TextStyle(color: red, fontSize: 18, )),
            const Text("11th",
                style: TextStyle(fontSize: 36, )),
          ),
          detail(
            const Text("Experience", style: TextStyle(color: red, fontSize: 18, )),
            const Text("2000 xp",
                style: TextStyle(
                  fontSize: 25, 
                )),
          ),
          detail(
            const Text("# of wins", style: TextStyle(color: red, fontSize: 18, )),
            const Text("3",
                style: TextStyle(
                  fontSize: 25, 
                )),
          )
        ],
      ),
    );

pastFeaturedPreformance(context) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Past featured performances\n",
          style: TextStyle(fontSize: 22, ),
        ),
        Column(children: [
          Row(children: [
            SizedBox(
              height:120,
              width: 120,
              child: Image.network(
                  "https://media-exp2.licdn.com/dms/image/C4E03AQFiFXySt7or9A/profile-displayphoto-shrink_400_400/0/1517680497395?e=1659571200&v=beta&t=7H2RQkw6R1W-I3GDLWM2Ru-aN6p6D-ff4VVkIi5bB5U",
                  fit: BoxFit.fitWidth),
            ),
            const SizedBox(
              width: 30,
            ),
            const Expanded(
                child: Text("Priya in International Debating League",
                    style: TextStyle(color: red))),
          ]),
          const SizedBox(height: 20),
          Row(children: [
            SizedBox(
              height:120,
              width: 120,
              child: Image.network(
                  "https://media-exp2.licdn.com/dms/image/C4E03AQFiFXySt7or9A/profile-displayphoto-shrink_400_400/0/1517680497395?e=1659571200&v=beta&t=7H2RQkw6R1W-I3GDLWM2Ru-aN6p6D-ff4VVkIi5bB5U",
                  fit: BoxFit.cover),
            ),
            const SizedBox(
              width: 30,
            ),
            const Expanded(
                child: Text("Akshay in Global Quizzing Finals",
                    style: TextStyle(color: red))),
          ]),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) =>
                      DialogScaff("Past featured performances",
                          body: ListView.builder(
                            padding: const EdgeInsets.all(8.0),
                            itemCount: 10,
                            itemBuilder: (_, i) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(children: [
                                SizedBox(
                                  width: 100,
                                  child: Image.network(
                                      "https://media-exp2.licdn.com/dms/image/C4E03AQFiFXySt7or9A/profile-displayphoto-shrink_400_400/0/1517680497395?e=1659571200&v=beta&t=7H2RQkw6R1W-I3GDLWM2Ru-aN6p6D-ff4VVkIi5bB5U",
                                      fit: BoxFit.fitWidth),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                const Expanded(
                                    child: Text(
                                        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros.",
                                        style: TextStyle(color: red))),
                              ]),
                            ),
                          )));
            },
            child: const Text(
              "see more",
              style: TextStyle(color: appAccent),
            ),
          )
        ]),
      ],
    );

liveClanActivities(context) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Live clan activities on platform",
          style: TextStyle(fontSize: 22, ),
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            liveClanActivityTile("Live trading\nchampionship"),
            liveClanActivityTile("Tresure hunt"),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) =>
                        DialogScaff("Live clan activities on platform",
                            body: ListView.builder(
                              padding: const EdgeInsets.all(8.0),
                              itemCount: 10,
                              itemBuilder: (_, i) => liveClanActivityTile(
                                  "Live trading\nchampionship"),
                            )));
              },
              child: const Text(
                "see more",
                style: TextStyle(color: appAccent),
              ),
            ),
          ],
        ),
      ],
    );

clanDiscussion(context) => Column(
      children: [
        Row(
          children: const [
            Text("Clan Discussions",
                style: TextStyle(fontSize: 22
                )),
          ],
        ),
        ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 0),
          title: const Text("General thread:",
              style: TextStyle(
                  color: red,  fontSize: 18)),
          subtitle: const Text("15 unread messages",
              style: TextStyle(color: Colors.white, fontSize: 16)),
          children: List.generate(
              15,
              (i) => const ListTile(
                  title: Text(
                    "sender",
                  ),
                  subtitle: Text("the text in the message!",
                      style: TextStyle(color: Colors.white)))),
        ),
        ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 0),
          title: const Text("(live) Anyone enthu for trading league messages",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: red,  fontSize: 18)),
          subtitle: const Text("10 unread messages",
              style: TextStyle(color: Colors.white, fontSize: 16)),
          children: List.generate(
              10,
              (i) => const ListTile(
                  title: Text(
                    "sender",
                  ),
                  subtitle: Text("the text in the message!",
                      style: TextStyle(color: Colors.white)))),
        ),
        ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 0),
          title: const Text("(live) Anyone enthu for trading league messages",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: red , fontSize: 18)),
          subtitle: const Text("10 unread messages",
              style: TextStyle(color: Colors.white, fontSize: 16)),
          children: List.generate(
              10,
              (i) => const ListTile(
                  title: Text(
                    "sender",
                  ),
                  subtitle: Text("the text in the message!",
                      style: TextStyle(color: Colors.white)))),
        ),
        TextButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => DialogScaff("Clan Discussions",
                    body: ListView.builder(
                      padding: const EdgeInsets.all(8.0),
                      itemCount: 10,
                      itemBuilder: (_, i) => ExpansionTile(
                        tilePadding: const EdgeInsets.symmetric(horizontal: 0),
                        title: const Text(
                            "(live) Anyone enthu for trading league messages",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: red,
                                
                                fontSize: 18)),
                        subtitle: const Text("10 unread messages",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        children: List.generate(
                            10,
                            (i) => const ListTile(
                                title: Text(
                                  "sender",
                                ),
                                subtitle: Text("the text in the message!",
                                    style: TextStyle(color: Colors.white)))),
                      ),
                    )));
          },
          child: const Text(
            "see more",
            style: TextStyle(color: appAccent),
          ),
        ),
      ],
//  crossAxisAlignment: CrossAxisAlignment.start
    );

clanMembers(context) => Column(
      children: [
        Row(
          children: const [
            Text("Clan Members",
                style: TextStyle(fontSize: 20)),
          ],
        ),
        const SizedBox(height: 15),
        const ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10),
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  "https://media-exp2.licdn.com/dms/image/C4E03AQFiFXySt7or9A/profile-displayphoto-shrink_400_400/0/1517680497395?e=1659571200&v=beta&t=7H2RQkw6R1W-I3GDLWM2Ru-aN6p6D-ff4VVkIi5bB5U"),
            ),
            title: Text("Lorem ipsum - Clan head",
                style: TextStyle(
                    color: red, fontSize: 18, ))),
                     const ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  "https://media-exp2.licdn.com/dms/image/C5603AQFHetvc7SDDrw/profile-displayphoto-shrink_100_100/0/1626532165594?e=1659571200&v=beta&t=xMkXPyUP7n2jjLCfeIbqL4GqTsdCoVEeQvnkIpikbns"),
            ),
            title: Text("Lorem ipsum - Debating Sensei",
                style: TextStyle(
                    color: red, fontSize: 18, ))),
        TextButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => DialogScaff("Clan Members",
                    body: ListView.builder(
                      padding: const EdgeInsets.all(8.0),
                      itemCount: 10,
                      itemBuilder: (_, i) =>  const ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10),
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  "https://media-exp2.licdn.com/dms/image/C4E03AQFiFXySt7or9A/profile-displayphoto-shrink_400_400/0/1517680497395?e=1659571200&v=beta&t=7H2RQkw6R1W-I3GDLWM2Ru-aN6p6D-ff4VVkIi5bB5U"),
            ),
            title: Text("Lorem ipsum - Clan head",
                style: TextStyle(
                    color: red, fontSize: 18, ))),  )));
          },
          child: const Text(
            "see more",
            style: TextStyle(color: appAccent),
          ),
        ),
      ],
//  crossAxisAlignment: CrossAxisAlignment.start
    );
