import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Driwer widget')),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: Container(
                  color: const Color.fromARGB(255, 50, 50, 223),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CircleAvatar(
                          radius: 45,
                          backgroundImage: NetworkImage(
                              'https://avatars.mds.yandex.net/i?id=0c7ebdab601fc8c3927aec3ada92c083d5f58918-11043615-images-thumbs&n=13')),
                      Center(
                        child: Column(
                          children: [
                            Text(
                              'Sophia',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              '@Sophia.com',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.home_outlined),
                title: Text('Home'),
              ),
              const ListTile(
                leading: Icon(Icons.favorite_outline),
                title: Text('Favorites'),
              ),
              const ListTile(
                leading: Icon(Icons.workspaces),
                title: Text('Workflow'),
              ),
              const ListTile(
                leading: Icon(Icons.update),
                title: Text('Updates'),
              ),
              Container(
                color: const Color.fromARGB(255, 94, 92, 92),
                width: 300,
                height: 1,
              ),
              const ListTile(
                leading: Icon(Icons.add),
                title: Text('Plughs'),
              ),
              const ListTile(
                leading: Icon(Icons.notification_add),
                title: Text('Notifications'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
