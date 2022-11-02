import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:login_page/pages/login.dart';
import 'package:login_page/pages/main_page.dart';

import '../translations/local_keys.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => const FirstPage(),
        '/register': (context) => const SecondPage()
      },
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Text(
                    LocaleKeys.register.tr(),
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                RegisterBox()
              ],
            )),
      ),
    );
  }
}

class RegisterBox extends StatelessWidget {
  const RegisterBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 350,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 5),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                border: OutlineInputBorder(),
                hintText: LocaleKeys.inputusername.tr(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 5),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
                hintText: LocaleKeys.inputphone.tr(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 5),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.key),
                border: OutlineInputBorder(),
                hintText: LocaleKeys.inputpassword.tr(),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WelcomePage(),
                  ),
                );
              },
              child: Text(LocaleKeys.buttonSubmit.tr()),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(LocaleKeys.haveacc.tr()),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.lightBlue
                  ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Text(LocaleKeys.buttonSign.tr()))
              ],
            ),
          )
        ],
      ),
    );
  }
}
