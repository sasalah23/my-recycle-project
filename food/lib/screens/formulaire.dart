import 'package:flutter/material.dart';
import 'categorie_section.dart';
import 'package:food/screens/list.dart';

import 'user.dart';

class Annonce extends StatefulWidget {
  @override
  State<Annonce> createState() => _AnnonceState();
}

class _AnnonceState extends State<Annonce> {
   List<User> userlist = [];
  @override
  Widget build(BuildContext context) {
     
    void addUserData(User user){
      setState(() {
        userlist.add(user);
        
      });
    }

    
    void showUserDtalog() {
      showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              content:AddUserDialog(addUserData),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            );
          });
    }

   
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showUserDtalog,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("annonce list"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        child: ListView.builder(itemBuilder: (ctx, index) {
          return Card(
            margin: EdgeInsets.all(4),
            elevation: 8,
            child: ListTile(

              title: Text(userlist[index].username,style: TextStyle(
                fontSize: 22,color: Colors.green,
                fontWeight: FontWeight.w400,
              ),),
              subtitle: Text(userlist[index].adress,style: TextStyle(
                fontSize:18,color: Colors.green,
                fontWeight: FontWeight.w300,
              ),),
              trailing: Text(userlist[index].numero,style: TextStyle(
                fontSize:18,color: Colors.green,
                fontWeight: FontWeight.w200,
              ),),
            ),
          );
        },
        itemCount: userlist.length,
        ),
      ),
    );
  }
}
