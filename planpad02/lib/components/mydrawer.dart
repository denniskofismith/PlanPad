import 'package:flutter/material.dart';


class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  bool isCheked = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Center(
              child: Column(
                children: [
                    SizedBox(height: 10,),
                    Icon(Icons.note_alt_rounded,size: 50,color: Colors.grey.shade500,),
                    SizedBox(height: 10,),
                     Text(
                      "P L A N P  A D ",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.grey.shade500),),
                ],
              ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text("Notes"),
                    onTap: (){
                      Navigator.pushNamed(context, '/notes');
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text("ToDo"),
                    onTap: (){
                      Navigator.pushNamed(context, '/todo');
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text("DarkMode"),
                    onTap: (){
              
                    },
                    trailing: Switch(value: isCheked, onChanged:(bool value){
                      setState(() {
                        isCheked = value;
                      });
                    }) ,
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}