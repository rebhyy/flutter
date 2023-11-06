import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscription'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Username'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            // Add TextFormFields for the date of birth and billing address
            TextFormField(
              decoration: InputDecoration(labelText: 'Date of Birth'),
              validator: (value) {
                // Add your own validation logic (e.g., date format check)
                if (value == null || value.isEmpty) {
                  return 'Please enter your date of birth';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Billing Address'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your billing address';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process data.
                  }
                },
                child: Text('S\'inscrire'),
              ),
            ),
            // Add a cancel button
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Go back to previous screen
              },
              child: Text('Annuler'),
            ),
          ],
        ),
      ),
    );
  }
}
