import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          Image.asset("images/icon.png"),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
            child: const Center(
              child: Text(
                "哈哈哈",
              ),
            ),
          ),
          Checkbox(
              value: isChecked,
              onChanged: (bool? checked) {
                setState(() {
                  isChecked = checked;
                });
              }),
          Switch(
              inactiveThumbColor: Colors.black,
              activeColor: Colors.redAccent,
              activeTrackColor: Colors.greenAccent,
              activeThumbImage: AssetImage('images/icon.png'),
              value: isSwitch,
              onChanged: (bool state) {
                setState(() {
                  isSwitch = state;
                });
              })
        ],
      ),
    );
  }
}
