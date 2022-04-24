import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        
        // padding: EdgeInsets.all(5),
        children: <Widget>[
          const DrawerHeader(
            child: Text('Dublin Pub Menu',style: TextStyle(fontSize: 18,color: Colors.black),),
            decoration: BoxDecoration(
              image: DecorationImage(
                //image: NetworkImage('https://vgdesign.by/wp-content/uploads/2017/06/%D0%BB%D0%BE%D0%B3%D0%BE%D1%82%D0%B8%D0%BF-%D0%BA%D0%BB%D0%B5%D0%B2%D0%B5%D1%80-4.jpg'),
                image: AssetImage("images/Screenshot_8.png"),
                fit: BoxFit.cover
              ),
            ),
          ),
          // SizedBox(height: 100,),
          ListTile(
            // leading: Icon(Icons.home),
            title: const Text(
              'Лимонады',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: (){},
          ),
          ListTile(
            // leading: Icon(Icons.storage ),
            title: const Text(
              'Горящие напитки',
              style: TextStyle(
                fontSize: 17,
              ),
              ),
            onTap: (){},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Rules'),
            onTap: (){},
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('About Us'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}