import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, //no of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Call'),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            SizedBox(
              width: 40,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_horiz_outlined),
                itemBuilder: (
                  context,
                ) =>
                    const [
                      PopupMenuItem(
                        value: '1',
                        child: Text('Avatar'),
                      ),
                      PopupMenuItem(
                        value: '2',
                        child: Text('Settings'),
                      ),
                      PopupMenuItem(
                        value: '3',
                        child: Text('Add Profile '),
                      ),
                    ]),
            SizedBox(width: 50),
          ],
        ),
        body: TabBarView(
          children: [
            Text('Camera'),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index)
            {

              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                title: Text('safa anwar'),
                subtitle: Text('whatsapp ui '),
                trailing: Text('6:36 PM'),
              );
            }),
           // Text('Chats'),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index)
                {
                  if(index==0){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text('New Updates'),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 3,
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage('https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                            ),
                          ),
                          title: Text('safa '),
                          subtitle: Text(' 35 min ago'),
                        ),
                      ],
                    );
                  }
                  else{
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 3,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      title: Text('safa '),
                      subtitle: Text(' 35 min ago'),
                    );
                  }

                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index)
                {
                  return ListTile(

                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text('safa '),
                    subtitle: Text(index /2==0? 'You have missed audio call': 'call times is 6:36 PM'),
                    trailing: Icon(index /2==0? Icons.phone: Icons.video_call),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
