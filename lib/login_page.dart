import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    child: Image.asset('assets/imagens/logo.png'),
                  ),
                  Container(height: 20),
                  Card(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      
                      //Botao de entra
                      ElevatedButton(
                        onPressed: () {
                          if (email == 'jhon@1212' && password == '123') {
                            Navigator.of(context).pushReplacementNamed('/home');
                          } else {
                            print('Login invalido');
                          }
                        },
                        child: Container(
                            width: double.infinity,
                            child: Text(
                              'Entrar',
                              textAlign: TextAlign.center,
                            )),
                      ),
                    ]),
                  )),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/imagens/background.jpg',
              fit: BoxFit.cover,
            )),
        //Container(color: Colors.black.withOpacity(0.3)),
        _body(),
      ],
    ));
  }
}
