import 'package:flutter/material.dart';
import 'login.dart';

class HomePage extends StatelessWidget {
  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
  
  drawer: Drawer(
    child:ListView(
      children: <Widget>[  
           
        UserAccountsDrawerHeader(
          accountName: Text("Pravash Ghimire"),
          accountEmail: Text("gh@gmail.com"),
          decoration: BoxDecoration(image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/c.jpg")
          )),
        ),
         ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          onTap: (){ Navigator.pushReplacement(context,MaterialPageRoute(builder: (BuildContext context)=>HomePage()
        )
        );
                   
                  
          },
        ),
        ListTile(
          leading: Icon(Icons.list),
          title: Text("Menu"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text("Favorites"),
          onTap: (){},
        ),
        Divider(),
        ListTile(
          onTap: (){},
          leading: Icon(Icons.person),
          title: Text("Profile"),
        ),
        Divider(),
        ListTile(
          onTap: (){},
          leading: Icon(Icons.person),
          title: Text("Setting"),
        ),
  
        Divider(),
        ListTile(title: Text("Logout"),
        trailing: Icon(Icons.arrow_back),
        onTap: (){
           Navigator.pushReplacement(context,MaterialPageRoute(builder: (BuildContext context)=>LoginPage()
        )
        );
        }
        ),
      ],
    )
  ),
    
    );
  }
}