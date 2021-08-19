import 'package:app_teste/app_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //menu hamburgue
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
             currentAccountPicture: ClipRRect(
               borderRadius: BorderRadius.circular(40),
             child: Image.network('https://avatars.githubusercontent.com/u/64289437?v=4')),
             accountName: Text('jhonatan'),
             accountEmail: Text('jhon@1212'),),
             
            ListTile(
              leading: Icon(Icons.home),
              title:  Text('Home page'),
              subtitle: Text('tela de inicio'),
              onTap: (){      //onTap Açao de click
                   print('home');  
              },
            ),
            Container(height: 420),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title:  Text('Logout'),
              subtitle: Text('Finalizar sessao'),
              onTap: (){      //onTap Açao de click
                       Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),

      appBar: AppBar(
        title: Text('Home Page'), //nome em cima
        actions: [CustomSwitche()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $counter'),
            Container(height: 50),
            CustomSwitche(),
            Container(height: 400),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitche extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
