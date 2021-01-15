import 'package:flutter/material.dart';
import 'package:helpy_app/Models/governratesModel.dart';
import 'package:helpy_app/Views/HomePages/GovernratePages/governrateChangedBox.dart';

class GovernrateCasePage extends StatefulWidget {
  const GovernrateCasePage({Key key}) : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<GovernrateCasePage> {
  int selectedIndex = 1;
  List<GovernratesModel> govList = new List<GovernratesModel>();

  @override
  void initState() {
    super.initState();
    govList = GovernratesModel.list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          color: Colors.transparent,
        ),
        child: Wrap(
          children: govList
              .map((p) => GovernrateChangedBox(
                    title: p.name,
                    isSelected: selectedIndex == p.id,
                    onTap: () {
                      setState(() {
                        setSelectedIndex(p.id);
                      });
                    },
                  ))
              .toList(),
        ),
      ),
    );
  }

  void setSelectedIndex(int index) {
    setState(() {
      if (selectedIndex == index) {
        selectedIndex = 1;
        print('gender index: $selectedIndex');
      } else {
        selectedIndex = index;
        print('gender index: $selectedIndex');
      }
    });
  }
}
