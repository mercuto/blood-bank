import 'package:flutter/material.dart';

class BloodCentersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blood Banks'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: ListView.builder(itemBuilder: ,itemCount: )
        )
      ),
    );
  }
}
