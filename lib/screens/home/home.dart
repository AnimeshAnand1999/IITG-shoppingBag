import 'package:brewcrew/services/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Shopping Bag'),
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {},
              icon: Icon(Icons.person),
              label: Text('logout'))
        ],
      ),
      body: Row(
        children: <Widget>[
          Container(
              child: FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.book),
                  label: Text('Books'))),
          SizedBox(
            width: 20.0,
          ),
          Container(
              child: FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add_box_sharp),
                  label: Text('Goods'))),
          SizedBox(
            width: 20.0,
          ),
          Container(
              child: FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.people_alt_rounded),
                  label: Text('Clothes'))),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
    );
  }
}

// Query _ref;
// DatabaseReference reference =
//     FirebaseDatabase.instance.reference().child('goods');

// void initState() {
//     super.initState();
//     _ref = FirebaseDatabase.instance
//         .reference()
//         .child('goods')
//         .orderByChild('price');
//   }

//   Widget _buildItem({Map item}) {

//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10),
//       padding: EdgeInsets.all(10),
//       height: 130,
//       color: Colors.white,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children:<Widget>[
//           Container(child:Text(item['name'])),
//           Container(child:Text(item['price'])),
//           Container(child:Text(item['company']),child:Text(item['description'])),
//         ]
//       )
//     )
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlue,
//       appBar: AppBar(
//         title: Text('Shopping Bag'),
//         backgroundColor: Colors.blueAccent,
//         actions: <Widget>[
//           FlatButton.icon(
//               onPressed: () async {},
//               icon: Icon(Icons.person),
//               label: Text('logout'))
//         ],
//       ),
//      body: Container(
//         height: double.infinity,
//         child: FirebaseAnimatedList(
//           query: _ref,
//           itemBuilder: (BuildContext context, DataSnapshot snapshot,
//               Animation<double> animation, int index) {
//             Map item = snapshot.value;
//             // item['key'] = snapshot.key;
//             return _buildItem(contact: contact);
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (_) {
//               return AddContacts();
//             }),
//           );
//         },
//         child: Icon(Icons.add, color: Colors.white),
//       ),
//     );
//   }
// }
