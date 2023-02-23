import 'package:autopilot/main.dart';
import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

class Dashboard extends KFDrawerContent {
  Dashboard({Key? key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: color.white,
          appBar: AppBar(
            backgroundColor: color.white,
            elevation: 0.0,
            leading: IconButton(
                onPressed: widget.onMenuPressed,
                icon: Icon(
                  Icons.menu,
                  color: color.black,
                  size: 20,
                )),
          ),
          body: const Center(
            child: Text(
              'VR\nAutomotive\nDashboard is\nComming Soon..',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
