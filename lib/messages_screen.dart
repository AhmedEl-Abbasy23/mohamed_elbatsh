import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff26273B),
      appBar: AppBar(
        backgroundColor: const Color(0xffEC6454),
        title: const Text('Messages'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: ListTile(
                onTap: () {},
                tileColor: const Color(0xff26273E),
                horizontalTitleGap: 0.0,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 5.0,
                ),
                leading: const CircleAvatar(
                  radius: 35.0,
                  backgroundImage: AssetImage('assets/images/profile.jfif'),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Ahmed Elabbasy',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '7 hr',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
                subtitle: const Text(
                  'It is a long established fact that a reader will be distracted by',
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey),
                ),
                // trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
              ),
            );
          },
        ),
      ),
    );
  }
}
