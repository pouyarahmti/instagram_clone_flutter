import "package:flutter/material.dart";

class WebHomeScreen extends StatelessWidget {
  const WebHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Center(
          child: Text("This is web"),
        ),
      ),
    );
  }
}
