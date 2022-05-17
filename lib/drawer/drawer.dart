import 'package:duglinpub_menu/screens/kuh/recipe.dart';
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
            // child: Text('Dublin Pub Menu',style: TextStyle(fontSize: 18,color: Colors.black),),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/logo.png'),
                fit: BoxFit.cover
              ),
            ),
          ),
          const SizedBox(height: 50,),
          ListTile(
            title: const Text(
              'График работы\n15:00-03:00',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: (){
            },
          ),
          ListTile(
            title: const Text(
              'Караоке кабинка\n(1мин-1 час)2 000 тг',
              style: TextStyle(
                fontSize: 17,
              ),
              ),
            onTap: (){
            },
          ),
          ListTile(
            title: const Text(
              'Караоке общий 1 000 тг',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: (){
            },
          ),
          ListTile(
            title: const Text(
              'Танцпол с каждого 200 тг',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: (){
            },
          ),
          ListTile(
            title: const Text(
              'Курить в зале запрещено\nШТРАФ 5 000 тг',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: (){
            },
          ),
          
          // ListTile(
          //   title: const Text(
          //     '',
          //     style: TextStyle(
          //       fontSize: 17,
          //     ),
          //   ),
          //   onTap: (){
          //   },
          // ),






        ],
      ),
    );
  }
}