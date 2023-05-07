import 'package:flutter/material.dart';

class AdvanceListTile extends StatefulWidget {
  const AdvanceListTile({Key? key}) : super(key: key);

  @override
  State<AdvanceListTile> createState() => _AdvanceListTileState();
}

class _AdvanceListTileState extends State<AdvanceListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
  leading: const CircleAvatar(
      backgroundImage: NetworkImage('https://example.com/avatar.png'),
  ),
  title: const Text('John Doe'),
  subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
        Row(
          children: const [
            Icon(Icons.favorite, size: 16),
            SizedBox(width: 4),
            Text('25 likes'),
            SizedBox(width: 8),
            Icon(Icons.comment, size: 16),
            SizedBox(width: 4),
            Text('10 comments'),
          ],
        ),
      ],
  ),
  trailing: IconButton(
      icon: const Icon(Icons.more_vert),
      onPressed: () {},
  ),
),
    );

  }
}


class SecondListTile extends StatelessWidget {
  const SecondListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage('https://example.com/avatar.png'),
            ),
            title: Text('List Tile $index'),
            subtitle: Text('This is subtitle for List Tile $index'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Do something when the user taps on a list tile
            },
          );
        },
      );
  }
}

class ThirdListTile extends StatefulWidget {
  const ThirdListTile({Key? key}) : super(key: key);

  @override
  State<ThirdListTile> createState() => _ThirdListTileState();
}

class _ThirdListTileState extends State<ThirdListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
  leading: Icon(Icons.person),
  title: Text('John Doe'),
  subtitle: Text('johndoe@example.com'),
  trailing: Icon(Icons.arrow_forward),
  isThreeLine: true,
  dense: true,
  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
  enabled: true,
  selected: false,
  onTap: () => print('Tile tapped'),
  onLongPress: () => print('Tile long-pressed'),
   ),
    );
  }
}

class fff extends StatefulWidget {
  const fff({Key? key}) : super(key: key);

  @override
  State<fff> createState() => _fffState();
}

class _fffState extends State<fff> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Sheet"),),
      body: const Center(child: Text("Body"),),
      bottomSheet: Container(
        color: Colors.black,
        height: 200.0,
        child: const Center(child: Text("This is Bottom Sheet"),),
      ),
    );

    
  }
}