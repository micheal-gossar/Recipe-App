import 'package:flutter/material.dart';
import "dart:convert";
import "dart:io";
import "inventoryPage.dart";
import 'package:firebase_auth/firebase_auth.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  var name = "";
  late User user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Hello ${user.displayName}")),
    );
  }
}
