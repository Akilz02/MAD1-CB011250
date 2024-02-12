import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      appBar: AppBar(
        title: Text('Register'),
        centerTitle: true,
        backgroundColor: Colors.brown[400],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/6843e877f5594dfe0f1c2fd294451983.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.brown, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.brown, width: 2.0),
                ),
                fillColor: Colors.brown[400],
                filled: true,
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.brown, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.brown, width: 2.0),
                ),
                fillColor: Colors.brown[400],
                filled: true,
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.brown, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.brown, width: 2.0),
                ),
                fillColor: Colors.brown[400],
                filled: true,
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement registration functionality here
                // For simplicity, let's just navigate to the login page
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text('Register'),style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.brown),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
            ),
            SizedBox(height: 20.0),
            TextButton(
              onPressed: () {
                // Navigate to the login page
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text('Already have an account? Login'),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
